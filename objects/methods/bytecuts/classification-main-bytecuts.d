objects/methods/bytecuts/classification-main-bytecuts.o: \
 methods/bytecuts/classification-main-bytecuts.cpp \
 methods/bytecuts/classification-main-bytecuts.h \
 methods/bytecuts/Common.h methods/bytecuts/bytecuts-io.h \
 methods/bytecuts/../../elementary.h methods/bytecuts/ByteCuts/ByteCuts.h \
 methods/bytecuts/ByteCuts/../../../elementary.h \
 methods/bytecuts/ByteCuts/ByteCutsNode.h \
 methods/bytecuts/ByteCuts/../Common.h \
 methods/bytecuts/ByteCuts/TreeBuilder.h \
 methods/bytecuts/Utilities/MapExtensions.h \
 methods/bytecuts/Utilities/VectorExtensions.h
	g++ -g -std=c++14 -O3 -o objects/methods/bytecuts/classification-main-bytecuts.o -c methods/bytecuts/classification-main-bytecuts.cpp -fpermissive -fopenmp -mpopcnt -mbmi2
