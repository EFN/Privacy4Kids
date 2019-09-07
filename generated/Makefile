LANGS = $(shell cat ../TARGET_LANGUAGES)

PDFS := $(LANGS:=.pdf)
TXTS := $(LANGS:=.txt)
PRICES := $(LANGS:=-price.html)

.PHONY: all clean distclean

.INTERMEDIATE: %.txt booklet.pot price.pot

all: $(TXTS) $(PDFS) $(PRICES)

%.pdf: %.txt
	pandoc $< -o $@

%.txt: ../locale/%.po
	po2txt -t ../original/en.txt $< $@

%-price.html: ../locale/%.po
	po2html -t ../original/en-price.html $< $@

price.pot: ../original/en-price.html
	html2po $^ > $@.new && mv $@.new $@

booklet.pot: ../original/en.txt
	(cd ..; txt2po --duplicates=merge original/en.txt generated/$@)

../locale/en.pot: booklet.pot price.pot
	msgcat booklet.pot price.pot > $@

../locale/%.po: ../locale/en.pot
	msgmerge $@ $^ > $@.new && mv $@.new $@

clean:

distclean: clean
	rm -f $(TXTS) $(PDFS) $(PRICES)
