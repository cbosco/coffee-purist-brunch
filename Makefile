.PHONY: all test watch

all: test

test:
	./node_modules/.bin/mocha \
		--compilers coffee:coffee-script \
		--reporter spec \
		./test/*.coffee

watch:
	./node_modules/.bin/mocha \
		--compilers coffee:coffee-script \
		--watch \
		./test/*.coffee
	./node_modules/.bin/brunch watch
