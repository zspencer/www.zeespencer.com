build:
	compass compile -s compressed -e production --force && JEKYLL_ENV=hosted jekyll build
release: build
	jekyll-s3
run:
	foreman start
