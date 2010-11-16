TEX=pdflatex
OBJ=main.pdf

all:	$(OBJ)


.SUFFIXES: .pdf .tex

.tex.pdf:
	$(TEX) $<

clean:
	rm -rf _region_.* auto/ *.log *.aux *.prv/ \#* *~ $(OBJ) *.fmt

re: clean all