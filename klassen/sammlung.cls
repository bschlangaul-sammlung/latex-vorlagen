\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bschlangaul-sammlung}[2019/10/27 Klasse zum
Setzen von Aufgabensammlung, d.h. Dokumenten, in denen sowohl sonstige
Aufgaben als auch Examensaufgaben zusammengefasst werden.]
%    \end{macrocode}

% Lade die wichtigsten Pakete. Formatierung muss vor literatur sein, sonst Option clash
%    \begin{macrocode}
\LoadClass[pakete={
  formatierung,
  literatur-dummy,
  makros,
  aufgaben-einbinden,
  aufgaben-metadaten,
  abmessung,
  typographie,
  grafik,
  meta,
  index
}]{bschlangaul-basis}
%    \end{macrocode}

%    \begin{macrocode}
\bLadeAllePakete
%    \end{macrocode}

% Nochmals makros laden, damit zum Beispiel dh nicht überschrieben wird.
%    \begin{macrocode}
\bLadePakete{makros}
%    \end{macrocode}

% Komischer Option-Clash deshalb ganz am Ende, für die Silbentrennung
%    \begin{macrocode}
\RequirePackage[ngerman]{babel}
%    \end{macrocode}

%    \begin{macrocode}
\ExplSyntaxOn
%    \end{macrocode}

%    \begin{macrocode}
\setze_kopf_fusszeilen:nn {} {}
%    \end{macrocode}

% Breiterer rechter Rand für die Indexes
%    \begin{macrocode}
\geometry
{
  right = 3cm,
  marginparwidth = 2.8cm,
}
%    \end{macrocode}

%    \begin{macrocode}
\cs_new:Npn \url_tex_quelltext:
{
  \begin{spacing}{1}
    \tiny
    \noindent
    \bMetaQuelltext\\
    \_gib_github_url_href:
  \end{spacing}
}
%    \end{macrocode}

% \begin{macro}{\bAufgabe}
% Überschreibt Makro-Definition in der Datei aufgaben-einbinden.sty
%    \begin{macrocode}
\def\bAufgabe #1
{
  \def\bAufgabenMetadaten ##1
  {
    \bMetaSetze{##1}
    \subsection{Übungsaufgabe ~ „\g_thematik_tl“ ~ (\g_stichwoerter_tl)}
  }
  \input{\bPfadAufgaben/#1.tex}

  \url_tex_quelltext:
  \clearpage
}
%    \end{macrocode}
% \end{macro}

% \begin{macro}{\bExamensAufgabe}
% Überschreibt Makro-Definition in der Datei aufgaben-einbinden.sty
%    \begin{macrocode}
\def\bExamensAufgabe #1
{
  \def\bAufgabenMetadaten ##1
  {
    \bMetaSetze{##1}
    \subsection{Examensaufgabe ~ „\g_thematik_tl“ ~ (\g_referenz_tl)}
  }
  \input{\bPfadAufgaben/Staatsexamen/#1.tex}

  \url_tex_quelltext:
  \clearpage
}
%    \end{macrocode}
% \end{macro}

%    \begin{macrocode}
\AddToHook { begindocument }
{
  \repariere_kopfzeile_breite:
  \titel_seite:nn
  {
    {
      \Huge
      Die ~ komplette ~ Sammlung
    }
  }
  {
    Alle ~ Übungs- ~ und ~ Examensaufgaben
  }

  \tableofcontents
  \clearpage

  \pagestyle{fancy}
}
%    \end{macrocode}

%    \begin{macrocode}
\AddToHook { enddocument }
{
  \printindex
}
%    \end{macrocode}

% \begin{macro}{\bAufgabenMetadaten}
% Das Metadaten-Makro überschreiben
%    \begin{macrocode}
\def\bAufgabenMetadaten #1
{
  \bMetaSetze{#1}
  \subsection{\aufgabenpfad_lang:}
}
%    \end{macrocode}
% \end{macro}

%    \begin{macrocode}
\ExplSyntaxOff
%    \end{macrocode}

%    \begin{macrocode}
