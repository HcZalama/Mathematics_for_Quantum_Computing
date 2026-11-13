# Mathematics for Quantum Computing

Undergraduate textbook covering two courses:

- **Part I – Mathematics for Quantum Computing I**
- **Part II – Mathematics for Quantum Computing II**

Author: Héctor Zalama Alonso

## Build

```
latexmk -pdf main.tex      # needs a TeX distribution and biber
```

Every push to `main` is also compiled by GitHub Actions; the PDF is available as a
build artifact under the **Actions** tab.

## Layout

- `main.tex` – structure and metadata (title, author, Parts)
- `preamble/` – packages, layout (`\bookauthor`, `\booktitle` for the footer), theorem environments, `notation.tex` for own macros
- `frontmatter/` – title page, dedication, preface
- `chapters/`, `appendix/` – content; add an `\include{...}` line in `main.tex` for each new file
- `Referencias/Bib.bib` – bibliography
- `Images/` – figures
