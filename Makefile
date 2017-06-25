PROJECT=lectures
TEX=pdflatex -synctex=1 -interaction=nonstopmode
BIBTEX=biber
BUILDTEX=$(TEX) $(PROJECT).tex
VIEWER=evince

all:
	$(BUILDTEX)
    
once:
	$(BUILDTEX)
    
view:
	$(VIEWER) $(PROJECT).pdf

clean:
	rm -f $(PROJECT).aux $(PROJECT).b* $(PROJECT).l* $(PROJECT).out $(PROJECT).run.xml $(PROJECT).toc
