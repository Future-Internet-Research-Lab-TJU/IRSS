objects/methods/dynamictuple/dynamictuple.o: methods/dynamictuple/dynamictuple.cpp \
 methods/dynamictuple/dynamictuple.h \
 methods/dynamictuple/../../elementary.h methods/dynamictuple/tuple.h \
 methods/dynamictuple/hash.h methods/dynamictuple/hashtable.h \
 methods/dynamictuple/hashnode.h \
 methods/dynamictuple/dynamictuple-ranges.h \
 methods/dynamictuple/../../io/io.h \
 methods/dynamictuple/../../io/../elementary.h \
 methods/dynamictuple/../../io/trie.h \
 methods/dynamictuple/../../io/../methods/multilayertuple/multilayertuple.h \
 methods/dynamictuple/../../io/../methods/multilayertuple/../../elementary.h \
 methods/dynamictuple/../../io/../methods/multilayertuple/mtuple.h \
 methods/dynamictuple/../../io/../methods/multilayertuple/mhash.h \
 methods/dynamictuple/../../io/../methods/multilayertuple/mhashnode.h \
 methods/dynamictuple/../../io/../methods/multilayertuple/multilayertuple.h \
 methods/dynamictuple/../../io/../methods/multilayertuple/mhashtable.h
	g++ -g -std=c++14 -O3 -o objects/methods/dynamictuple/dynamictuple.o -c methods/dynamictuple/dynamictuple.cpp -fpermissive -fopenmp -mpopcnt -mbmi2
