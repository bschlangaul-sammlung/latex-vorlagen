# tex

TeX- bzw. LaTeX- bzw. LuaLaTeX-Pakete und -Klassen zum Setzen der
Aufgaben.

Die in der Aufgabensammlung verwendeten Makros und Umgebungen der
verschiedenen Klassen und Pakete sind
[in einer PDF-Datei](https://github.com/bschlangaul-sammlung/tex/raw/main/dokumentation.pdf)
dokumentiert.

## Systemvoraussetzungen

* [TeX Live](https://tug.org/texlive/)
* [pygmentize](https://pygments.org)
* Eine Konfigurationsdatei mit dem Pfad `/etc/bschlangaul.config.tex` und folgendem Inhalt:

```tex
% Bitte anpassen
% Lokaler Pfad des Repositories: https://github.com/hbschlang/lehramt-informatik
% z. B. \def\bPfadAufgaben{/home/hermine/repos/aufgaben_sammlung}
\def\bPfadAufgaben{/absoluter/pfad/zum/aufgabe/repo}

% Lokaler Pfad des Repositories: https://github.com/bschlangaul-sammlung/logo
% z. B. \def\bPfadLogo{/home/hermine/repos/logo}
\def\bPfadLogo{/absoluter/pfad/zum/logo/repo}

% Muss nicht angepasst werden.
\def\bGithubDomain{https://github.com}
\def\bGithubRawDomain{https://raw.githubusercontent.com}
\def\bGithubRepoNameAufgaben{hbschlang/lehramt-informatik}
\def\bGithubRepoNameJava{bschlangaul-sammlung/java}
\def\bGitBranch{main}
\def\bAutorName{Hermine~Bschlangaul}
\def\bAutorEmail{hermine.bschlangaul@gmx.net}
\def\bSammlungTitel{Aufgaben-~und~Materialsammlung~„Lehramt~Informatik“}
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
