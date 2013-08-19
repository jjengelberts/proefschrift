FIGURES=figures/bondarrangements-eps-converted-to.pdf figures/cp-orbitals-eps-converted-to.pdf figures/cpalh2-eps-converted-to.pdf figures/cpsih-eps-converted-to.pdf figures/cpsih3-eps-converted-to.pdf figures/cyclohexatriene-eps-converted-to.pdf figures/ionic-eps-converted-to.pdf figures/lewis-eps-converted-to.pdf figures/pi-eps-converted-to.pdf figures/sigma-eps-converted-to.pdf figures/sih3_sigma-eps-converted-to.pdf figures/sih_pi-eps-converted-to.pdf figures/sih_sigma-eps-converted-to.pdf figures/verloop-eps-converted-to.pdf

all: cyclopentadienyl.tex

figures/%-eps-converted-to.pdf: figures/%.eps
	epstopdf --outfile=$@ $<

temptex: $(FIGURES)
	cat ../main/head.txt > ../temp.tex
	echo '\setcounter{chapter}{3}' >> ../temp.tex
	echo '\setcounter{NAT@ctr}{0}' >> ../temp.tex
	echo '\include{cyclopentadienyl/cyclopentadienyl}' >> ../temp.tex
	echo '\\bibliography{cyclopentadienyl}' >> ../temp.tex
	cat ../main/tail.txt >> ../temp.tex
	cp ../main/natbib.sty ..

cyclopentadienyl.tex: temptex
	cd ..; pdflatex temp
	bibtex cyclopentadienyl
	cd ..; pdflatex temp
	cd ..; pdflatex temp
	mv ../temp.pdf cyclopentadienyl.pdf
	rm -f ../natbib.sty

clean:
	rm -f cyclopentadienyl.pdf
	rm -f ../temp.* temp.* *log *bbl *blg *aux
	rm -rf */.DS_Store .DS_Store

realclean: clean
	rm -f $(FIGURES)
