SHELL := /bin/bash -O extglob -c
.PHONY: clean

paper.pdf: paper.tex plot-data.png
	pdflatex paper.tex

plot-%.png: %.dat plot.py
	./plot.py -i $*.dat -o $@

clean:
	rm paper.!(tex) plot-*.png texput.log plt

