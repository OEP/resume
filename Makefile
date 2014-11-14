TEX = pdflatex
TEXFLAGS = -halt-on-error

all: resume.pdf

%.pdf: %.tex
	$(TEX) $(TEXFLAGS) $<
	$(TEX) $(TEXFLAGS) $<
