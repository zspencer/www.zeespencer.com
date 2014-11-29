require 'jekyll-redirects'
require 'jekyll-cdn'
require 'jekyll/tagging'

module Jekyll
  module DateFilter
    def pretty_date(input)
      input.strftime("%B %-d, %Y")
    end
  end
end

Liquid::Template.register_filter(Jekyll::DateFilter)
