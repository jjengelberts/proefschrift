FIGURES=figures/fig1-eps-converted-to.pdf figures/fig2-eps-converted-to.pdf figures/fig3-eps-converted-to.pdf figures/fig4-eps-converted-to.pdf figures/fig5-eps-converted-to.pdf figures/fig6-eps-converted-to.pdf figures/fig7-eps-converted-to.pdf figures/scheme1-eps-converted-to.pdf

all: huckel.tex

figures/%-eps-converted-to.pdf: figures/%.eps
	epstopdf --outfile=$@ $<

temptex: $(FIGURES)
	cat ../main/head.txt > ../temp.tex
	echo '\setcounter{chapter}{4}' >> ../temp.tex
	echo '\setcounter{NAT@ctr}{0}' >> ../temp.tex
	echo '\include{huckel/huckel}' >> ../temp.tex
	echo '\\bibliography{huckel}' >> ../temp.tex
	cat ../main/tail.txt >> ../temp.tex
	cp ../main/natbib.sty ..

huckel.tex: temptex
	cd ..; pdflatex temp
	bibtex huckel
	cd ..; pdflatex temp
	cd ..; pdflatex temp
	mv ../temp.pdf huckel.pdf
	mv ../temp.log huckel.log
	rm -f ../temp.*
	rm -f ../natbib.sty

clean:
	rm -f huckel.pdf
	rm -f ../temp.* temp.* *log *bbl *blg *aux
	rm -rf */.DS_Store .DS_Store

realclean: clean
	rm -f $(FIGURES)
