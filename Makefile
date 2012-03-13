deploy:
	script/deploy.sh
build:
	compass compile -s compressed --force && jekyll
serve:
	(cd _site && python -m SimpleHTTPServer 8000)
