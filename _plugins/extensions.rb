require 'jekyll-redirects'
require 'jekyll/tagging'


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
