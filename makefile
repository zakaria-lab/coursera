#Makefile pour générer le fichier README.md

all: README.md

README.md: guessinggame.sh
	@echo "# Guessing Game" > README.md
	@echo "Date et Heure: $(shell date)" >> README.md
	@echo "Lignes de code dans guessinggame.sh: $(shell wc -l < guessinggame.sh)" >> README.md
	@echo "URL GitHub Pages: https://username.github.io/repository" >> README.md
