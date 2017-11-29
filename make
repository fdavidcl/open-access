#!/bin/sh

rm *.aux
rm *.bbl
rm *.blg
rm *.log
rm *~
rm *.dvi

pdflatex paper.tex && pdflatex paper.tex && pdflatex paper.tex
bibtex paper
pdflatex paper.tex && pdflatex paper.tex && pdflatex paper.tex

