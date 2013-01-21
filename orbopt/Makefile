FIGURES=figures/compounds-eps-converted-to.pdf figures/coulson-eps-converted-to.pdf figures/heitler-eps-converted-to.pdf figures/heitlerplus-eps-converted-to.pdf figures/orbitals-eps-converted-to.pdf figures/sigma_sih-eps-converted-to.pdf

all: orbopt.tex

figures/%-eps-converted-to.pdf: figures/%.eps
	epstopdf --outfile=$@ $<

temptex: $(FIGURES)
	cat ../main/head.txt > ../temp.tex
	echo '\setcounter{chapter}{1}' >> ../temp.tex
	echo '\setcounter{NAT@ctr}{0}' >> ../temp.tex
	echo '\include{orbopt/orbopt}' >> ../temp.tex
	echo '\\bibliography{orbopt}' >> ../temp.tex
	cat ../main/tail.txt >> ../temp.tex
	cp ../main/natbib.sty ..

orbopt.tex: temptex
	cd ..; pdflatex temp
	bibtex orbopt
	cd ..; pdflatex temp
	cd ..; pdflatex temp
	mv ../temp.pdf orbopt.pdf
	rm -f natbib.sty

clean:
	rm -f figures/*.pdf
	rm -f orbopt.pdf
	rm -f ../temp.* temp.* *log *bbl *blg *aux
