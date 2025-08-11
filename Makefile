CC = gcc
CFLAGS = -Wall -I./src
LDFLAGS = `pkg-config --libs cairo sdl2`
SRC = $(wildcard src/*.c)
OUT = build/nanocad

all: $(OUT)

$(OUT): $(SRC)
	@mkdir -p build
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

clean:
	rm -rf build