SHELL := /bin/bash

# Makefile for papers
PAPER := main

.DEFAULT_GOAL := $(PAPER).pdf

$(PAPER).pdf: $(PAPER).tex #References.bib
	pdflatex -file-line-error $<
	biber $(PAPER)
	pdflatex -file-line-error $<
	pdflatex -file-line-error $<

# The || : is there to make sure that subsequent lines get executed even if
# some of the removes fail because the files to be removed do not exist.
clean:
	@rm -f *.aux || :
	@rm -f *.bcf || :
	@rm -f *.ent || :
	@rm -f *.fls || :
	@rm -f *.idx || :
	@rm -f *.ilg || :
	@rm -f *.ind || :
	@rm -f *.lof || :
	@rm -f *.lot || :
	@rm -f *.maf || :
	@rm -f *.mtx || :
	@rm -f *.mtc0 || :
	@rm -f *.nlo || :
	@rm -f *.xml || :
	@rm -f *.toc || :
	@rm -f *.fdb_latemk || :
	@rm -f *.dvi || :
	@rm -f *.out || :
	@rm -f *.log || :
	@rm -f *.bbl || :
	@rm -f *.blg || :
	@rm -f main.pdf || :
