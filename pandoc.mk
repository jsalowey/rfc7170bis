FILES := $(wildcard 5*.md)

all: $(FILES:.md=.html)

%.html: %.md pandoc.mk
	pandoc -f markdown -c gh-pandoc.css -s -o $@ $<
