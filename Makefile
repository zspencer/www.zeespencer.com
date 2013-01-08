build:
	compass compile -s compressed --force && jekyll
release: build
	ruby script/deploy_assets.rb
run:
	foreman start
