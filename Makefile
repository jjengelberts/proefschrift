FIGURES=cyclopentadienyl/figures/bondarrangements-eps-converted-to.pdf cyclopentadienyl/figures/cp-orbitals-eps-converted-to.pdf cyclopentadienyl/figures/cpalh2-eps-converted-to.pdf cyclopentadienyl/figures/cpsih-eps-converted-to.pdf cyclopentadienyl/figures/cpsih3-eps-converted-to.pdf cyclopentadienyl/figures/cyclohexatriene-eps-converted-to.pdf cyclopentadienyl/figures/ionic-eps-converted-to.pdf cyclopentadienyl/figures/lewis-eps-converted-to.pdf cyclopentadienyl/figures/pi-eps-converted-to.pdf cyclopentadienyl/figures/sigma-eps-converted-to.pdf cyclopentadienyl/figures/sih3_sigma-eps-converted-to.pdf cyclopentadienyl/figures/sih_pi-eps-converted-to.pdf cyclopentadienyl/figures/sih_sigma-eps-converted-to.pdf cyclopentadienyl/figures/verloop-eps-converted-to.pdf dissociation/figures/c3h-eps-converted-to.pdf dissociation/figures/c3h9sicl_g-eps-converted-to.pdf dissociation/figures/c4h9cl_g-eps-converted-to.pdf dissociation/figures/ch3cl_g-eps-converted-to.pdf dissociation/figures/compounds-eps-converted-to.pdf dissociation/figures/crossing-eps-converted-to.pdf dissociation/figures/f_twee-eps-converted-to.pdf dissociation/figures/h2_g-eps-converted-to.pdf dissociation/figures/hf-eps-converted-to.pdf dissociation/figures/hyperconj-eps-converted-to.pdf dissociation/figures/m_vs_c-eps-converted-to.pdf dissociation/figures/nacl-eps-converted-to.pdf dissociation/figures/nacl_g-eps-converted-to.pdf dissociation/figures/scheme1-eps-converted-to.pdf dissociation/figures/sih3cl_g-eps-converted-to.pdf dissociation/figures/structures-eps-converted-to.pdf huckel/figures/fig1-eps-converted-to.pdf huckel/figures/fig2-eps-converted-to.pdf huckel/figures/fig3-eps-converted-to.pdf huckel/figures/fig4-eps-converted-to.pdf huckel/figures/fig5-eps-converted-to.pdf huckel/figures/fig6-eps-converted-to.pdf huckel/figures/fig7-eps-converted-to.pdf huckel/figures/scheme1-eps-converted-to.pdf indacene/figures/chart1-eps-converted-to.pdf indacene/figures/chart2-eps-converted-to.pdf indacene/figures/figure1-eps-converted-to.pdf indacene/figures/figure2-eps-converted-to.pdf indacene/figures/figure3a-eps-converted-to.pdf indacene/figures/figure3b-eps-converted-to.pdf indacene/figures/figure3c-eps-converted-to.pdf indacene/figures/figure4-eps-converted-to.pdf indacene/figures/figure5-eps-converted-to.pdf indacene/figures/scheme1-eps-converted-to.pdf inorganic/figures/figure1-eps-converted-to.pdf inorganic/figures/figure2-eps-converted-to.pdf inorganic/figures/figure3-eps-converted-to.pdf inorganic/figures/figure4-eps-converted-to.pdf inorganic/figures/figure5-eps-converted-to.pdf inorganic/figures/figure6-eps-converted-to.pdf introduction/figures/acetic-eps-converted-to.pdf introduction/figures/alcohol-eps-converted-to.pdf introduction/figures/allstructures-eps-converted-to.pdf introduction/figures/b3p3h6-eps-converted-to.pdf introduction/figures/benzene-eps-converted-to.pdf introduction/figures/butadiene-eps-converted-to.pdf introduction/figures/coulson-eps-converted-to.pdf introduction/figures/figure1-eps-converted-to.pdf introduction/figures/figure2-eps-converted-to.pdf introduction/figures/figure6-eps-converted-to.pdf introduction/figures/figure7-eps-converted-to.pdf introduction/figures/heitler-eps-converted-to.pdf introduction/figures/heitlerplus-eps-converted-to.pdf introduction/figures/indacene-eps-converted-to.pdf introduction/figures/mhydride-eps-converted-to.pdf introduction/figures/moh2-eps-converted-to.pdf introduction/figures/structures-eps-converted-to.pdf orbopt/figures/compounds-eps-converted-to.pdf orbopt/figures/coulson-eps-converted-to.pdf orbopt/figures/heitler-eps-converted-to.pdf orbopt/figures/heitlerplus-eps-converted-to.pdf orbopt/figures/orbitals-eps-converted-to.pdf orbopt/figures/sigma_sih-eps-converted-to.pdf

