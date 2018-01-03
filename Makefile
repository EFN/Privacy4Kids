.PHONY: all clean distclean

.INTERMEDIATE: %.txt

all: 
	cd generated && $(MAKE)

clean: 
	cd generated && $(MAKE) clean

distclean: 
	cd generated && $(MAKE) distclean

