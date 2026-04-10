# Variables
CXX = g++
CXXFLAGS = -std=c++17 -g -Wall
all: solution
solution: solution.cpp
	$(CXX) $(CXXFLAGS) solution.cpp -o solution
test: solution
	pytest test_game.py
clean:
	rm -f solution game_output.csv
.PHONY: all test clean
