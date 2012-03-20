---
layout: default
title: Presentations and Workshops
---

{% for post in site.categories.presentations %}
  {% if post.tags contains "published" %}
### [{{ post.title }}]({{ post.url }})
{{ post.description }}
  {% endif %}
{% endfor %}
