FIGURES=figures/figure1-eps-converted-to.pdf figures/figure2-eps-converted-to.pdf figures/figure3-eps-converted-to.pdf figures/figure4-eps-converted-to.pdf figures/figure5-eps-converted-to.pdf figures/figure6-eps-converted-to.pdf

all: inorganic.tex

figures/%-eps-converted-to.pdf: figures/%.eps
	epstopdf --outfile=$@ $<

temptex: $(FIGURES)
	cat ../main/head.txt > ../temp.tex
	echo '\setcounter{chapter}{5}' >> ../temp.tex
	echo '\setcounter{NAT@ctr}{0}' >> ../temp.tex
	echo '\include{inorganic/inorganic}' >> ../temp.tex
	cat ../main/tail.txt >> ../temp.tex
	cp ../main/natbib.sty ..

inorganic.tex: temptex
	cd ..; pdflatex temp
	bibtex inorganic
	cd ..; pdflatex temp
	cd ..; pdflatex temp
	mv ../temp.pdf inorganic.pdf
	mv ../temp.log inorganic.log
	rm -f ../temp.*
	rm -f ../natbib.sty

clean:
	rm -f inorganic.pdf
	rm -f ../temp.* temp.* *log *bbl *blg *aux
	rm -rf */.DS_Store .DS_Store

realclean: clean
	rm -f $(FIGURES)
