\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bschlangaul-basis}[2021/09/12 Basis-Klasse, die nur als
Unterklasse benutzt werden soll.]
%    \end{macrocode}

%    \begin{macrocode}
\LoadClass[a4paper,oneside,12pt]{book}
%    \end{macrocode}

% Damit wir Klassen-Optionen mit \LaTeX-3 verwalten könnten.
%    \begin{macrocode}
\RequirePackage{l3keys2e}
%    \end{macrocode}

%    \begin{macrocode}
\RequirePackage{bschlangaul-basis}
%    \end{macrocode}

% Lade Pakete die von allen Unterklassen benötigt werden.
%    \begin{macrocode}
\bLadePakete{
  kopfzeile,
  formatierung,
  makros,
}
%    \end{macrocode}

%    \begin{macrocode}
\ExplSyntaxOn
%    \end{macrocode}

%    \begin{macrocode}
\keys_define:nn { klassen-setup }
{
  pakete .code:n = {
    \bLadePakete{#1}
  }
}
%    \end{macrocode}

% https://tex.stackexchange.com/questions/544374/passing-options-to-a-class-and-evaluate-using-latex3-interfaces
%    \begin{macrocode}
\ProcessKeysOptions { klassen-setup }
%    \end{macrocode}

% Damit die Aufgaben mehrmals kompiliert werden können, ohne dass sich
% die PDF-Datei ändert. So kommen nur inhaltliche Änderung im
% Git-Respository an (https://tex.stackexchange.com/a/313605).
%    \begin{macrocode}
\pdfvariable suppressoptionalinfo \numexpr32+64+512\relax
%    \end{macrocode}

%    \begin{macrocode}
\ExplSyntaxOff
%    \end{macrocode}

%    \begin{macrocode}
