objects/elementary.o: elementary.cpp elementary.h
	g++ -g -std=c++14 -O3 -o objects/elementary.o -c elementary.cpp -fpermissive -fopenmp -mpopcnt -mbmi2
