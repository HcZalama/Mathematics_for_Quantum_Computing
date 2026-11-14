# Mathematics for Quantum Computing

*From Complex Numbers to Quantum Information.* An undergraduate textbook with three chapters:

1. **Mathematical Tools** – complex numbers, vector spaces, Hilbert spaces and Dirac notation, operators and their spectra.
2. **The Postulates of Quantum Mechanics** – state space, evolution, measurement, composite systems; entanglement, density operators, EPR and Bell.
3. **Probability and Information** – probability measures, Fourier transforms, Shannon, von Neumann and relative entropy.

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
- `chapters/` – introduction, conclusions, and one file per chapter (`p2-ch1-*.tex`, `p2-ch2-*.tex`, `p3-ch3-*.tex`), each pulling in its sections from `chapters/ch1/`, `chapters/ch2/` and `chapters/ch3/`
- `appendix/` – notation, quick-reference tables
- `Referencias/Bib.bib` – bibliography
- `source_material/` – the author's slides, exercises and reference PDFs (local only, git-ignored)

The `\part` commands in `main.tex` are commented out; the book currently has three chapters (Mathematical Tools, The Postulates of Quantum Mechanics, Probability and Information).
