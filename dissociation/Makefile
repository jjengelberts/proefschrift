FIGURES=figures/c3h-eps-converted-to.pdf figures/c3h9sicl_g-eps-converted-to.pdf figures/c4h9cl_g-eps-converted-to.pdf figures/ch3cl_g-eps-converted-to.pdf figures/compounds-eps-converted-to.pdf figures/crossing-eps-converted-to.pdf figures/f2_g-eps-converted-to.pdf figures/f_twee-eps-converted-to.pdf figures/h2_g-eps-converted-to.pdf figures/h_twee-eps-converted-to.pdf figures/hf-eps-converted-to.pdf figures/hyperconj-eps-converted-to.pdf figures/m_vs_c-eps-converted-to.pdf figures/nacl-eps-converted-to.pdf figures/nacl_g-eps-converted-to.pdf figures/scheme1-eps-converted-to.pdf figures/sih3cl_g-eps-converted-to.pdf figures/structures-eps-converted-to.pdf

all: dissociation.tex

figures/%-eps-converted-to.pdf: figures/%.eps
	epstopdf --outfile=$@ $<

temptex: $(FIGURES)
	cat ../main/head.txt > ../temp.tex
	echo '\setcounter{chapter}{2}' >> ../temp.tex
	echo '\setcounter{NAT@ctr}{0}' >> ../temp.tex
	echo '\include{dissociation/dissociation}' >> ../temp.tex
	cat ../main/tail.txt >> ../temp.tex
	cp ../main/natbib.sty ..

dissociation.tex: temptex
	cd ..; pdflatex temp
	bibtex dissociation
	cd ..; pdflatex temp
	cd ..; pdflatex temp
	mv ../temp.pdf dissociation.pdf
	mv ../temp.log dissociation.log
	rm -f ../temp.*
	rm -f ../natbib.sty

clean:
	rm -f dissociation.pdf
	rm -f ../temp.* temp.* *log *bbl *blg *aux
	rm -rf */.DS_Store .DS_Store

realclean: clean
	rm -f $(FIGURES)
