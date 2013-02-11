---
layout: default
title: Drafts
redirects_to: /drafts/
redirects:
  - /drafts.html
---

{% for post in site.tags.draft %}
### [{{ post.title }}]({{ post.url }})
{{ post.description }}
{% endfor %}
