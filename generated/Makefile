.PHONY: all clean distclean

.INTERMEDIATE: %.txt

all: nb_NO.pdf nl_NL.pdf nb_NO.txt nl_NL.txt da.pdf da.txt fi.pdf fi.txt sv.pdf sv.txt

%.pdf: %.txt
	pandoc $< -o $@

%.txt: ../locale/%.po
	po2txt $< $@

clean:

distclean: clean
	rm -f *.txt *.pdf
