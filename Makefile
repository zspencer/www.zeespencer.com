setup: setup-bundle-install setup-npm-install

build: build-js build-sass build-site

run:
	bin/foreman start

release:
	JEKYLL_ENV=production make build
	bin/s3_website push

build-js:
	npx uglifyjs _precompiled/js/*.js --source-map -c -o assets/js/site.js

build-js-continuously:
	npx watch "make build-js" _precompiled

build-sass:
	bin/sass --update --style compressed --force  _precompiled/scss:assets/stylesheets

build-site:
	bin/jekyll build

setup-bundle-install:
	bundle install

setup-npm-install:
	npm i