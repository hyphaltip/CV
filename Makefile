TEX_NAME = Stajich_CV
all: CV

CV:
	pdflatex ${TEX_NAME}.tex
	bibtex journal
	bibtex submitted
	bibtex review
	bibtex book
	bibtex report
	bibtex commentary
	bibtex essay
	pdflatex ${TEX_NAME}.tex
	pdflatex ${TEX_NAME}.tex

clean:
	rm -f *.aux *.bbl *.blg

