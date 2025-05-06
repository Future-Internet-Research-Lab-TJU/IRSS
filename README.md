# Enhanced Packet Classification: Intelligent Selection between Tuple Space and Tree

---

---
### Files
- model.py: Probability-based Rule Sorting Model
- main.cpp: Performance Evaluation
- data: The Testing Rule Sets
- methods: The Schemes based on Tuple and Discision Tree
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


