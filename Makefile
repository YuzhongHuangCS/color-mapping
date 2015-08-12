CC			= g++
CFLAGS		= -std=c++11 -Wall -march=native `pkg-config --cflags opencv`
LINKFLAGS	= `pkg-config --libs opencv`
SRCS		= main-hsv.cpp
OBJS		= $(SRCS:.cpp=.o)
PROG		= main-hsv.out

all: $(SRCS) $(PROG)

$(PROG): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $@ $(INCFLAGS) $(LINKFLAGS)

.cpp.o:
	$(CC) $(CFLAGS) $< -c -o $@ $(INCFLAGS)

clean:
	rm $(OBJS) $(PROG)
