---
layout: default
title: Draft Articles
---

## Possible Presentations
{% for post in site.tags.presentations %}

### [{{ post.title }}]({{ post.url }})
{{ post.description }}

{% endfor %}
## Possible Articles
{% for post in site.tags.article %}

### [{{ post.title }}]({{ post.url }})
{{ post.description }}

{% endfor %}

