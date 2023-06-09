---
layout: ban
name: Babuk
filename: babuk
Type: Ransomware
color: yellow
---
<div class="flex p-5 h-screen">
<!-- </div>h-[calc(100vh-60px)] "> -->
  {% include sidetabs.html %}
  <div class="content ml-4 w-9/12">
    {% include sidetabs_with_data.html %}
    <div id="myTabContent">
      {% assign processtree = include.content %}
      {% for items in site.data.ransomware[filname].tabs %}
      {% assign foo = items[1] %}
      <div class="p-4 bg-gray-50 rounded-lg dark:bg-gray-800" id="{{ items[0] }}" role="tabpanel" aria-labelledby="{{ items[0] }}-tab">
          {% if items[0] == "Blogs" %}
          <p class="text-sm mb-4 text-gray-500 dark:text-gray-400">
              {{site.data.ransomware[filname].tabs.MITRE.Description}}
          </p>
              {% include listgroup_blog.html content=foo %}
          {% elsif items[0] == "Sandbox" %}
              {% include accordian_sandbox.html content=foo %}
          {% elsif items[0] == "MITRE" %}
              {% include listgroup_mitre.html content=foo %}
          {% elsif items[0] == "KillChain" %}
              {% include killchain_timeline.html content=foo %}
          {% elsif items[0] == "Forensics" %}

```mermaid
   stateDiagram-v2
      [*] --> Still
      Still --> [*]
      Still --> Moving
      Moving --> Still
      Moving --> Crash
      Crash --> [*]
```

          {% endif %}
      </div>
      {% endfor %}
  </div>
  </div>
</div>
