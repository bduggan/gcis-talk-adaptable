
all: adaptable.pdf

adaptable.pdf: adaptable.tex sealevel/figure-to-platform.pdf
	mkdir -p out && pdflatex -output-directory out/ ./adaptable.tex && mv out/adaptable.pdf .

clean:
	rm out/*

watch:
	while inotifywait adaptable.tex; do make all; done

