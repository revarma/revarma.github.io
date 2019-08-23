---
layout: post
title: "CTCI 1.4. Palindrome Permutation"
categories: [interview]
excerpt: "Given a string, write a function to check if it is a permutation of a palindrome."
tags: ["ctci"]
---

> Given a string, write a function to check if it is a permutation of a palindrome. A palindrome is a word or phrase that is the same forwards and backwards. A permutationis a rearrangement of letters. The palindrome does not need to be limited to just dictionary words.

> EXAMPLE: 
* ` Input: Tact Coa `
* ` Output: True (permutations: "taco cat", "atco eta", etc.) `


```python
def isPalindromePermutation(str):
    char_dict = {}
    for char in str:
        if char != ' ':
            if char.lower() in char_dict:
                char_dict[char.lower()] += 1
            else:
                char_dict[char.lower()] = 1

    odd_item_count = 0
    for v in char_dict.values():
        if v % 2 != 0:
            odd_item_count += 1
            if odd_item_count > 1:
                print("{} is Not a palindrome".format(str))
                return
    print("{} is a palindrome".format(str))


if __name__ == '__main__':
    isPalindromePermutation("test")
    isPalindromePermutation("sample")
    isPalindromePermutation("Tact Coa")
    isPalindromePermutation("mom")
    isPalindromePermutation("racecar")
    
    
# test is Not a palindrome
# sample is Not a palindrome
# Tact Coa is a palindrome
# mom is a palindrome
# racecar is a palindrome
```
