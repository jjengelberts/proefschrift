all: dankwoord.tex

temptex:
	cat ../main/head.txt > ../temp.tex
	echo '\include{dankwoord/dankwoord}' >> ../temp.tex
	cat ../main/tail.txt >> ../temp.tex

dankwoord.tex: temptex
	cd ..; pdflatex temp
	cd ..; pdflatex temp
	cd ..; pdflatex temp
	mv ../temp.pdf dankwoord.pdf
	mv ../temp.log dankwoord.log
	rm -f ../temp.*

clean:
	rm -f dankwoord.pdf
	rm -f ../temp.* temp.* *log *bbl *blg *aux
	rm -rf */.DS_Store .DS_Store
