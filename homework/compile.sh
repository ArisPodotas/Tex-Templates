#!/bin/bash
# Compile the LaTeX file
pdflatex -output-directory=output main.tex
bibtex ./output/main
pdflatex -output-directory=output main.tex
# Move the PDF output
mv ./output/main.pdf ./main.pdf
# Open with Document Viewer
evince "$HOME/Documents/Literature/POL/main.pdf" &
