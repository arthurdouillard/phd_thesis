all:
	pdflatex main.tex
	biber main
	pdflatex main.tex
	pdflatex main.tex


push:
	git add -u
	git add content/ .vscode/settings.json
	git add images/ template/*.sty
	git add tables/
	git add main.tex README.md biblio.bib
	git commit
	git push origin master

