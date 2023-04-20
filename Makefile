#MacOs
LIBS=-lsfml-graphics -lsfml-window -lsfml-system

includes = -I/opt/homebrew/Cellar/sfml/2.5.1_2/include
libs = -L/opt/homebrew/Cellar/sfml/2.5.1_2/lib/
name=main
all: $(name)

$(name).o: $(name).cpp
	g++ $(name).cpp -o $(name).o -I/opt/homebrew/Cellar/sfml/2.5.1_2/include -L/opt/homebrew/Cellar/sfml/2.5.1_2/lib/ -I/ShareTechMono-Regular $(LIBS) -std=c++17

$(name): $(name).o
	@echo "Dziala!"
	g++ -c $(name).o
	./$(name).o