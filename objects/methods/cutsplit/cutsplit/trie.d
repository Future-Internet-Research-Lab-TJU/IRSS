objects/methods/cutsplit/cutsplit/trie.o: methods/cutsplit/cutsplit/trie.cpp \
 methods/cutsplit/cutsplit/stdinc.h methods/cutsplit/cutsplit/CutSplit.h \
 methods/cutsplit/cutsplit/../../../elementary.h \
 methods/cutsplit/cutsplit/hs.h methods/cutsplit/cutsplit/trie.h
	g++ -g -std=c++14 -O3 -o objects/methods/cutsplit/cutsplit/trie.o -c methods/cutsplit/cutsplit/trie.cpp -fpermissive -fopenmp -mpopcnt -mbmi2
