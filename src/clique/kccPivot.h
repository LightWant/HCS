#ifndef KCCPIVOT_H
#define KCCPIVOT_H

#include "../graph/graph.h"
#include "../tools/types.hpp"
#include "../tools/linearSet.hpp"

class kccPivot {
private:
    Graph g;
    ui k = 0;
    double answer = 0;
    LinearSet C;
    void listing(ui deep, ui st, ui ed, ui edClique, ui p, ui h);
    void pivoter(ui deep, ui st, ui ed, ui p, ui h);

private:
    ui * memBuffer = nullptr;
    ui * pointerBuffer = nullptr;
    void initBuffer(ui n) {
        memBuffer = new ui[n];
        pointerBuffer = memBuffer;
    }
    ui * allocMem(ui n) {
        ui * tmp = pointerBuffer;
        pointerBuffer += n;
        return tmp;
    }
    void freeMem(ui n) {
        pointerBuffer -= n;
    }

private:
    ui maxK = 31;
    ui maxSize = 3000;
    double ** CN = nullptr, *bf3 = nullptr;
    void computeC() {
        ui maxD = maxSize, maxD2 = maxK;
        CN = new double*[maxD];
        bf3 = new double[maxD2 * maxD];
        for(int i = 0; i < maxD; i++) {
            CN[i] = bf3 + i * maxD2;
        }
        CN[0][0] = 1;
        CN[1][0] = 1;
        CN[1][1] = 1;
        for(int i = 2; i < maxD; i++) {
            CN[i][0] = 1;
            if(i < maxD2) CN[i][i] = 1;
            for(int j = 1; j < i && j < maxD2; j++) {
                CN[i][j] = CN[i - 1][j - 1] + CN[i - 1][j];
            }
        }
    }

public:
    kccPivot(Graph && g, ui k) :g(g), k(k) {
        maxSize = g.coreNumber + 1;
        maxK = k + 1;
        answer = 0;
        computeC();

        initBuffer(g.coreNumber * (k+1));

        C.resize(g.n);

        printf("kccPivot.h\n");
    }
    ~kccPivot() { 
        if(bf3 != nullptr) {
            delete [] bf3; delete [] CN; 
        }

        if(memBuffer != nullptr) delete [] memBuffer;
    }

    double run();
};

#endif