---
layout: post
title: "Notes on Dynamic Programming"
categories: [interview]
excerpt: "Resources to understand Dynamic Programming."
---

### Resources:
1. [HackerEarth](https://www.hackerearth.com/practice/algorithms/dynamic-programming/introduction-to-dynamic-programming-1/tutorial/)

### Key Points:
* Dynamic Programming == Table Filling
* Memoization - it is memorizing the results of some specific states, which can then be later accessed to solve other sub-problems.
* The intuition behind dynamic programming is that we trade space for time
* Recursion vs Dynamic Programming example of Fibonacci from above Resource No: 1
* types: 
  1. Optimization problems - value of the required function is minimized or maximized. 
    e.g. Thief can steal a max weight of 5 pounds
  2. Combinatorial problems - figure out the number of ways to do something, or the probability of some event happening.
    e.g. 
    
### Conclusion:

if you identify that a problem can be solved using DP, try to create a backtrack function that calculates the correct answer. Try to avoid the redundant arguments, minimize the range of possible values of function arguments and also try to optimize the time complexity of one function call (remember, you can treat recursive calls as they would run in O(1) time). Finally, you can memoize the values and don't calculate the same things twice.
