TEX = pdflatex
BIB = bibtex
TEXFLAGS = -halt-on-error

all: resume.pdf cv.pdf

%.pdf: %.tex
	$(TEX) $(TEXFLAGS) $<
	$(BIB) $(BIBFLAGS) $(<:.tex=)
	sed -i -e 's/Paul Kilgo/\\textbf{Paul Kilgo}/g' $(<:.tex=.bbl)
	sed -i -e 's/Paul.Michael Kilgo/\\textbf{Paul Michael Kilgo}/g' $(<:.tex=.bbl)
	$(TEX) $(TEXFLAGS) $<
	$(TEX) $(TEXFLAGS) $<

cv.pdf: cv.sty cv.bib cv.tex $(wildcard cv/*.tex)
resume.pdf: resume.tex resume.sty
	$(TEX) $(TEXFLAGS) $<
	$(TEX) $(TEXFLAGS) $<
