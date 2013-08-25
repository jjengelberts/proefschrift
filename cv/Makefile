all: cv.tex

temptex:
	cat ../main/head.txt > ../temp.tex
	echo '\include{cv/cv}' >> ../temp.tex
	cat ../main/tail.txt >> ../temp.tex

cv.tex: temptex
	cd ..; pdflatex temp
	cd ..; pdflatex temp
	cd ..; pdflatex temp
	mv ../temp.pdf cv.pdf
	mv ../temp.log cv.log
	rm -f ../temp.*

clean:
	rm -f cv.pdf
	rm -f ../temp.* temp.* *log *bbl *blg *aux
	rm -rf */.DS_Store .DS_Store
