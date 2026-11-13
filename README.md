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
- `preamble/` – packages, layout (`\bookauthor`, `\booktitle` for the footer), `boxes.tex` (definition / theorem / example / solution / postulate / pitfall / exercise environments), `notation.tex` for own macros
- `frontmatter/` – title page, dedication, preface
- `chapters/` – introduction, conclusions, and one file per Part II chapter (`p2-ch*.tex`), each pulling in its sections from `chapters/ch1/` and `chapters/ch2/`
- `appendix/` – notation, quick-reference tables
- `Referencias/Bib.bib` – bibliography
- `source_material/` – the author's slides, exercises and reference PDFs (local only, git-ignored)

Part I is intentionally empty for now (an empty `\part` in `main.tex`).
