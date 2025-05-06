objects/methods/dynamictuple/hashtable.o: methods/dynamictuple/hashtable.cpp \
 methods/dynamictuple/hashtable.h methods/dynamictuple/../../elementary.h \
 methods/dynamictuple/hashnode.h methods/dynamictuple/hash.h
	g++ -g -std=c++14 -O3 -o objects/methods/dynamictuple/hashtable.o -c methods/dynamictuple/hashtable.cpp -fpermissive -fopenmp -mpopcnt -mbmi2
