---
layout: default
title: Presentations and Workshops
---

{% for post in site.categories.presentations %}
### [{{ post.title }}]({{ post.url }})
{{ post.description }}
{% endfor %}
