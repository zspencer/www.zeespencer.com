---
layout: default
title: Draft Articles
---

## Possible Presentations
{% for post in site.tags.presentations %}

  {% if post.tags.contains "drafts" %}
    ### [{{ post.title }}]({{ post.url }})
    {{ post.description }}
  {% endif %}
{% endfor %}
## Possible Articles
{% for post in site.tags.article %}

### [{{ post.title }}]({{ post.url }})
{{ post.description }}

{% endfor %}

