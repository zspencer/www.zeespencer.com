require 'jekyll-redirects'
require 'jekyll/tagging'


module Jekyll
    module Filters
      def stylesheet_path(stylesheet_name)
        ENV['JEKYLL_ENV'] ||= "production"
        site = @context.registers[:site]
        path = site.config["asset_url"].find do |h|
          h.keys.include? ENV['JEKYLL_ENV']
        end.fetch(ENV['JEKYLL_ENV'])
        "#{path}/stylesheets/#{stylesheet_name}"
      end
    end
end
