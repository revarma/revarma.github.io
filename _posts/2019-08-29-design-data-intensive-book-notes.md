---
layout: post
title: "Notes on Scalability"
categories: [Notes]
excerpt: "Notes on Designing Data Intensive Applications"
---

### Reliable 
> Continuing to work correctly, even when things go wrong.

1. **Faults**: fault is usually defined as one component of the system deviating from its spec.
2. **Failure**: failure is when the system as a whole stops providing the required service to the user.
3. **Rolling Update**: Patching/Updating one node at a time.

---
### Scalable:
> As the system grows (in data volume, traffic volume, or complexity), there should be reasonable ways of dealing with that growth.

1. **Load Parameters**: 
    - Throughput for number of records processed per second.
    - Req/Sec for web servers.
    - Read/Write ratio for databases.
    - Hit Rate on cache.
2. **Fan-out**: request propogation like a tree. i.e. each request from each of N sources, has m requests down the line.
3. **Response Latencies**:
    - Median => 50th Percentile => p50
    - Tail Latencies: p95, p99, p999.
4. **Scaling Up**: vertical scaling. adding more resources to same machine.
5. **Scaling Out**: horizontal scaling. adding more machines to distribute work.
6. **Elastic**:they can automatically add computing resources when they detect a load increase.

> Common wisdom until recently was to keep your database on a single node (scale up) until scaling cost or highavailability requirements forced you to make it distributed.

---
### Maintainable:
> Over time, many different people will work on the system (engineering and operations, both maintaining current behavior and adapting the system to new use cases), and they should all be able to work on it productively.

1. **Good Abstraction**: to hide unnecessary details.
---

### Data Models:
* Relational Model: transactional and Batch Process models.
* Document Model
* Graph Based Model

### Storage & Retrieval:
* Log Structured
* Page Oriented

> well-chosen indexes speed up read queries, but every index slows down writes.
