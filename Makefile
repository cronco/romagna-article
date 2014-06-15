all: pdf

ps:
	latex -shell-escape romagna
	latex -shell-escape romagna
	bibtex romagna
	latex -shell-escape romagna
	dvips -o romagna.ps romagna.dvi

pdf: ps
	ps2pdf romagna.ps

clean: 
	rm -f *.out *~ *.thm *.log *.bbl *.blg *.aux *.toc *.lot *.lof *.dvi romagna.ps 




