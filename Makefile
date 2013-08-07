
cv.pdf : cv.markdown cv-template.latex
	pandoc cv.markdown -o cv.pdf --template cv-template.latex --latex-engine xelatex
	cp cv.pdf _site/cv.pdf
