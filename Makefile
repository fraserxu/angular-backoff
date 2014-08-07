build:
	node_modules/.bin/coffee -co dist/ src/

uglify:
	node_modules/.bin/uglifyjs dist/angular-backoff.js > dist/angular-backoff.min.js

clean:
	rm -rf dist

.PHONY: all clean

all: clean build uglify