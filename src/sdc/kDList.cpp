#include "kDList.h"
#include <queue>
#include <algorithm>
#include <utility>

#define BASELINE
#define DDEBUG

#ifdef DDEBUG
#include <iostream>
#endif

ull kdlist::run() {
    printf("kDList.cpp\n");

#ifdef DDEBUG
g.print();
#endif
    g.initHash();
    printf("init Hash\n");

    using Pair = std::pair<ui, ui>;
    std::queue<ui> que;

    for(ui u = 0; u < g.n; u++) {
        std::vector<ui> C;
#ifdef DDEBUG
std::cout<<"    start "<<u<<' '<<answer<<std::endl;
#endif
        //reduction to q-s-2 core
        std::vector<ui> & deg = neiInP;
        for(ui i = g.pIdx2[u]; i < g.pIdx[u + 1]; i++) {
            ui v = g.pEdge[i];
            for(ui j = i + 1; j < g.pIdx[u + 1]; j++) {
                ui w = g.pEdge[j];
                if(g.connectHash(v, w)) deg[v]++, deg[w]++;
            }

            if(deg[v] < q-s-2) que.push(v);
        }
        while(!que.empty()) {
            ui v = que.front(); que.pop();

            for(ui i = g.pIdx2[u]; i < g.pIdx[u + 1]; i++) {
                ui w = g.pEdge[i];
                if(!g.connectHash(v, w)) continue;
                if((--deg[w]) == q-s-3) que.push(w);
            }
        }
        for(ui i = g.pIdx2[u]; i < g.pIdx[u + 1]; i++) {
            ui v = g.pEdge[i];
            if(deg[v] >= q-s-2) C.push_back(v);
            deg[v] = 0;
        }

        //2-hop
        ui edC1 = C.size();
        for(ui i = 0; i < edC1; i++) {
            ui v = C[i];
            for(ui j = g.pIdx[v]; j < g.pIdx[v + 1]; j++) {
                ui w = g.pEdge[j];
                if(w <= u || g.connectHash(u, w)) continue;

                if((++deg[w]) == q-s-2 || (q==s+2 && deg[w]==1)) {
                    C.push_back(w);
                }
            }
        }
        for(ui i = 0; i < edC1; i++) {
            ui v = C[i];
            for(ui j = g.pIdx[v]; j < g.pIdx[v + 1]; j++) {
                ui w = g.pEdge[j];
                if(w > u) deg[w] = 0;
            }
        }

        for(ui i = 0; i < edC1; i++) neiInP[C[i]] = 1;
        std::sort(C.begin(), C.end());

        //build sub-graph g
        auto buildV = [&](ui v) {
            sg.pIdx[v] = sg.pIdx2[v] = g.pIdx[v];

            if(g.connectHash(v, u)) sg.pEdge[sg.pIdx2[v]++] = u;
            for(ui i = 0; i < C.size(); i++) {
                if(g.connectHash(v, C[i])) sg.pEdge[sg.pIdx2[v]++] = C[i];
            }
        };
        for(ui i = 0; i < C.size(); i++) buildV(C[i]);
        buildV(u);

        
        // for(auto v : C) level[v] = 1;
        level[u] = 1;
        P.push_back(u);
        listing(1, C, 0);
        P.pop_back();
        for(ui i = 0; i < C.size(); i++) neiInP[C[i]] = 0;
    }
#ifdef BASELINE
#define BASELINES 2
#define BASELINEQ 5
auto print = [&](uint32_t x) {
    for(ui u = 0; u < g.n; u++) if((1<<u) & x) printf("%u ", u);
    printf("\n");
};
auto getMissEdges = [&](ui x) {
    ui TotalD = 0;
    for(ui u = 0; u < g.n; u++) if((1<<u) & x){
        ui d = 0;
        for(ui v = u + 1 ; v < g.n; v++) if((1<<v) & x){
            if(!g.connectHash(u, v)) d++;
        }
        TotalD += d;
    }
    return TotalD;
};
auto check = [&](ui x) {
    ui sz = 0;
    for(ui u = 0; u < g.n; u++) if((1<<u) & x) sz++;
    if(sz != BASELINEQ) return false;
    return getMissEdges(x) <= BASELINES;
};

ui cnt = 0;
for(uint32_t i = (1<<g.n)-1; i > 0; i--) {
    if(check(i)) {
        cnt++;
        print(i);
    }
}
printf("cnt:%u\n", cnt);
#endif
    return answer;
}

void kdlist::listing(ui deep, const std::vector<ui> & C, ui missedEdges) {
#ifdef DDEBUG
printf("       deep %u\n", deep);
printf("C:");
for(ui i = 0; i < C.size(); i++) printf("%u ", C[i]); 
printf("neiInPC:");
for(ui i = 0; i < C.size(); i++) printf("%u ", neiInP[C[i]]); printf("\n");
printf("P:"); for(auto v:P) printf("%u ", v); printf("\n");
printf("missE %u\n", missedEdges);
printf("\n");
#endif
    if(P.size() + C.size() < q) return;
    if(P.size() == q - 1) {
#ifdef DDEBUG
printf("ans+%u\n", C.size());
#endif
        answer += C.size();
        return;
    }

    for(ui i = 0; i < C.size(); i++) {
        std::vector<ui> newC;
        ui u = C[i];
#ifdef DDEBUG
printf("        deep %u, i %u, u %u\n", deep, i, u);
printf("C:");
for(ui i = 0; i < C.size(); i++) printf("%u ", C[i]); 
printf("neiInPC:");
for(ui i = 0; i < C.size(); i++) printf("%u ", neiInP[C[i]]); printf("\n");
printf("P:"); for(auto v:P) printf("%u ", v); printf("\n");
printf("missE %u\n", missedEdges);
#endif
        ui newMissEdges = missedEdges + P.size() - neiInP[u];
        // if(newMissEdges > s) continue;
        P.push_back(u);

        for(ui j = i + 1; j < C.size(); j++) {
            ui v = C[j];
            if(g.connectHash(u, v)) {
                if(newMissEdges + P.size() - neiInP[C[j]] - 1 <= s) {
                    neiInP[C[j]]++;
                    newC.push_back(C[j]);
                }
            }
            else {
                if(newMissEdges + P.size() - neiInP[C[j]] <= s) {
                    newC.push_back(C[j]);
                }
            }
        }
        
        listing(deep + 1, newC, newMissEdges);

        for(auto v: newC) if(g.connectHash(u, v)) neiInP[v]--;
        P.pop_back();
    }
}
