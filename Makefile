build:
	compass compile -s compressed --force && jekyll
serve: build
	(cd _site && python -m SimpleHTTPServer 8000)
deploy: build
	ruby script/deploy_assets.rb
