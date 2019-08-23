---
layout: post
title: "CTCI 1.2. Check Permutations"
categories: [interview]
excerpt: "Given two strings, write a method to decide if one is a permutation of the other."
tags: ["ctci"]
---

> Given two strings, write a method to decide if one is a permutation of the other.

```python

def CheckPermutation(str1, str2):
    if len(str1) != len(str2):
        print("{} is NOT a permutation of {}".format(str1, str2))
        return

    str1_dict = {}
    str2_dict = {}
    
    for char in str1:
        str1_dict[char] = str1_dict[char] + 1 if char in str1_dict else 1

    for char in str2:
        str2_dict[char] = str2_dict[char] + 1 if char in str2_dict else 1

    for k, v in str1_dict.items():
        if k not in str2_dict:
            print("{} is NOT a permutation of {}".format(str1, str2))
            return
        if v > str2_dict[k]:
            print("{} is NOT a permutation of {}".format(str1, str2))
            return
    print("{} is a permutation of {}".format(str1, str2))


if __name__ == '__main__':
    CheckPermutation('france', 'france')
    CheckPermutation('in', 'india')
    CheckPermutation('soap', 'oprah')
    CheckPermutation('dog', 'god')
    CheckPermutation('king', 'kingdom')
    
    
# france is a permutation of france
# in is NOT a permutation of india
# soap is NOT a permutation of oprah
# dog is a permutation of god
# king is NOT a permutation of kingdom
```
