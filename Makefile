all:
	git add content/ .vscode/settings.json
	git add images/ template/*.sty
	git add tables/
	git add main.tex README.md biblio.bib
	git commit -m "Update"
	git push origin master

