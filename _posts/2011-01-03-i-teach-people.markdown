---
title: i teach people
tags: [things_i_do]
---

### by consulting
  * on product design
  * on business strategy
  * on technical practices

### by mentoring
  * students at [code academy](http://codeacademy.org/)

### by writing
  * [an introduction to sketchmodeling](http://businessinnovationfactory.com/weblog/sketchmodeling-zee-spencer)
  * [holistic thinking for innovators](http://businessinnovationfactory.com/weblog/introduction-holistic-thinking-innovators)

### by musing
{% for post in site.categories.musings limit: 3 %}
  * [{{ post.title | downcase }}]({{ post.url }}){% endfor %}
  * [more](/musings)
