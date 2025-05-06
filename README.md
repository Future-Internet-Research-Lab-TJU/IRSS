# Enhanced Packet Classification: Intelligent Selection between Tuple Space and Tree

---
### Paper
__Zhuo Li, Nan Zhang, Hao Xun, Yunlong Xi.__

---
### Files
- main.cpp, main,hpp: the implementation of SIM
- hash.c, hash.h: the hash function
- SIM_heavy.hpp: store heavy flow
- SIM_light.hpp: store little flow
- SIM.hpp: the overall framework of data structure
- adaptor.cpp, adaptor.hpp: used to process the data file and obtain each edge information in the data file
- datatypes.hpp: define data types
- RrConfig.cpp, RrConfig.h: read and parse configuration files
- util.h: define some universal functions
- config_DBLP.ini: the format of the configuration file in main.cpp
---

### Compile and Run the examples
IRSS is implemented with C++. We show how to compile the examples on
Ubuntu with g++ and make.

#### Run
- Run the examples. 

```
    $ make && ./main --run_mode classification --method_name IRSS --rules_file data/acl1_1k_label --traces_file data/acl1_1k_trace --rules_shuffle 1 --lookup_round 10 --force_test 0 --print_mode 0 --prefix_dims_num 2 
--x1 31 --y1 15 --x2 33 --y2 33
```


