# Компилятор и флаги
CC=gcc
CFLAGS=-Wall -Wextra -Wno-unused-parameter -std=c99 -g -lncurses

# Имя исполняемого файла
TARGET=drone_game

# Исходные файлы
SOURCES=drone.c

# Объектные файлы
OBJECTS=$(SOURCES:.c=.o)

INC_PATH = ./inc/

all: $(TARGET)

# Правило для сборки исполняемого файла
$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $^


# Правило для сборки исходных файлов в объектные файлы
%.o: %.c

	$(CC) $(CFLAGS) -c -I$(INC_PATH) $< -o $@




# Очистка временных файлов
clean:
	rm -f $(TARGET) $(OBJECTS) 