compile-js:
	uglifyjs _precompiled/js/*.js --source-map assets/js/site.js.map --source-map-url /assets/js/site.js.map --source-map-root / -c -o assets/js/site.js

re-compile-js:
	wach -o "_precompiled/js/**/*" make compile-js
