---
layout: post
title: "CTCI 1.6. String Compression"
excerpt: "Implement a method to perform basic string compression using the counts of repeated characters."
categories: [interview]
tags: ["ctci"]
---

#### String Compression: Implement a method to perform basic string compression using the counts of repeated characters. For example, the string aabcccccaaa would become a2blc5a3. If the compressed" string would not become smaller than the original string, your method should return the original string. You can assume the string has only uppercase and lowercase letters (a - z).



```python
def StringCompression(original):
    compressed = ''
    i = 0
    while i < len(original):
        char = original[i]
        compressed += char
        j = i+1
        count = 1
        while j < len(original) and char == original[j]:
            count += 1
            j += 1
        compressed = compressed + str(count)
        i = j
    # TO-DO: Check the lengths of original and compressed and return original string if compressed strain is not smaller than original.
    print('Original: {} - Compressed: {}'.format(original, compressed))


if __name__ == '__main__':
    StringCompression('aabcccccaaa')
    StringCompression('abcd')
    StringCompression('aaddbbcc')
    StringCompression('acdb')
    StringCompression('abcccdbbb')
    
    
# Original: aabcccccaaa - Compressed: a2b1c5a3
# Original: abcd - Compressed: a1b1c1d1
# Original: aaddbbcc - Compressed: a2d2b2c2
# Original: acdb - Compressed: a1c1d1b1
# Original: abcccdbbb - Compressed: a1b1c3d1b3
```
