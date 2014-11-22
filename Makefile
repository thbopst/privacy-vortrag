.PHONY: pdf, clean

MAINTEX = presentation

pdf:
	pdflatex --shell-escape $(MAINTEX).tex #-enable-write18#--shell-escape
#	bibtex $(MAINTEX).aux
#	pdflatex $(MAINTEX).tex
#	pdflatex $(MAINTEX).tex
	open $(MAINTEX).pdf

clean:
	rm *.aux $(MAINTEX).toc $(MAINTEX).log $(MAINTEX).out $(MAINTEX).nav $(MAINTEX).snm
	rm $(MAINTEX).bbl $(MAINTEX).blg
