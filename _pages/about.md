---
layout: default
title: About
permalink: /about
---

<div class="flex items-center justify-center">
<pre class="mermaid">
stateDiagram
   direction LR

   accTitle: This is the accessible title
   accDescr: This is an accessible description

   classDef notMoving fill:white
   classDef movement font-style:italic;
   classDef badBadEvent fill:#f00,color:white,font-weight:bold,stroke-width:2px,stroke:yellow,background-image: url('https://www.gstatic.com/lamda/images/sparkle_resting_v2_darkmode_2bdb7df2724e450073ede.gif')

   [*] --> Still:::notMoving
   Still --> [*]
   Still --> Moving:::movement
   Moving --> Still
   Moving --> Crash:::movement
   Crash:::badBadEvent --> [*]
</pre>
      <pre class="mermaid">
         stateDiagram-v2
            [*] --> Still
            Still --> [*]
            Still --> Moving
            Moving --> Still
            Moving --> Crash
            Crash --> [*]
      </pre>
</div>