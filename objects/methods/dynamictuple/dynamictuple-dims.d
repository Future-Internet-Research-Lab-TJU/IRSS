objects/methods/dynamictuple/dynamictuple-dims.o: methods/dynamictuple/dynamictuple-dims.cpp \
 methods/dynamictuple/dynamictuple-dims.h \
 methods/dynamictuple/../../elementary.h \
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
	g++ -g -std=c++14 -O3 -o objects/methods/dynamictuple/dynamictuple-dims.o -c methods/dynamictuple/dynamictuple-dims.cpp -fpermissive -fopenmp -mpopcnt -mbmi2
