---
layout: default
title: About
permalink: /about
---

<span class="flex text-3xl font-extralight text-center items-center" style="height:75vh;">
All the data present on this website is/or scraped from idransomware blogspot, MITRE and Nomoreransom except for the data in  killchain and Forensics tab
</span>

```mermaid
  stateDiagram
         direction LR

         accTitle: This is the accessible title
         accDescr: This is an accessible description

         classDef notMoving fill:white
         classDef movement font-style:italic;
         classDef badBadEvent fill:#f00,color:white,font-weight:bold,stroke-width:2px,stroke:yellow
         [*] --> Still:::notMoving
         Still --> [*]
         Still --> Moving:::movement
         Moving --> Still
         Moving --> Crash:::movement
         Crash:::badBadEvent --> [*]
```
