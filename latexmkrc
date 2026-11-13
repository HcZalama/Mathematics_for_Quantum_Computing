# Keep the project root clean: auxiliary files (.aux .log .toc .bbl .bcf ...) go to build/,
# only main.pdf is written next to main.tex.
$aux_dir = 'build';
$out_dir = '.';
$pdf_mode = 1;
$bibtex_use = 2;          # run biber when needed and clean its output with -c
@generated_exts = (@generated_exts, 'bbl', 'run.xml', 'synctex.gz');

# TeX Live (unlike MiKTeX) does not create subfolders of build/ by itself, and
# \include writes build/chapters/*.aux, so create them up front.
use File::Path qw(make_path);
make_path("build/$_") for qw(chapters appendix frontmatter);
