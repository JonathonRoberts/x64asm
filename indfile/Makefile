AS=nasm
ASFLAGS=-f elf64 -o
LD=ld
LDFLAGS=-m elf_x86_64_obsd -nopie -o
SOURCES = helloworld.s
OBJECTS=$(SOURCES:.s=.o)
EXECUTABLE=a.out

all: .as $(SOURCES) $(EXECUTABLE)

.as:
	$(AS) $(ASFLAGS) $(OBJECTS) $(SOURCES)

$(EXECUTABLE): $(CSOURCES)
	$(LD) $(LDFLAGS) $(EXECUTABLE) $(OBJECTS)

clean:
	rm $(EXECUTABLE) *.o



