---
layout: default
title: Presentations and Workshops
---

{% for post in site.tags.presentations %}
  {% if post.tags contains "published" %}
### [{{ post.title }}]({{ post.url }})
{{ post.description }}
  {% endif %}
{% endfor %}
