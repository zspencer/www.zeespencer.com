require 'jekyll-redirects'
require 'jekyll-cdn'
require 'jekyll/tagging'

module Jekyll
  module DateFilter
    def pretty_date(input)
      input.strftime("%B %-d, %Y")
    end
  end

  class EnvironmentVariablesGenerator < Generator
    def generate(site)
      site.config['env'] = ENV['JEKYLL_ENV'] || "development"
    end
  end
end

Liquid::Template.register_filter(Jekyll::DateFilter)
