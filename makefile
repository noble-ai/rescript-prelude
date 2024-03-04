RES_FILES = $(wildcard src/*.res) $(wildcard src/**/*.res)
MD_FILES := $(patsubst src/%,docs/generated/%,$(RES_FILES:.res=.md))

.PHONY: outdir all clean

outdir: 
	mkdir -p docs/generated

all: outdir $(MD_FILES)

docs/generated/%.md: src/%.res
	yarn run rescript-tools doc $< | yarn noble-doc > $@

clean: 
	rm -rf ./docs/generated