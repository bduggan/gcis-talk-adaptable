
all: gcis_tech.pdf

gcis_tech.pdf: gcis_tech.tex
	mkdir -p out && pdflatex -output-directory out/ ./gcis_tech.tex 2>/tmp/tex.err >/tmp/tex.out && mv out/gcis_tech.pdf .

clean:
	rm out/*


