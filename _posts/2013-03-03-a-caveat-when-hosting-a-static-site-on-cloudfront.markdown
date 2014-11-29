---
title: A Caveat When Hosting a Static Site on CloudFront
tags: [ops, jekyll]
layout: article
---

I recently experimented with hosting my blog on CloudFront. While this was
great for performance it caused a few issues.

Cloudflare does not translate `/foo` to `/foo/index.html`, which makes perfect
sense for performance; but causes problems if you depend on the server to
follow that lookup pattern.

To fix this I use S3 for `zeespencer.com` and CloudFront for
`assets.zeespencer.com` and the
[jekyll-cdn](http://github.com/zspencer/jekyll-cdn) gem to provide Liquid
filters so switching between local testing and hosted is a snap.
