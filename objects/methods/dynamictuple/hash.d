objects/methods/dynamictuple/hash.o: methods/dynamictuple/hash.cpp methods/dynamictuple/hash.h \
 methods/dynamictuple/../../elementary.h
	g++ -g -std=c++14 -O3 -o objects/methods/dynamictuple/hash.o -c methods/dynamictuple/hash.cpp -fpermissive -fopenmp -mpopcnt -mbmi2
