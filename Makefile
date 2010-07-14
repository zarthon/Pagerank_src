SPARSELIB_DIR = /home/zarthon/Downloads/SparseLib++/1.7
include ./makefile.def

SRCS		=part1.cpp
EXECS		=part1
OBJS		=part1.o

all:progs

progs: $(EXECS)

clean:
	/bin/rm -f $(OBJS) $(EXECS) out *.out
part1.o:part1.cpp
	$(CCC) $(CCCFLAGS) $(INCLUDES) -c $< $(GSLFLAGS)
part1:part1.o
	$(CCC) $(INCLUDES) part1.o -o part1 $(LDFLAGS) $(GSLFLAGS)
