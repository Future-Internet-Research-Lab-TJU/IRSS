objects/methods/cutsplit/classification-main-cutsplit.o: \
 methods/cutsplit/classification-main-cutsplit.cpp \
 methods/cutsplit/classification-main-cutsplit.h \
 methods/cutsplit/../../elementary.h methods/cutsplit/cutsplit/CutSplit.h \
 methods/cutsplit/cutsplit/../../../elementary.h \
 methods/cutsplit/cutsplit-io.h
	g++ -g -std=c++14 -O3 -o objects/methods/cutsplit/classification-main-cutsplit.o -c methods/cutsplit/classification-main-cutsplit.cpp -fpermissive -fopenmp -mpopcnt -mbmi2
