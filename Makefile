# 
# makefile para a compilação do documento
#
# Sáb Jun 23 21:13:37 BRT 2007
#

BASE_NAME = slides
FINAL_NAME=apresentacao.pdf

LATEX     = latex
PDFLATEX  = pdflatex

all: pdf rename clean
	


rename: pdf
	cp $(BASE_NAME).pdf $(FINAL_NAME)

pdf: ${BASE_NAME}.pdf

${BASE_NAME}.pdf: $(BASE_NAME).tex
	$(PDFLATEX) $<
	$(PDFLATEX) $<

clean:
	rm -f $(BASE_NAME)*.ps $(BASE_NAME)*.dvi *.log \
	      *.aux *.blg *.toc *.brf *.ilg *.ind \
	      missfont.log $(BASE_NAME)*.bbl $(BASE_NAME)*.pdf $(BASE_NAME)*.out \
		  $(BASE_NAME)*.lof $(BASE_NAME)*.lot $(BASE_NAME).vrb $(BASE_NAME).nav $(BASE_NAME).snm 
