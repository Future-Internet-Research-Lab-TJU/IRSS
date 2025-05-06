objects/methods/cutsplit/cutsplit-io.o: methods/cutsplit/cutsplit-io.cpp \
 methods/cutsplit/cutsplit-io.h methods/cutsplit/../../elementary.h \
 methods/cutsplit/cutsplit/CutSplit.h \
 methods/cutsplit/cutsplit/../../../elementary.h
	g++ -g -std=c++14 -O3 -o objects/methods/cutsplit/cutsplit-io.o -c methods/cutsplit/cutsplit-io.cpp -fpermissive -fopenmp -mpopcnt -mbmi2
