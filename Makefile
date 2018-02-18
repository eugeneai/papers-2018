.PHONY: clean run

LATEXMK=latexmk -lualatex -latexoption=-shell-escape

mda-paper.pdf: mda-paper.tex
	$(LATEXMK) $<

run: mda-paper.tex
	$(LATEXMK) $<

clean:
	BIBINPUTS=$(BIBROOT) $(LATEXMK) -C
	rm -f *.{bbl,aux,ps,dvi,log,toc,out,vrb,snm,nav} *~ ~* *.bak *.synctex.* *.thm *-joined.pdf *.wbk *_latexmk *.fls
	# cd pics && make clean
