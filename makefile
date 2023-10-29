check: document
	Rscript -e "devtools::check()"

document:
	Rscript -e "devtools::document()"

install: document
	Rscript -e "devtools::install()"

readme:
	Rscript -e "rmarkdown::render('README.Rmd')"


