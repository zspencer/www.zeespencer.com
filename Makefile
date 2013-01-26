build:
	compass compile -s compressed --force && jekyll
release: build
	jekyll-s3
run:
	foreman start
