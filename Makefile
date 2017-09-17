build: build-js build-sass build-site

build-js:
	uglifyjs _precompiled/js/*.js --source-map -c -o assets/js/site.js

re-build-js:
	wach -o "_precompiled/js/**/*" make compile-js

build-sass:
	bin/sass --update --style compressed --force  _precompiled/scss:assets/stylesheets

build-site:
	bin/jekyll build

release:
	JEKYLL_ENV=production make build
	bin/s3_website push



run:
	bin/foreman start
