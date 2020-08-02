CPPFLAGS = -g -I.
LDFLAGS = 

SRC=hello_world.cpp 
OBJ=$(SRC:.cpp=.o)
PGM=$(SRC:.cpp=)


all: hello_world


hello_world: $(OBJ)
	$(CXX) -o $@ $^ $(LDFLAGS)

.PHONY: clean
clean:
	rm -f $(OBJ) lab1a