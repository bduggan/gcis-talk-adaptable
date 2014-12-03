
all: adaptable.pdf

adaptable.pdf: adaptable.tex
	mkdir -p out && pdflatex -output-directory out/ ./adaptable.tex && mv out/adaptable.pdf .

clean:
	rm out/*


