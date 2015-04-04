all: presentationtex

formula.tex: formulaeps

formulaeps:
	latex formula
	dvips -E -Ppdf -x 3600 formula.dvi -o formula.eps
	epstopdf formula.eps

presentation.tex: presentationtex

presentationtex: clean
	pdflatex presentation
	pdflatex presentation

clean:
	rm -f formula.*
	rm -f *aux *log *nav *out *pdf *snm *toc *vrb
	rm -rf .DS_Store figures/.DS_Store
	echo '% Convert latex formula to picture' > formula.tex
	echo '\documentclass{article}' >> formula.tex
	echo '\pagestyle{empty}' >> formula.tex
	echo '\\usepackage{amsmath}' >> formula.tex
	echo '\\begin{document}' >> formula.tex
	echo '\\begin{equation*}' >> formula.tex
	echo '% Put equation here' >> formula.tex
	echo 'a^2 + b^2 = c^2' >> formula.tex
	echo '\\end{equation*}' >> formula.tex
	echo '\\end{document}' >> formula.tex

realclean: clean
	rm -rf figures/*.pdf
