objects/methods/cutsplit/cutsplit/hs.o: methods/cutsplit/cutsplit/hs.cpp methods/cutsplit/cutsplit/stdinc.h \
 methods/cutsplit/cutsplit/CutSplit.h \
 methods/cutsplit/cutsplit/../../../elementary.h \
 methods/cutsplit/cutsplit/hs.h
	g++ -g -std=c++14 -O3 -o objects/methods/cutsplit/cutsplit/hs.o -c methods/cutsplit/cutsplit/hs.cpp -fpermissive -fopenmp -mpopcnt -mbmi2
