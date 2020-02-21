markdown=$(wildcard *.md)

all: $(markdown:.md=.pdf)

%.pdf: %.md template.tex
	pandoc -f markdown --pdf-engine xelatex --template template.tex --base-header-level=2 -o $@ $<
