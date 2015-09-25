PREFIX=/usr/local
ALL=osmconvert osmfilter osmupdate
CFLAGS=-O3

all: $(ALL)

osmconvert: osmconvert.c
	$(CC) $(CFLAGS) -lz $< -o $@

install:
	cp -v $(ALL) $(PREFIX)/bin

clean:
	rm -vf $(ALL)

.PHONY: all install clean
