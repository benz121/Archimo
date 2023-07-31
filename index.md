---
layout: rans
title: Ransgggomware
permalink: /
---

<div class="container xl:pl-28 xl:pr-28 mt-4 mx-auto">
  <div class="mt-8 grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-2">

    {% for author in site.ransomware %}
    {% capture mitre_url %}
      {{site.baseurl}}{{author.url}}
      {% endcapture %}
    {% include card.html content=author.filename url=mitre_url color=author.color %}
    {% endfor %}
  </div>
</div>
