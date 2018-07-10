.PHONY: clean run show

LATEXMK=latexmk -lualatex -latexoption=-shell-escape
TARGET=qms-paper

$(TARGET).pdf: $(TARGET).tex
	$(LATEXMK) $<

run: $(TARGET).pdf


clean:
	BIBINPUTS=$(BIBROOT) $(LATEXMK) -C
	rm -f *.{bbl,aux,ps,dvi,log,toc,out,vrb,snm,nav} *~ ~* *.bak *.synctex.* *.thm *-joined.pdf *.wbk *_latexmk *.fls
	# cd pics && make clean

show: $(TARGET).pdf
	evince $< &
	
	