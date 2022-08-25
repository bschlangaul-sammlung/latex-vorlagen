# tex

TeX- bzw. LaTeX- bzw. LuaLaTeX-Pakete und -Klassen zum Setzen der
Aufgaben.

Die in der Aufgabensammlung verwendeten Makros und Umgebungen der
verschiedenen Klassen und Pakete sind
[in einer PDF-Datei](https://github.com/bschlangaul-sammlung/tex/raw/main/dokumentation.pdf)
dokumentiert.


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
