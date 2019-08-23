---
layout: post
title: "EPI 4.1. Count Bits of binary number"
categories: ["Elements of Programming Interviews"]
excerpt: "Count number of 1`s present in a binary representation of a number using Bit Manipulation"
tags: ["interview"]
---

> Count number of 1`s present in a binary representation of a number using Bit Manipulation. 

```python
def count_bits(x: int) -> int:
    num_bits = 0
    while x:
        # If least significant bit is 1 
        # then num_bits count is increased by 1
        num_bits += x & 1

        # shift right for next significan bit 
        # to take the place of least significant bit
        x >>= 1
    return num_bits

print("Number of 1`s in {} (i.e. {}) is {}".format(15, bin(15), count_bits(15)))

# Number of 1`s in 15 (i.e. 0b1111) is 4

```
