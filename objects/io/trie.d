objects/io/trie.o: io/trie.cpp io/trie.h io/../elementary.h
	g++ -g -std=c++14 -O3 -o objects/io/trie.o -c io/trie.cpp -fpermissive -fopenmp -mpopcnt -mbmi2
