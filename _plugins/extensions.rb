require 'jekyll-redirects'
require 'jekyll-cdn'
require 'jekyll/tagging'

module Jekyll
  module DateFilter
    def pretty_date(input)
      input.strftime("%B %-d, %Y")
    end
  end

  module HandleizeFilter
    def handleize(input)
      input.downcase.gsub(/[^a-zA-Z0-9\s]/,'').gsub(/\s/,'-')
    end
  end

  class EnvironmentVariablesGenerator < Generator
    def generate(site)
      site.config['env'] = ENV['JEKYLL_ENV'] || "development"
    end
  end
end

Liquid::Template.register_filter(Jekyll::DateFilter)
Liquid::Template.register_filter(Jekyll::HandleizeFilter)
