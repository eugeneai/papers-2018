.PHONY: clean run present

LATEXMK=latexmk -lualatex -latexoption=-shell-escape

present: talk-mda-2018-10.pdf

talk-mda-2018-10.pdf: talk-mda-2018-10.tex
	$(LATEXMK) $<

mda-paper.pdf: mda-paper.tex
	$(LATEXMK) $<

run: mda-paper.tex
	$(LATEXMK) $<

clean:
	BIBINPUTS=$(BIBROOT) $(LATEXMK) -C
	rm -f *.{bbl,aux,ps,dvi,log,toc,out,vrb,snm,nav} *~ ~* *.bak *.synctex.* *.thm *-joined.pdf *.wbk *_latexmk *.fls
	# cd pics && make clean
