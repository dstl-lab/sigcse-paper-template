TODAY := $(shell date +"%m-%d")

.PHONY:
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY:
push: ## pushes changes
	git add -A
	git commit -m "update $(TODAY)" --allow-empty
	git pull origin master
	git push origin master

.PHONY:
bib: ## makes bibexport.bib file
	bibexport main
	sed '1,4d' bibexport.bib > new_bibexport.bib
	mv new_bibexport.bib bibexport.bib

.PHONY:
build: ## builds main.pdf
	latexmk -pdf main.tex

.PHONY:
watch: ## builds main.pdf
	latexmk -pdf -pvc main.tex

.PHONY:
clean: ## removes LaTeX auxiliary files
	rm -f main.aux main.log main.out main.bbl main.blg main.bcf main.run.xml main.toc main.lof main.lot main.fls main.fdb_latexmk main.synctex.gz
