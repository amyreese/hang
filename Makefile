app=hang

cc=gcc
cflags=-Wall -O2

src=$(wildcard *.c)
obj=$(patsubst %.c,%.o,$(src))

ifndef PREFIX
	PREFIX=/usr/local
endif

$(app): $(src)
	$(cc) $(cflags) $(src) -o $(app)

.PHONY: install
install: $(app)
	install -d $(PREFIX)/bin/
	install $(app) $(PREFIX)/bin/

.PHONY: test
test: $(app)
	./$(app)

.PHONY: clean
clean:
	rm -f $(app) $(obj)
