
all: overview.pdf concepts.pdf tech.pdf combined.pdf

overview.pdf: overview.tex
	pdflatex -output-directory out/ ./overview.tex && mv out/overview.pdf .

concepts.pdf: concepts.tex
	pdflatex -output-directory out/ ./concepts.tex && mv out/concepts.pdf .

tech.pdf: tech.tex
	pdflatex -output-directory out/ ./tech.tex && mv out/tech.pdf .

combined.pdf: combined.tex
	pdflatex -output-directory out/ ./combined.tex 2>/tmp/tex.err >/tmp/tex.out && mv out/combined.pdf .

clean:
	rm out/*


