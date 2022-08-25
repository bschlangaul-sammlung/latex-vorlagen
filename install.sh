#! /bin/sh

_install() {
  FILES="$(find $1 -type f | sed "s#$1/##")"
  for FILE in $FILES; do
    echo $FILE;
    cp -f "$1/$FILE" "$HOME/texmf/tex/bschlangaul-$FILE"
  done
}

rm -f "$HOME"/texmf/tex/bschlangaul*
rm -f "$HOME"/texmf/tex/lehramt-informatik*

_install pakete
_install klassen

cp -f fremd/tikz-er2.sty $HOME/texmf/tex
cp -f fremd/tikz-er2.pdf $HOME/texmf/doc

cp -f fremd/tikz-uml.sty $HOME/texmf/tex
cp -f fremd/tikz-uml.pdf $HOME/texmf/doc

cp -f fremd/tikz-uml-activity.sty $HOME/texmf/tex

if [ -f dokumentation.pdf ]; then
  cp -f dokumentation.pdf $HOME/texmf/doc/bschlangaul.pdf
fi
