.PHONY: all

.INTERMEDIATE: %.txt

all: pdf/nb_NO.pdf pdf/nl_NL.pdf

pdf/%.pdf: %.txt
	pandoc $< -o $@

%.txt: locale/%.po
	po2txt $< $@
