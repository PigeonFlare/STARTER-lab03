CXX=g++
CXXFLAGS=-Wall -g

all: testbst test_intbst

testbst: testbst.o intbst.o
	$(CXX) $(CXXFLAGS) -o testbst testbst.o intbst.o

test_intbst: test_intbst.o intbst.o
	$(CXX) $(CXXFLAGS) -o test_intbst test_intbst.o intbst.o

testbst.o: testbst.cpp intbst.h
	$(CXX) $(CXXFLAGS) -c testbst.cpp

test_intbst.o: test_intbst.cpp intbst.h
	$(CXX) $(CXXFLAGS) -c test_intbst.cpp

intbst.o: intbst.cpp intbst.h
	$(CXX) $(CXXFLAGS) -c intbst.cpp

clean:
	rm -f *.o testbst test_intbst
