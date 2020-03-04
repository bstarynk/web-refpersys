#!/bin/bash
# file talk-Pitrat-Caia-RefPersys-2020mar06/build.sh
# in http://github.com/bstarynk/web-refpersys/
for svgfile in *.svg ; do
    svgbase=$(basename $svgfile .svg)
    inkscape --without-gui --export-pdf=$svgbase.pdf $svgfile
    inkscape --without-gui --export-eps=$svgbase.eps $svgfile
done
# for dotfile in *.dot ; do
#     dotbase=$(basename $dotfile .dot)
#     dot -v -Teps -o $dotbase.eps  $dotfile
#     dot -v -Tpdf -o $dotbase.pdf  $dotfile
#     dot -v -Tsvg -o $dotbase.svg  $dotfile
# done
lualatex --shell-escape  --halt-on-error Starynkevitch-CAIA-RefPerSys-2020mar06
lualatex --shell-escape  --halt-on-error Starynkevitch-CAIA-RefPerSys-2020mar06.tex

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#% Local Variables: ;;
#% compile-command: "./build.sh" ;;
#% End: ;;
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
