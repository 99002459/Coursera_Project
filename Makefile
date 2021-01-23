all: GAME README

GAME:
	bash guessinggame.sh
README: 
	guessinggame.sh
	echo "## Guessing Game" >> README.md
	echo -n "\n**Time of Making**: " >> README.md
	date >> README.md
	echo -n "\n**No. of lines in guessinggame.sh:** " >> README.md
	cat guessinggame.sh | wc -l >> README.md

clean:
	rm README.md
