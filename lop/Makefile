all: lop.tex

temptex:
	cat ../main/head.txt > ../temp.tex
	echo '\include{lop/lop}' >> ../temp.tex
	cat ../main/tail.txt >> ../temp.tex

lop.tex: temptex
	cd ..; pdflatex temp
	cd ..; pdflatex temp
	cd ..; pdflatex temp
	mv ../temp.pdf lop.pdf
	mv ../temp.log lop.log
	rm -f ../temp.*

clean:
	rm -f lop.pdf
	rm -f ../temp.* temp.* *log *bbl *blg *aux
	rm -rf */.DS_Store .DS_Store
