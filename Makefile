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


clean:
	rm -rf main.aux main.bcf main.fdb_latexmk main.fls main.idx main.lof main.log main.lot main.mtc main.mtc0 main.out main.pdf main.run.xml main.synctex\(busy\) main.synctex.gz main.toc
	rm -rf indent.log
