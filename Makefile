#==========================================
#    Makefile: makefile for sl 5.1
#	Copyright 1993, 1998, 2014
#                 Toyoda Masashi
#		  (mtoyoda@acm.org)
#	Last Modified: 2014/03/31
#==========================================

TARGET = sl

# Optimaze Option
CFLAGOPT  = 
CFLAGOPT += -O0

CC = gcc

# cc options:
CFLAGS =
CFLAGS += -g 
CFLAGS += $(CFLAGOPT)
CFLAGS += -Wall

$(TARGET): sl.c sl.h
	$(CC) $(CFLAGS) -o $(TARGET) sl.c -lncurses

all: clean $(TARGET)

clean:
	rm -f $(TARGET)

distclean: clean

exec:
	./$(TARGET)
