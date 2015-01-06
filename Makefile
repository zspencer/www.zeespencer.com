compile-js:
	uglifyjs assets/javascripts/*.js -c -o assets/js/site.js

re-compile-js:
	wach -e "assets/js/**/*.*" -o "assets/javascripts/**/*" make compile-js
