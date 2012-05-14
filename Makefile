cv := cv

default: show

%.pdf: %.tex
	pdflatex $*.tex
	pdflatex $*.tex

show: ${cv}.pdf
	evince ${cv}.pdf

clean:
	rm *.aux *.log *.nav *.out *.pdf *.snm *.toc	

