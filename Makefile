C99 := $(shell command -v c99)

.phony: all clean defcon

all: defcon

clean:
	rm -f defcon

defcon: defcon.c inih/ini.c inih/ini.h
	$(C99) $(CFLAGS) -o defcon defcon.c inih/ini.c
