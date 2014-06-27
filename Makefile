
all: overview.pdf concepts.pdf tech.pdf

overview: overview.pdf

tech.pdf: tech.tex
	pdflatex -output-directory out/ ./tech.tex && mv out/tech.pdf .


overview.pdf: overview.tex
	pdflatex -output-directory out/ ./overview.tex && mv out/overview.pdf .

concepts: concepts.pdf

concepts.pdf: concepts.tex
	pdflatex -output-directory out/ ./concepts.tex && mv out/concepts.pdf .

clean:
	rm out/*

watch:
	while true; do inotifywait -e close_write poster.tex; make poster; done


