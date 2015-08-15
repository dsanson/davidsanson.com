SOURCES = $(wildcard *.md)
TARGETS=$(SOURCES:.md=.markdown)

%.markdown: %.md Makefile
	cat $< | mdder.lua | pandoc --filter $(HOME)/bin/graphviz.py --filter $(HOME)/bin/tikz-qtree-base64.py -t markdown -s | gsed -e '/^---$$/,/^\.\.\.$$/ {s/'\''//g}' > $@ 

all: $(TARGETS)


