LATEXMK = latexmk

LATEXMAIN = resume.tex

all:
	$(LATEXMK) -pdf $(LATEXMAIN)
