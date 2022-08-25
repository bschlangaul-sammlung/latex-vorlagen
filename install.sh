#! /bin/sh

TEX_DIR="$HOME/texmf/tex"
DOC_DIR="$HOME/texmf/doc"

_install() {
  FILES="$(find $1 -type f | sed "s#$1/##")"
  for FILE in $FILES; do
    echo $FILE;
    cp -f "$1/$FILE" "$HOME/texmf/tex/bschlangaul-$FILE"
  done
}

rm -f "$TEX_DIR"/bschlangaul*

mkdir -p "$TEX_DIR"
mkdir -p "$DOC_DIR"

_install pakete
_install klassen

cp -f fremd/tikz-er2.sty "$TEX_DIR"
cp -f fremd/tikz-er2.pdf "$DOC_DIR"

cp -f fremd/tikz-uml.sty "$TEX_DIR"
cp -f fremd/tikz-uml.pdf "$DOC_DIR"

cp -f fremd/tikz-uml-activity.sty "$TEX_DIR"

if [ -f dokumentation.pdf ]; then
  cp -f dokumentation.pdf "$DOC_DIR/bschlangaul.pdf"
fi
