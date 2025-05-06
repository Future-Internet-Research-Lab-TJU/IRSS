objects/methods/dynamictuple/tuple.o: methods/dynamictuple/tuple.cpp methods/dynamictuple/tuple.h \
 methods/dynamictuple/../../elementary.h methods/dynamictuple/hash.h \
 methods/dynamictuple/hashtable.h methods/dynamictuple/hashnode.h
	g++ -g -std=c++14 -O3 -o objects/methods/dynamictuple/tuple.o -c methods/dynamictuple/tuple.cpp -fpermissive -fopenmp -mpopcnt -mbmi2
