PREFIX=/usr/local
ALL=osmconvert osmfilter osmupdate
CFLAGS=-O3

all: $(ALL)

osmconvert: osmconvert.c
	$(CC) $(CFLAGS) $< -o $@ -lz

install: $(ALL)
	cp -v $(ALL) $(PREFIX)/bin

clean:
	rm -vf $(ALL)

.PHONY: all install clean
