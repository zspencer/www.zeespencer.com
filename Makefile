setup: setup-bundle-install

build: build-sass build-site

serve:
	npx http-server _site

release: build-production push-production

build-production:
	JEKYLL_ENV=production make build

build-sass:
	bin/sass --update --style compressed --force  _precompiled/scss:assets/stylesheets

build-site:
	bin/jekyll build

setup-bundle-install:
	bundle install

push-production:
	npx gh-pages -d _site