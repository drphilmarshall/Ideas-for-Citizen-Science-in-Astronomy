all: pdf

clean:
	rm -f *.aux *.log *.dvi *.bbl *.blg *.out *.toc

pdf: review.pdf

review.dvi: review.tex
	latex review.tex
	latex review.tex
# 	bibtex review
# 	latex review.tex
# 	latex review.tex

review.pdf: review.dvi
	dvipdf review.dvi

