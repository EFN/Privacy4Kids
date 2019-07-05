.PHONY: all clean distclean

.INTERMEDIATE: %.txt

all: nl_NL.pdf nl_NL.txt da.pdf da.txt fi.pdf fi.txt nb.pdf nb.txt sv.pdf sv.txt

%.pdf: %.txt
	pandoc $< -o $@

%.txt: ../locale/%.po
	po2txt $< $@

clean:

distclean: clean
	rm -f *.txt *.pdf
