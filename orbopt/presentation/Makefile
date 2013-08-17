all: formula.tex

formula.tex: formulaeps

formulaeps:
	latex formula
	dvips -E -Ppdf -x 3600 formula.dvi -o formula.eps
	epstopdf formula.eps

clean:
	rm -f formula.*
	rm -rf .DS_Store
	echo '% Convert latex formula to picture' > formula.tex
	echo '\documentclass{article}' >> formula.tex
	echo '\pagestyle{empty}' >> formula.tex
	echo '\\usepackage{amsmath}' >> formula.tex
	echo '\\begin{document}' >> formula.tex
	echo '\\begin{equation*}' >> formula.tex
	echo '% Put equation here' >> formula.tex
	echo 'a^2 + b^2 = c^2' >> formula.tex
	echo '\end{equation*}' >> formula.tex
	echo '\end{document}' >> formula.tex
