CC = gcc
CFLAGS = -Wall -Wextra -std=c99
TARGET = hello_world
SRC = hello_world.c

.PHONY: all build install clean

all: build

build: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

install: $(TARGET)
	@echo "Installing $(TARGET) to /usr/local/bin..."
	sudo cp $(TARGET) /usr/local/bin/

clean:
	rm -f $(TARGET)
