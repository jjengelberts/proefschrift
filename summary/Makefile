all: summary.tex

temptex:
	cat ../main/head.txt > ../temp.tex
	echo '\include{summary/summary}' >> ../temp.tex
	cat ../main/tail.txt >> ../temp.tex

summary.tex: temptex
	cd ..; pdflatex temp
	cd ..; pdflatex temp
	cd ..; pdflatex temp
	mv ../temp.pdf summary.pdf
	mv ../temp.log summary.log
	rm -f ../temp.*

clean:
	rm -f summary.pdf
	rm -f ../temp.* temp.* *log *bbl *blg *aux
	rm -rf */.DS_Store .DS_Store
