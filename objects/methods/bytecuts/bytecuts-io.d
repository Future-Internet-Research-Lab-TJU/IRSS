objects/methods/bytecuts/bytecuts-io.o: methods/bytecuts/bytecuts-io.cpp \
 methods/bytecuts/bytecuts-io.h methods/bytecuts/../../elementary.h \
 methods/bytecuts/Common.h
	g++ -g -std=c++14 -O3 -o objects/methods/bytecuts/bytecuts-io.o -c methods/bytecuts/bytecuts-io.cpp -fpermissive -fopenmp -mpopcnt -mbmi2
