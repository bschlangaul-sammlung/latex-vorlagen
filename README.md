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
% Lokaler Pfad des Repositories: https://github.com/bschlangaul-sammlung/examens-aufgaben-tex
% z. B. ...Aufgaben{/home/hermine/repos/examens-aufgaben-tex}
\def\bPfadAufgaben{/absoluter/pfad/zum/aufgaben/repo}
```

## Klassen


### -aufgabe

```latex
\documentclass{bschlangaul-aufgabe}
\bLadePakete{syntax}
\begin{document}
\bAufgabenMetadaten{
  Titel = {Aufgabe 5},
  Thematik = {Schnelle Suche von Schlüsseln: odd-ascending-even-descending-Folge},
  RelativerPfad = Staatsexamen/66115/2020/09/Thema-2/Teilaufgabe-2/Aufgabe-5.tex,
  ZitatSchluessel = examen:66115:2020:09,
  % unbekannt, OCR, TeX-Fehler, nur Angabe, mit Lösung
  BearbeitungsStand = unbekannt, % Siehe https://github.com/bschlangaul-sammlung/kommandozeilen-werkzeug/blob/main/src/aufgabe.ts#L27-L38
  % wahrscheinlich falsch, unbekannt, korrekt, korrekt und überprüft
  Korrektheit = unbekannt, % Siehe https://github.com/bschlangaul-sammlung/kommandozeilen-werkzeug/blob/main/src/aufgabe.ts#L47-L55
  Stichwoerter = {Binäre Suche}, % Siehe https://github.com/bschlangaul-sammlung/examens-aufgaben/blob/main/Stichwortverzeichnis.yml
  EinzelpruefungsNr = 66115,
  Jahr = 2020,
  Monat = 09,
  ThemaNr = 2,
  TeilaufgabeNr = 2,
  AufgabeNr = 5,
}

% Abkürzungen
\let\j=\bJavaCode

Eine Folge von Zahlen i

\begin{enumerate}
\item Unterfrage

\begin{bAntwort}
Antwort
\end{bAntwort}
\end{enumerate}
\end{document}
```

### -haupt

```latex
\documentclass{bschlangaul-haupt}

\begin{document}
\section{46115 (Theoretische Informatik / Algorithmen / Datenstrukturen (nicht vertieft))}
\bExamensAufgabe{46115/2014/03/Thema-1/Aufgabe-7}

\section{46116 (Softwaretechnologie / Datenbanksysteme (nicht vertieft))}
\bExamensAufgabe{46116/2014/03/Thema-2/Teilaufgabe-1/Aufgabe-1}
...

\section{66115 (Theoretische Informatik / Algorithmen (vertieft))}
\bExamensAufgabe{66115/2013/09/Thema-2/Aufgabe-8}
...

\section{66116 (Datenbanksysteme / Softwaretechnologie (vertieft))}
\bExamensAufgabe{66116/2016/09/Thema-2/Teilaufgabe-2/Aufgabe-1}
...
\end{document}
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
