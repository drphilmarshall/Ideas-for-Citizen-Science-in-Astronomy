all: pdf

clean:
	rm -f *.aux *.log *.dvi *.bbl *.blg

pdf: review.pdf

review.dvi: review.tex
	latex review.tex
	latex review.tex
	bibtex review
	latex review.tex
	latex review.tex

review.pdf: review.dvi
	dvipdf review.dvi

