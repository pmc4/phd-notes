#!/bin/bash
# Delete the files to avoid errors
rm My-thesis--extended-version.*
rm index.acn
rm index.ist
# Render quarto project
quarto render
# Compile with xelatex
xelatex My-thesis--extended-version.tex
# Make the glossaries
makeglossaries My-thesis--extended-version
# Compile twice with xelatex again
xelatex My-thesis--extended-version.tex
xelatex My-thesis--extended-version.tex
# Move everything to the output folder
# mv My-thesis--extended-version.* ../latex-output