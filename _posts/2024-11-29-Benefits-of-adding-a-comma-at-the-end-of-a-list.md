---
layout: post
title: "Benefits of adding a comma at the end of the list"
categories: [tips, git, python]
author: "Eswara Rudraraju"
published: true
---

Consider following line of code in a file

```python
names = ['Alice', 'Bob', 'Dilbert']
```

When a new item is added to the list and committed to a source control like git, the file diff will highlight the entire line as a difference between the commits instead of just the newly added item(s).

```python
names = ['Alice', 'Bob', 'Dilbert', 'Roger']
```

#### Way(s) to solve this:

1. Write each list item into its own lines

```python
names = [
    'Alice', 
    'Bob', 
    'Dilbert', # ◀️ gets highlighted because of an additional comma 
    'Roger'    # ◀️ gets highlighted
    ]
```

Because the git diff is a line based tool, it now highlights the difference on *Last 2 Items of the list* (notice the `,` was added next to Dilbert)

2. Even to further alleviate this problem, always end the last item on a list with a comma(,)

```python
names = [
    'Alice', 
    'Bob', 
    'Dilbert',
    'Roger', # ◀️ note an additional comma here
    ]
```