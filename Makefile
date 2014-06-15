all: pdf

ps:
	pdflatex -shell-escape romagna
	pdflatex -shell-escape romagna
	bibtex romagna
	pdflatex -shell-escape romagna
	dvips -o romagna.ps romagna.dvi

pdf: 
	pdflatex -shell-escape romagna
	pdflatex -shell-escape romagna
	bibtex romagna
	pdflatex -shell-escape romagna
	#ps2pdf romagna.ps

clean: 
	rm -f *.out *~ *.thm *.log *.bbl *.blg *.aux *.toc *.lot *.lof *.dvi romagna.ps 




