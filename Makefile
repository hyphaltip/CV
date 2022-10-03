TEX_NAME= Stajich_CV
SIMPLE=Stajich_Simple_CV
all: CV

CV:
	pdflatex ${TEX_NAME}.tex
	bibtex journal
	bibtex genome
	bibtex submitted
	bibtex review
	bibtex book
	bibtex report
	bibtex commentary
	bibtex essay
	bibtex consortia
	pdflatex ${TEX_NAME}.tex
	pdflatex ${TEX_NAME}.tex


clean:
	rm -f *.aux *.bbl *.blg
