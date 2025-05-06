objects/main.o: main.cpp elementary.h methods/classification-main.h \
 methods/../elementary.h methods/../io/io.h methods/../io/../elementary.h \
 methods/../io/trie.h \
 methods/../io/../methods/multilayertuple/multilayertuple.h \
 methods/../io/../methods/multilayertuple/../../elementary.h \
 methods/../io/../methods/multilayertuple/mtuple.h \
 methods/../io/../methods/multilayertuple/mhash.h \
 methods/../io/../methods/multilayertuple/mhashnode.h \
 methods/../io/../methods/multilayertuple/multilayertuple.h \
 methods/../io/../methods/multilayertuple/mhashtable.h \
 methods/classification-main-zcy.h \
 methods/../methods/dynamictuple/dynamictuple.h \
 methods/../methods/dynamictuple/../../elementary.h \
 methods/../methods/dynamictuple/tuple.h \
 methods/../methods/dynamictuple/hash.h \
 methods/../methods/dynamictuple/hashtable.h \
 methods/../methods/dynamictuple/hashnode.h \
 methods/../methods/dynamictuple/dynamictuple-ranges.h \
 methods/../methods/dynamictuple/../../io/io.h \
 methods/../methods/multilayertuple/multilayertuple.h \
 methods/../methods/pextcuts/pextcuts.h \
 methods/../methods/pextcuts/../../elementary.h \
 methods/../methods/pextcuts/../dynamictuple/hash.h \
 methods/../methods/pextcuts/pextcuts-ranges.h \
 methods/../methods/pextcuts/../../io/io.h \
 methods/../methods/pextcuts/../dynamictuple/dynamictuple-ranges.h \
 methods/../methods/pextcuts/multipextcuts.h \
 methods/../methods/pextcuts/pextcuts.h \
 methods/partitionsort/classification-main-ps.h \
 methods/partitionsort/../../elementary.h \
 methods/partitionsort/../../io/io.h methods/partitionsort/ps-io.h \
 methods/partitionsort/ElementaryClasses.h \
 methods/partitionsort/OVS/TupleSpaceSearch.h \
 methods/partitionsort/PartitionSort/PartitionSort.h \
 methods/partitionsort/PartitionSort/OptimizedMITree.h \
 methods/partitionsort/PartitionSort/red_black_tree.h \
 methods/partitionsort/PartitionSort/misc.h \
 methods/partitionsort/PartitionSort/stack.h \
 methods/partitionsort/PartitionSort/../ElementaryClasses.h \
 methods/partitionsort/PartitionSort/SortableRulesetPartitioner.h \
 methods/partitionsort/PartitionSort/../Utilities/IntervalUtilities.h \
 methods/partitionsort/PartitionSort/../Utilities/../ElementaryClasses.h \
 methods/partitionsort/PartitionSort/../Simulation.h \
 methods/partitionsort/PartitionSort/../../../elementary.h \
 methods/partitionsort/PartitionSort/../ElementaryClasses.h \
 methods/partitionsort/TupleMerge/TupleMergeOnline.h \
 methods/partitionsort/TupleMerge/../ElementaryClasses.h \
 methods/partitionsort/TupleMerge/../Simulation.h \
 methods/partitionsort/TupleMerge/SlottedTable.h \
 methods/partitionsort/TupleMerge/../OVS/TupleSpaceSearch.h \
 methods/partitionsort/TupleMerge/../OVS/cmap.h \
 methods/partitionsort/TupleMerge/../OVS/pshash.h \
 methods/partitionsort/TupleMerge/../OVS/../ElementaryClasses.h \
 methods/bytecuts/classification-main-bytecuts.h \
 methods/bytecuts/Common.h methods/bytecuts/bytecuts-io.h \
 methods/bytecuts/../../elementary.h methods/bytecuts/ByteCuts/ByteCuts.h \
 methods/bytecuts/ByteCuts/../../../elementary.h \
 methods/bytecuts/ByteCuts/ByteCutsNode.h \
 methods/bytecuts/ByteCuts/../Common.h \
 methods/bytecuts/ByteCuts/TreeBuilder.h \
 methods/bytecuts/Utilities/MapExtensions.h \
 methods/bytecuts/Utilities/VectorExtensions.h \
 methods/cutsplit/classification-main-cutsplit.h \
 methods/cutsplit/../../elementary.h methods/cutsplit/cutsplit/CutSplit.h \
 methods/cutsplit/cutsplit/../../../elementary.h \
 methods/cutsplit/cutsplit-io.h
	g++ -g -std=c++14 -O3 -o objects/main.o -c main.cpp -fpermissive -fopenmp -mpopcnt -mbmi2
