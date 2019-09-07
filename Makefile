.PHONY: all clean distclean

.INTERMEDIATE: %.txt

all: 
	cd generated && $(MAKE)

status:
	@for f in locale/*.po ; do \
		LANG=C msgfmt -vv $$f -o /dev/null ; \
	done

clean: 
	cd generated && $(MAKE) clean

distclean: 
	cd generated && $(MAKE) distclean

