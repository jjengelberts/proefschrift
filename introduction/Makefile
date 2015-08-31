FIGURES=figures/acetic-eps-converted-to.pdf figures/alcohol-eps-converted-to.pdf figures/allstructures-eps-converted-to.pdf figures/b3p3h6-eps-converted-to.pdf figures/benzene-eps-converted-to.pdf figures/butadiene-eps-converted-to.pdf figures/continuum-eps-converted-to.pdf figures/figure1-eps-converted-to.pdf figures/figure2-eps-converted-to.pdf figures/figure6-eps-converted-to.pdf figures/figure7-eps-converted-to.pdf figures/heitler-eps-converted-to.pdf figures/heitlerplus-eps-converted-to.pdf figures/indacene-eps-converted-to.pdf figures/mhydride-eps-converted-to.pdf figures/moh2-eps-converted-to.pdf figures/orbital_scheme-eps-converted-to.pdf figures/ringcurrent-eps-converted-to.pdf figures/structures-eps-converted-to.pdf

all: introduction.tex

figures/%-eps-converted-to.pdf: figures/%.eps
	epstopdf --outfile=$@ $<

temptex: $(FIGURES)
	cat ../main/head.txt > ../temp.tex
	echo '\setcounter{chapter}{0}' >> ../temp.tex
	echo '\setcounter{NAT@ctr}{0}' >> ../temp.tex
	echo '\include{introduction/introduction}' >> ../temp.tex
	cat ../main/tail.txt >> ../temp.tex
	cp ../main/natbib.sty ..

introduction.tex: temptex
	cd ..; pdflatex temp
	bibtex introduction
	cd ..; pdflatex temp
	cd ..; pdflatex temp
	mv ../temp.pdf introduction.pdf
	mv ../temp.log introduction.log
	rm -f ../temp.*
	rm -f ../natbib.sty

clean:
	rm -f introduction.pdf
	rm -f ../temp.* temp.* *log *bbl *blg *aux
	rm -rf */.DS_Store .DS_Store

realclean: clean
	rm -f $(FIGURES)
