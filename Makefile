ENGINE=xelatex

.PHONY: all czech clean purge

all: demo.cze.pdf

czech: demo.cze.pdf

%.pdf: %.tex gurps-charsheet.sty
	$(ENGINE) $<
	$(ENGINE) $<

clean:
	rm -f *.{log,aux,toc,dvi}

purge: clean
	rm -f *.pdf
