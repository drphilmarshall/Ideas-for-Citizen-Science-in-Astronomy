all: pdf

clean:
	@rm -f *.aux *.log *.dvi *.bbl *.blg *.out *.toc review.pdf

pdf: review.pdf

review.pdf: review.tex
	pdflatex review.tex
	pdflatex review.tex
# 	bibtex review
# 	pdflatex review.tex
	pdflatex review.tex

# review.pdf: review.dvi
# 	dvipdf review.dvi

figures.pdf: figures.tex
	pdflatex figures.tex
	pdflatex figures.tex
