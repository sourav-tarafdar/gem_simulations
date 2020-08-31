OBJDIR = $(GARFIELD_HOME)/Object
SRCDIR = $(GARFIELD_HOME)/Source
INCDIR = $(GARFIELD_HOME)/Include
HEEDDIR = $(GARFIELD_HOME)/Heed
LIBDIR = $(GARFIELD_HOME)/Library

# Compiler flags
CFLAGS = -Wall -Wextra -Wno-long-long \
	`root-config --cflags` \
	-O3 -fno-common -c \
	-I$(INCDIR) -I$(HEEDDIR)

LDFLAGS = -L$(LIBDIR) -lGarfield
LDFLAGS += `root-config --glibs` -lGeom -lgfortran -lm -lstdc++

triple_gem:  triple_gem.C
	$(CXX) $(CFLAGS) triple_gem.C
	$(CXX) `root-config --cflags` -o triple_gem triple_gem.o $(LDFLAGS)
	rm triple_gem.o

#gem_potential_plots: gem_potential_plots.C 
#	$(CXX) $(CFLAGS) gem_potential_plots.C
#	$(CXX) `root-config --cflags` -o gem_potential_plots gem_potential_plots.o $(LDFLAGS)
#	rm gem_potential_plots.o
