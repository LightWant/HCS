#include "kccPivot.h"
#include <algorithm>

// #define DDEBUG

double kccPivot::run() {
    printf("kccPivot.cpp\n");
    g.initHash();
    printf("initHash\n");

#ifdef DDEBUG
g.print();
#endif

    for(ui u = 0; u < g.n; u++) if(g.pIdx[u+1] - g.pIdx2[u] > 0) {
        ui st = 0, ed = 0, edClique = 0;

        for(ui i = g.pIdx2[u]; i < g.pIdx[u + 1]; i++) {
            C.changeTo(g.pEdge[i], ed++);
        }
#ifdef DDEBUG
printf("node[0]:");
for(ui i = 0; i < ed; i++) printf("%u ", C[i]); printf("\n");
#endif

        ui maxDeg = 0, maxV = C[0];
        auto findM = [&](ui st, ui ed, ui & maxDeg, ui & maxV) {
            for(ui i = st; i < ed; i++) {
                ui deg = 0;
                for(ui j = st; j < ed; j++) {
                    if(g.connectHash(C[i], C[j])) deg++;
                }
                if(deg > maxDeg) {
                    maxDeg = deg;
                    maxV = C[i];
                }
            }
        };
        findM(st, ed, maxDeg, maxV);
        std::vector<ui> cliqueNei;
        edClique = ed;
        C.changeTo(maxV, --ed);
        ui tmpSt = 0;
        for(ui i = 0; i < ed; i++) {
            if(!g.connectHash(maxV, C[i])) C.changeToByPos(i, tmpSt++);
        }

        while(tmpSt < ed) {
            ui maxDeg = 0, maxV = cliqueNei[0];
            findM(tmpSt, ed, maxDeg, maxV);
            C.changeTo(maxV, --ed);

            ui newTmpSt = tmpSt;
            for(ui i = tmpSt; i < ed; i++) {
                if(!g.connectHash(maxV, C[i])) C.changeToByPos(i, newTmpSt++);
            }
            tmpSt = newTmpSt;
        }

        if(edClique - ed >= k - 1) {
            answer += CN[edClique - ed][k - 1];
        }
        listing(1, st, ed, edClique, 0, 1);
    }

    return answer;
}

void kccPivot::listing(ui deep, ui st, ui ed, ui edClique, ui p, ui h) {
#ifdef DDEBUG
printf("    deep %u\n", deep);
printf("C:");
for(ui i = st; i < ed; i++) printf("%u ", C[i]);printf("\n");
printf("clique:");
for(ui i = ed; i < edClique; i++) printf("%u ", C[i]);printf("\n");
#endif


    if(h == k - 1) {
        // answer += p + edClique - st;
        answer += p + ed - st;
        return;
    }
    if(st == ed) {
        if(p >= k-h) {
            answer += CN[p][k - h];
        }
        return;
    }
    if(p + h + edClique - st < k) return;
    
    ui pivot, pivotDeg = 0;
    bool hasPivot = false;
    for(ui i = st; i < ed; i++) {
        bool nonNeiInClique = true;
        for(ui j = ed; j < edClique; j++) {
            if(g.connectHash(C[i], C[j])) {
                nonNeiInClique = false;
                break;
            }
        }
        if(!nonNeiInClique) continue;

        ui deg = 0;
        for(ui j = st; j < ed; j++) {
            if(g.connectHash(C[i], C[j])) deg++;
        }
        if(deg > pivotDeg) {
            hasPivot = true;
            pivotDeg = deg;
            pivot = C[i];
        }
    }

    if(hasPivot) {
        C.changeTo(pivot, st++);
        
        ui newSt = ed;
        for(ui i = st; i < newSt; ) {
            if(g.connectHash(pivot, C[i])) C.changeToByPos(i, --newSt);
            else i++;
        }

        ui candSize = newSt - st;
        ui * cand = allocMem(candSize);
        for(ui i = st; i < newSt; i++) cand[i-st] = C[i];

        listing(deep + 1, newSt, ed, edClique, p + 1, h);

        for(ui i = 0; i < candSize; i++) {
            C.changeTo(cand[i], st++);

            ui newSt = ed;
            for(ui j = st; j < newSt; ) {
                if(g.connectHash(cand[i], C[j])) C.changeToByPos(j, --newSt);
                else j++;
            }

            ui newEndClique = ed;
            for(ui j = ed; j < edClique; j++) {
                if(g.connectHash(cand[i], C[j])) C.changeToByPos(j, newEndClique++);
            }

            if(newEndClique-ed >= k-h-1) {
                answer += CN[newEndClique-ed][k-h-1];
            }
            listing(deep + 1, newSt, ed, newEndClique, p, h+1);
        }

        freeMem(candSize);

        return;
    }

    for(ui i = st; i < ed; i++) {
        ui u = C[i];
        C.changeTo(u, st++);

        ui newSt = ed;
        for(ui j = st; j < newSt; ) {
            if(g.connectHash(u, C[j])) C.changeToByPos(j, --newSt);
            else j++;
        }

        ui newEndClique = ed;
        for(ui j = ed; j < edClique; j++) {
            if(g.connectHash(u, C[j])) C.changeToByPos(j, newEndClique++);
        }

        if(newEndClique-ed >= k-h-1) {
            answer += CN[newEndClique-ed][k-h-1];
        }
        listing(deep + 1, newSt, ed, newEndClique, p, h+1);
    }
}
