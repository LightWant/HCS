#ifndef SDCCOUNTING_H
#define SDCCOUNTING_H

#include "../graph/graph.h"
#include "../tools/types.hpp"
#include "../tools/linearSet.hpp"
#include <vector>
#include <cassert>

class sdcCounting
{
private:
    Graph g, sg;
    ui s = 0, q = 0;
    LinearSet C, X;
    std::vector<ui> P;
    std::vector<ui> neiInP;
    double answer = 0;

private://combinatorial number
    const ui maxSize = 1000;
    double ** CN, *bf3;
    ui maxD = maxSize*10, maxD2 = maxSize;
    void computeC() {
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
    sdcCounting(Graph && g, ui s, ui q);
    ~sdcCounting();

    double run();
};




#endif