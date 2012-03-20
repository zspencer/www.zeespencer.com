---
layout: default
title: Drafts
---

## Possible Presentations
{% for post in site.categories.presentations %}
  {% if post.tags.contains "drafts" %}
    ### [{{ post.title }}]({{ post.url }})
    {{ post.description }}
  {% endif %}
{% endfor %}

## Possible Articles
{% for post in site.categories.articles %}
  {% if post.tags.contains "draft" %}
### [{{ post.title }}]({{ post.url }})
{{ post.description }}
  {% endif %}
{% endfor %}

