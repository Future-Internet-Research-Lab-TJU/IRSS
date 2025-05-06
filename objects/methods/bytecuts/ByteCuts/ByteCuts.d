objects/methods/bytecuts/ByteCuts/ByteCuts.o: methods/bytecuts/ByteCuts/ByteCuts.cpp \
 methods/bytecuts/ByteCuts/ByteCuts.h \
 methods/bytecuts/ByteCuts/../../../elementary.h \
 methods/bytecuts/ByteCuts/ByteCutsNode.h \
 methods/bytecuts/ByteCuts/../Common.h \
 methods/bytecuts/ByteCuts/TreeBuilder.h \
 methods/bytecuts/ByteCuts/../Utilities/MapExtensions.h
	g++ -g -std=c++14 -O3 -o objects/methods/bytecuts/ByteCuts/ByteCuts.o -c methods/bytecuts/ByteCuts/ByteCuts.cpp -fpermissive -fopenmp -mpopcnt -mbmi2
