all: ps

ps:
	latex romagna
	latex romagna
	bibtex romagna
	latex romagna
	dvips -o romagna.ps romagna.dvi

pdf: ps
	ps2pdf romagna.ps

clean: 
	rm -f *.out *~ *.thm *.log *.bbl *.blg *.aux *.toc *.lot *.lof *.dvi romagna.ps 


