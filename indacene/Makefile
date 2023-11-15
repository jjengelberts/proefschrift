FIGURES=figures/chart1-eps-converted-to.pdf figures/chart2-eps-converted-to.pdf figures/figure1-eps-converted-to.pdf figures/figure2-eps-converted-to.pdf figures/figure3a-eps-converted-to.pdf figures/figure3b-eps-converted-to.pdf figures/figure3c-eps-converted-to.pdf figures/figure4-eps-converted-to.pdf figures/figure5-eps-converted-to.pdf figures/scheme1-eps-converted-to.pdf

all: indacene.tex

figures/%-eps-converted-to.pdf: figures/%.eps.gz
	zcat $< | epstopdf --filter > $@

temptex: $(FIGURES)
	cat ../main/head.txt > ../temp.tex
	echo '\setcounter{chapter}{6}' >> ../temp.tex
	echo '\setcounter{NAT@ctr}{0}' >> ../temp.tex
	echo '\include{indacene/indacene}' >> ../temp.tex
	cat ../main/tail.txt >> ../temp.tex
	cp ../main/natbib.sty ..

indacene.tex: temptex
	cd ..; pdflatex temp
	bibtex indacene
	cd ..; pdflatex temp
	cd ..; pdflatex temp
	mv ../temp.pdf indacene.pdf
	mv ../temp.log indacene.log
	rm -f ../temp.*
	rm -f ../natbib.sty

clean:
	rm -f indacene.pdf
	rm -f ../temp.* temp.* *log *bbl *blg *aux
	rm -rf */.DS_Store .DS_Store

realclean: clean
	rm -f $(FIGURES)
