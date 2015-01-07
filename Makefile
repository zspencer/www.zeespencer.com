compile-js:
	uglifyjs assets/javascripts/*.js --source-map assets/js/site.js.map --source-map-url /assets/js/site.js.map --source-map-root / -c -o assets/js/site.js

re-compile-js:
	wach -e "assets/js/**/*.*" -o "assets/javascripts/**/*" make compile-js
