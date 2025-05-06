objects/methods/cutsplit/cutsplit/CutSplit.o: methods/cutsplit/cutsplit/CutSplit.cpp \
 methods/cutsplit/cutsplit/CutSplit.h \
 methods/cutsplit/cutsplit/../../../elementary.h \
 methods/cutsplit/cutsplit/hs.h methods/cutsplit/cutsplit/trie.h \
 methods/cutsplit/cutsplit/common.h methods/cutsplit/cutsplit/stdinc.h
	g++ -g -std=c++14 -O3 -o objects/methods/cutsplit/cutsplit/CutSplit.o -c methods/cutsplit/cutsplit/CutSplit.cpp -fpermissive -fopenmp -mpopcnt -mbmi2
