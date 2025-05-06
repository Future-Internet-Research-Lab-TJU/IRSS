objects/methods/dynamictuple/hashnode.o: methods/dynamictuple/hashnode.cpp \
 methods/dynamictuple/hashnode.h methods/dynamictuple/../../elementary.h \
 methods/dynamictuple/hash.h methods/dynamictuple/hashtable.h
	g++ -g -std=c++14 -O3 -o objects/methods/dynamictuple/hashnode.o -c methods/dynamictuple/hashnode.cpp -fpermissive -fopenmp -mpopcnt -mbmi2
