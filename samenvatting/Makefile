all: samenvatting.tex

temptex:
	cat ../main/head.txt > ../temp.tex
	echo '\include{samenvatting/samenvatting}' >> ../temp.tex
	cat ../main/tail.txt >> ../temp.tex

samenvatting.tex: temptex
	cd ..; pdflatex temp
	cd ..; pdflatex temp
	cd ..; pdflatex temp
	mv ../temp.pdf samenvatting.pdf
	mv ../temp.log samenvatting.log
	rm -f ../temp.*

clean:
	rm -f samenvatting.pdf
	rm -f ../temp.* temp.* *log *bbl *blg *aux
	rm -rf */.DS_Store .DS_Store
