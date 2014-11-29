---
title: Introducing jekyll-cdn
tags: [ops, jekyll]
layout: article
---

I extracted my jekyll plugin for cache-busting from my blog into a gem,
[jekyll-cdn](http://github.com/zspencer/jekyll-cdn)! The main feature is a set
of Liquid filters for getting the right `asset_path`, `stylesheet_path`, and
`javascript_path` for the environment you're building.

It's super light weight, provider agnostic, and doesn't require an asset
pipeline. Have fun fellow jekyll-lovers!
