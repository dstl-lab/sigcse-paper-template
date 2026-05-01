# SIGCSE Paper Template

Use this repo as a GitHub template to start a new paper.

1. Click **Use this template** on GitHub and create a new repository.
2. Create a new Overleaf project from that repository.
3. Edit `main.tex` with your title, authors, abstract, and paper content.
4. Put bibliography entries in `refs.bib`.
5. Compile in Overleaf.

To build locally instead, clone the repository and install `latexmk` plus a
LaTeX distribution, such as MacTeX on macOS.

```sh
make build  # build main.pdf
make watch  # rebuild on changes
make clean  # remove LaTeX auxiliary files
make bib    # export cited bibliography entries
```
