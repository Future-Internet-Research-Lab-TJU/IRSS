objects/methods/multilayertuple/mhash.o: methods/multilayertuple/mhash.cpp \
 methods/multilayertuple/mhash.h \
 methods/multilayertuple/../../elementary.h
	g++ -g -std=c++14 -O3 -o objects/methods/multilayertuple/mhash.o -c methods/multilayertuple/mhash.cpp -fpermissive -fopenmp -mpopcnt -mbmi2
