SOURCES = $(wildcard *.md)
TARGETS=$(SOURCES:.md=.markdown)

%.markdown: %.md
	cat $< | mdder.lua > $@ 

all: $(TARGETS)


