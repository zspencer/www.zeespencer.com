build:
	compass compile -s compressed --force && jekyll
deploy: build
	ruby script/deploy_assets.rb
