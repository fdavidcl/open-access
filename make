#!/bin/sh

rm -f *.aux
rm -f *.bbl
rm -f *.blg
rm -f *.log
rm -f *~
rm -f *.dvi

pdflatex paper.tex
bibtex paper
pdflatex paper.tex && pdflatex paper.tex

