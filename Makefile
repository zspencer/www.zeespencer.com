build:
	compass compile -s compressed -e production --force && JEKYLL_ENV=hosted jekyll
release: build
	jekyll-s3
run:
	foreman start
