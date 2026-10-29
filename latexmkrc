# Run from the SnS_materials folder, e.g.
#   latexmk tutorials/tutorial01.tex
#   latexmk answers/tutorial01_answers.tex
#   latexmk tutorials/*.tex answers/*.tex      (build everything)
#   latexmk -C                                  (clean build/)
$pdf_mode = 1;                 # pdflatex
$out_dir  = 'build';           # .aux/.log/... and the working PDF go here
$success_cmd = 'mkdir -p pdfs && cp "build/%R.pdf" pdfs/';   # tidy copy of the final PDF
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 %O %S';
# let \usepackage{signals-style} find styles/signals-style.sty
$ENV{TEXINPUTS} = './styles//:' . ($ENV{TEXINPUTS} // '');
