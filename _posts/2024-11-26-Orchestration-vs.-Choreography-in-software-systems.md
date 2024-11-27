---
layout: post
title: "Orchestration vs. Choreography in a service based architecture"
categories: architecture
author: "Eswara Rudraraju"
published: true
---

Orchestration and Choreography are required when multiple services must be coordinated to complete a certain business transaction. 

**Orchestration** is the coordination of multiple services through the use of a separate mediator service that controls and manages the workflow of the transaction (like a conductor in an orchestra). 

**Choreography**, on the other hand, is the coordination of multiple services by which each service talks to one another without the use of a central mediator (like dancers in a dance). 

As services become more fine-grained, both orchestration and choreography are necessary to tie the services together to complete the business transaction.