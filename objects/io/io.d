objects/io/io.o: io/io.cpp io/io.h io/../elementary.h io/trie.h \
 io/../methods/multilayertuple/multilayertuple.h \
 io/../methods/multilayertuple/../../elementary.h \
 io/../methods/multilayertuple/mtuple.h \
 io/../methods/multilayertuple/mhash.h \
 io/../methods/multilayertuple/mhashnode.h \
 io/../methods/multilayertuple/multilayertuple.h \
 io/../methods/multilayertuple/mhashtable.h
	g++ -g -std=c++14 -O3 -o objects/io/io.o -c io/io.cpp -fpermissive -fopenmp -mpopcnt -mbmi2
