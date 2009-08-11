app=hang

cc=gcc
cflags=-Wall -O2

src=$(wildcard *.c)
obj=$(patsubst %.c,%.o,$(src))

$(app): $(src)
	$(cc) $(cflags) $(src) -o $(app)

.PHONY: test
test: $(app)
	./$(app)

.PHONY: clean
clean:
	rm -f $(app) $(obj)
