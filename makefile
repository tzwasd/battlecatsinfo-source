all: $(patsubst %.js, out/%.js, $(wildcard *.js))

out/%.js: %.js
	uglifyjs $< -o $@ --compress

install:
	npm install -g uglify-js
	mkdir -p out
