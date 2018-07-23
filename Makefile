CXX = mpic++
CXXFLAGS = -std=c++0x -Wall -Wextra -Wshadow -Werror -O3 -DNDEBUG

INCLUDES =
LDFLAGS =
LIBS =

TARGET = cg
OBJS = $(TARGET).o

all: $(TARGET)

$(TARGET): $(OBJS) Makefile
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJS) $(LDFLAGS) $(LIBS)

$(TARGET).o: $(TARGET).cpp matrix.h matrix.cpp Timer.h Makefile 
	$(CXX) -c $(CXXFLAGS) $(INCLUDES) $(TARGET).cpp

clean:
	@$(RM) -rf *.o $(TARGET)
