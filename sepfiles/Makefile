CC=gcc
CFLAGS += -Wall
AS=nasm
ASFLAGS +=-f elf64
LDFLAGS=
CSOURCES = main.c
ASSOURCES = add.s
OBJECTS=$(CSOURCES:.c=.o)
OBJECTS+=$(ASSOURCES:.s=.o)
EXECUTABLE=a.out

all: .as $(SOURCES) $(EXECUTABLE)

.as:
	$(AS) $(ASFLAGS) *.s

$(EXECUTABLE): $(CSOURCES)
	$(CC) $(LDFLAGS) $(CSOURCES) add.o -o $@

clean:
	rm $(EXECUTABLE) *.o



