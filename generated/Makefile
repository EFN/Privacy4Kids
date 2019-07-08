LANGS = $(shell cat ../TARGET_LANGUAGES)

PDFS := $(LANGS:=.pdf)
TXTS := $(LANGS:=.txt)

.PHONY: all clean distclean

.INTERMEDIATE: %.txt

all: $(TXTS) $(PDFS)

%.pdf: %.txt
	pandoc $< -o $@

%.txt: ../locale/%.po
	po2txt $< $@

clean:

distclean: clean
	rm -f *.txt *.pdf
