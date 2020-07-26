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


  # For some reason, completly beyond my comprehension, this makes
  # jekyll-tagging work.
  module TaggingFilter
    def working_tags(input)
      tags(input)
    end

    def tag_url(input)
      "/tags/#{input}"
    end
  end

  class EnvironmentVariablesGenerator < Generator
    def generate(site)
      site.config['env'] = ENV['JEKYLL_ENV'] || "development"
    end
  end
end

Liquid::Template.register_filter(Jekyll::DateFilter)
Liquid::Template.register_filter(Jekyll::TaggingFilter)
Liquid::Template.register_filter(Jekyll::HandleizeFilter)
