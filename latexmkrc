# Keep the project root clean: auxiliary files (.aux .log .toc .bbl .bcf ...) go to build/,
# only main.pdf is written next to main.tex.
$aux_dir = 'build';
$out_dir = '.';
$pdf_mode = 1;
$bibtex_use = 2;          # run biber when needed and clean its output with -c
@generated_exts = (@generated_exts, 'bbl', 'run.xml', 'synctex.gz');
