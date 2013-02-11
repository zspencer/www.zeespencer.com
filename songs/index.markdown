---
layout: default
title: Muzaak
redirect_to: /songs/
redirects:
  - /songs.html
---

{% for post in site.tags.songs %}

### [{{ post.title }}]({{ post.url }})
{{ post.description }}

{% endfor %}

