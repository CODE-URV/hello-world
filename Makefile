CC = gcc
CFLAGS = -Iinclude -Wall -std=c11
BUILD = build
SOURCE = source

.PHONY: all run clean

hello-world: $(BUILD)/hello-world.o $(BUILD)/main.o
	$(CC) $(CFLAGS) $(BUILD)/hello-world.o $(BUILD)/main.o -o hello-world

$(BUILD)/hello-world.o: $(SOURCE)/hello-world.c
	$(CC) $(CFLAGS) -c $(SOURCE)/hello-world.c -o $(BUILD)/hello-world.o

$(BUILD)/main.o: $(SOURCE)/main.c
	$(CC) $(CFLAGS) -c $(SOURCE)/main.c -o $(BUILD)/main.o

run: $(BIN)
	./hello-world

clean:
	rm -f $(BUILD)/main.o $(BUILD)/hello-world.o hello-world
