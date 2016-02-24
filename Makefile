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

update:
	curl http://m.m.i24.cc/osmconvert.c -o osmconvert.c
	curl http://m.m.i24.cc/osmupdate.c  -o osmupdate.c
	curl http://m.m.i24.cc/osmfilter.c  -o osmfilter.c

.PHONY: all install clean update
