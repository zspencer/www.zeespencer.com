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

To get around this I use S3 for `zeespencer.com` and CloudFront for
`assets.zeespencer.com`. Below are some liquid filters and config options that
allow me to keep assets local while writing and host them on a CDN when in
production.

Ruby source:
{% highlight ruby %}

module Jekyll
  module Filters
    def stylesheet_path(stylesheet_name)
      "#{asset_path}/stylesheets/#{stylesheet_name}"
    end

    def javascript_path(javascript_name)
      "#{asset_path}/javascripts/#{javascript_name}"
    end

    def asset_path
      ENV['JEKYLL_ENV'] ||= "production"
      site = @context.registers[:site]
      site.config["asset_url"].find do |h|
        h.keys.include? ENV['JEKYLL_ENV']
      end.fetch(ENV['JEKYLL_ENV'], "/assets")
    end
  end
end

{% endhighlight %}

And the config:

{% highlight yaml %}
asset\_url:
  - production: http://assets.zeespencer.com/assets
  - development: /assets
{% endhighlight %}

Look for this in gem form sometime soon.
