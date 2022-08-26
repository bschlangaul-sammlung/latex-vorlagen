# LaTeX-Vorlagen

TeX- bzw. LaTeX- bzw. LuaLaTeX-Vorlagen als Pakete und -Klassen zum Setzen der
Aufgaben.

Die in der Aufgabensammlung verwendeten Makros und Umgebungen der
verschiedenen Klassen und Pakete sind
[in einer PDF-Datei](https://github.com/bschlangaul-sammlung/latex-vorlagen/raw/main/dokumentation.pdf)
dokumentiert.

## Systemvoraussetzungen

* [TeX Live](https://tug.org/texlive/)
* [pygmentize](https://pygments.org)
* Eine Konfigurationsdatei mit dem Pfad `/etc/bschlangaul.config.tex` und folgendem Inhalt:

```tex
% Bitte anpassen
% Lokaler Pfad des Repositories: https://github.com/bschlangaul-sammlung/examens-aufgaben
% z. B. ...Aufgaben{/home/hermine/repos/examens-aufgaben}
\def\bPfadAufgaben{/absoluter/pfad/zum/aufgaben/repo}
```

## LaTeX-Schnipsel

LaTeX-Schnipsel zum Kopieren als kleine Hilfe beim Schreiben der
Dokumentation.


### weder ein Makro (macro) noch eine Umgebung (environment)

```latex
%    \end{macrocode}

%    \begin{macrocode}

%    \end{macrocode}

%    \begin{macrocode}
```

### Makro (macro)

```latex
%    \end{macrocode}

% \begin{macro}{}
%    \begin{macrocode}

%    \end{macrocode}
% \end{macro}

% \begin{macro}{}
%    \begin{macrocode}

%    \end{macrocode}
% \end{macro}

%    \begin{macrocode}
```

### Umgebung (environment)

```latex
%    \end{macrocode}
% \end{environment}

% \begin{environment}{}
%    \begin{macrocode}

%    \end{macrocode}
% \end{environment}

% \begin{environment}{}
%    \begin{macrocode}
```
