---
layout: post
title: "CTCI 1.7. Rotate Image"
excerpt: "Given an image represented by an NxN matrix, where each pixel in the image is 4 bytes, write a method to rotate the image by 90 degrees."
categories: ["Cracking the Coding Interviews"]
tags: ["interview"]
---

> Given an image represented by an NxN matrix, where each pixel in the image is 4 bytes, write a method to rotate the image by 90 degrees. Can you do this in place?


> ` [1, 2, 3]         [1, 4, 7]
> ` [4, 5, 6]    to   [2, 5, 8]
> ` [7, 8, 9]         [3, 6, 9]


```python
def RotateImage(matrix):
    new_image = []
    size_of_matrix = len(matrix)
    for i in range(size_of_matrix):
        new_row = []
        for j in range(size_of_matrix):
            new_row.append(matrix[j][i])
        new_image.append(new_row)
    print('Input: ')
    Display(matrix)
    print('Output: ')
    Display(new_image)


def Display(matrix):
    for array in matrix:
        for element in array:
            print(element, end=" ")
        print("", end="\n")


if __name__ == '__main__':
    matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    RotateImage(matrix)
    
    
# Input: 
# 1 2 3 
# 4 5 6 
# 7 8 9 

# Output: 
# 1 4 7 
# 2 5 8 
# 3 6 9 
```
