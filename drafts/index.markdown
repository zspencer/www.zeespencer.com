---
layout: default
title: Drafts
redirects_to: /drafts/
redirects:
  - /drafts.html
---

{% for post in site.categories.drafts %}
### [{{ post.title }}]({{ post.url }})
{% endfor %}