all: thesis.tex

introduction/figures/%-eps-converted-to.pdf: introduction/figures/%.eps
	epstopdf --outfile=$@ $<

orbopt/figures/%-eps-converted-to.pdf: orbopt/figures/%.eps
	epstopdf --outfile=$@ $<

dissociation/figures/%-eps-converted-to.pdf: dissociation/figures/%.eps
	epstopdf --outfile=$@ $<

cyclopentadienyl/figures/%-eps-converted-to.pdf: cyclopentadienyl/figures/%.eps
	epstopdf --outfile=$@ $<

huckel/figures/%-eps-converted-to.pdf: huckel/figures/%.eps
	epstopdf --outfile=$@ $<

inorganic/figures/%-eps-converted-to.pdf: inorganic/figures/%.eps
	epstopdf --outfile=$@ $<

indacene/figures/%-eps-converted-to.pdf: indacene/figures/%.eps
	epstopdf --outfile=$@ $<

temptex2: $(FIGURES)
	echo '\include{main/frontmatter}' >> thesis.tex
	echo '\setcounter{chapter}{0}' >> thesis.tex
	echo '\setcounter{NAT@ctr}{0}' >> thesis.tex
	echo '\include{introduction/introduction}' >> thesis.tex
	echo '\\bibliography{introduction}' >> thesis.tex
	echo '\setcounter{chapter}{1}' >> thesis.tex
	echo '\setcounter{NAT@ctr}{0}' >> thesis.tex
	echo '\include{orbopt/orbopt}' >> thesis.tex
	echo '\\bibliography{orbopt}' >> thesis.tex
	echo '\setcounter{chapter}{2}' >> thesis.tex
	echo '\setcounter{NAT@ctr}{0}' >> thesis.tex
	echo '\include{dissociation/dissociation}' >> thesis.tex
	echo '\\bibliography{dissociation}' >> thesis.tex
	echo '\setcounter{chapter}{3}' >> thesis.tex
	echo '\setcounter{NAT@ctr}{0}' >> thesis.tex
	echo '\include{cyclopentadienyl/cyclopentadienyl}' >> thesis.tex
	echo '\\bibliography{cyclopentadienyl}' >> thesis.tex
	echo '\setcounter{chapter}{4}' >> thesis.tex
	echo '\setcounter{NAT@ctr}{0}' >> thesis.tex
	echo '\include{huckel/huckel}' >> thesis.tex
	echo '\\bibliography{huckel}' >> thesis.tex
	echo '\setcounter{chapter}{5}' >> thesis.tex
	echo '\setcounter{NAT@ctr}{0}' >> thesis.tex
	echo '\include{inorganic/inorganic}' >> thesis.tex
	echo '\\bibliography{inorganic}' >> thesis.tex
	echo '\setcounter{chapter}{6}' >> thesis.tex
	echo '\setcounter{NAT@ctr}{0}' >> thesis.tex
	echo '\include{indacene/indacene}' >> thesis.tex
	echo '\\bibliography{indacene}' >> thesis.tex
	echo '\include{lop/lop}' >> thesis.tex
	echo '\include{summary/summary}' >> thesis.tex
	echo '\include{samenvatting/samenvatting}' >> thesis.tex
	echo '\include{cv/cv}' >> thesis.tex
	echo '\include{dankwoord/dankwoord}' >> thesis.tex
	cat main/tail.txt >> thesis.tex
	cp main/natbib.sty .
	pdflatex thesis
	cd introduction; bibtex introduction
	cd orbopt; bibtex orbopt
	cd dissociation; bibtex dissociation
	cd cyclopentadienyl; bibtex cyclopentadienyl
	cd huckel; bibtex huckel
	cd inorganic; bibtex inorganic
	cd indacene; bibtex indacene
	pdflatex thesis
	pdflatex thesis
	rm -f natbib.sty

makea4:
	cat main/head.txt > thesis.tex

makeb5:
	cat main/head_b5.txt > thesis.tex

thesis.tex: makea4 temptex2

b5: makeb5 temptex2

clean:
	rm -f $(FIGURES) */*.blg */*.bbl */*.aux */*.log
	rm -f thesis.* temp.* introduction/introduction.pdf orbopt/orbopt.pdf dissociation/dissociation.pdf cyclopentadienyl/cyclopentadienyl.pdf huckel/huckel.pdf inorganic/inorganic.pdf indacene/indacene.pdf lop/lop.pdf summary/summary.pdf samenvatting/samenvatting.pdf dankwoord/dankwoord.pdf cv/cv.pdf
