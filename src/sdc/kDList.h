#ifndef KDLIST_H
#define KDLIST_H

#include "../graph/graph.h"
#include "../tools/types.hpp"
#include <vector>
#include <cassert>

class kdlist {
private:
    Graph g, sg;
    ui s = 0, q = 0;
    std::vector<ui> P;
    std::vector<ui> level;
    std::vector<ui> neiInP;
    ull answer = 0;

private:
    void listing(ui deep, const std::vector<ui> & C, ui missedEdges);

public:
    kdlist(Graph && g, ui s, ui q):g(g), s(s), q(q) {
        sg.pIdx.resize(g.n);
        sg.pIdx2.resize(g.n);
        sg.pEdge.resize(g.m);

        level.resize(g.n, 0);
        neiInP.resize(g.n, 0);
        
        printf("kDlist.h\n");
    }

    ull run();
};

#endif