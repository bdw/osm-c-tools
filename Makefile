PREFIX=/usr/local
ALL=osmconvert osmfilter osmupdate

all: $(ALL)

osmconvert: osmconvert.c
	$(CC) -lz $< -o $@

install:
	cp -v $(ALL) $(PREFIX)/bin

.PHONY: all install
