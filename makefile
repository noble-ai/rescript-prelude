RES_FILES = $(wildcard src/*.res) $(wildcard src/**/*.res)
MD_FILES := $(patsubst src/%,docs/generated/%,$(RES_FILES:.res=.md))

.PHONY: outdir all clean

outdir: 
	mkdir -p docs/generated

all: outdir $(MD_FILES)

docs/generated/%.md: src/%.res
	yarn -s run rescript-tools doc $< > temp.json; yarn -s run noble-doc temp.json > $@; rm temp.json

clean: 
	rm -rf ./docs/generated