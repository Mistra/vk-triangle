CFLAGS = -std=c++17
LDFLAGS = `pkg-config --static --libs glfw3` -lvulkan
TARGET = bin
$(TARGET): main.cpp
	@echo compiling
	@g++ $(CFLAGS) -o $(TARGET) main.cpp $(LDFLAGS)

.PHONY: test clean

test: $(TARGET)
	@LD_LIBRARY_PATH= ./$(TARGET)

clean:
	@rm -f $(TARGET)
	@echo removed
