\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{eptcs}[2009/5/12 v1.1]

\newif\ifdraft
\newif\ifsubmission
\newif\ifpreliminary
\newif\ifreplacement
\newif\ifcopyright
\newif\ifpublicdomain
\newif\ifcreativecommons
\newif\ifnoderivs
\newif\ifsharealike
\newif\ifnoncommercial
\draftfalse
\submissionfalse
\preliminaryfalse
\replacementfalse
\copyrightfalse
\publicdomainfalse
\creativecommonsfalse
\noderivsfalse
\sharealikefalse
\noncommercialfalse
\replacementfalse
\DeclareOption{draft}{\drafttrue}
\DeclareOption{submission}{\submissiontrue}
\DeclareOption{preliminary}{\preliminarytrue}
\DeclareOption{replacement}{\replacementtrue}
\DeclareOption{copyright}{\copyrighttrue}
\DeclareOption{publicdomain}{\publicdomaintrue}
\DeclareOption{creativecommons}{\creativecommonstrue}
\DeclareOption{noderivs}{\noderivstrue}
\DeclareOption{noncommercial}{\noncommercialtrue}
\DeclareOption{sharealike}{\sharealiketrue}
\ProcessOptions\relax

\LoadClass[letterpaper,11pt,twoside]{article}
\RequirePackage{hyperref}
\RequirePackage{mathptmx} % Pick Times Roman as a base font
\RequirePackage{lastpage} % Remembers page number of last page

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   This format is suited for printing on A4 and US letter paper.    %%
%%   The left margin is 2.5cm on both A4 and US letter paper.         %%
%%   The right margin is 2.5cm on A4 paper                            %%
%%         which is 2.5cm + (21cm - 8.5in) = 3.09cm on letter paper.  %%
%%   When \topmargin would be 0, the real top margin would be         %%
%%   (72-25-12=35pt) + 1pt (unused portion of head) = .5in = 1.27cm.  %%
%%   Thus our top margin is 1.23cm on US letter paper                 %%
%%           which is 1.23cm + (29.7cm - 11in) = 2.99cm on A4 paper.  %%
%%   The bottom margin, on both kind of papers, is                    %%
%%           11in - 1in + 0.04cm - 623/72in = 3.46cm.                 %%
%%   On the first page the bottom margin contains various footers.    %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\textwidth              16cm             % A4 width is 21cm            %
\textheight             623.01pt         % 46 lines exactly = 21.98cm  %
\oddsidemargin          -0.04cm          % +1 inch = 2.5cm             %
\evensidemargin         -0.04cm          % +1 inch = 2.5cm             %
\topmargin              -0.04cm          % +1 inch = 2.5cm             %
\advance\topmargin-\headheight           % 12pt                        %
\advance\topmargin-\headsep              % 25pt                        %

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%			Pagestyle and titlepage      		    %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pagestyle{myheadings}
\def\titlerunning{Please {\tt $\backslash$def$\backslash$titlerunning}}
\def\authorrunning{Please {\tt $\backslash$def$\backslash$authorrunning}}

\def\@maketitle{%                       adapted from article.cls
  \newpage
\noindent
\raisebox{-22.8cm}[0pt][0pt]{\footnotesize
\begin{tabular}{@{}l}
\ifdraft
  \Large DRAFT\quad\today
\else\ifsubmission
  Submitted to Electronic Proceedings\\ in Theoretical
  Computer Science.
\else\ifpreliminary
  This is a preliminary version of a paper\\ that will appear in
  Electronic Proceedings\\ in Theoretical Computer Science.
\else\ifreplacement
  This is a revision of a paper with the same title,\\
  published in EPTCS \volume, \anno, pp.\ \firstpage--\pageref{LastPage}.
\else
  \event\\
  EPTCS \volume, \anno, pp.\ \firstpage--\pageref{LastPage}.
\fi\fi\fi\fi
\end{tabular}}
\hfill\vspace{-1em}
\raisebox{-22.8cm}[0pt][0pt]{\footnotesize
\begin{tabular}{l@{}}
\ifpublicdomain
  This work is \href{http://creativecommons.org/licenses/publicdomain/}
  {dedicated to the public domain}.
\else
  \ifcopyright
    \copyright~\authorrunning\\
  \fi
  \ifcreativecommons
    This work is licensed under the
    \ifnoncommercial
      \href{http://creativecommons.org}{Creative Commons}\\
      \ifnoderivs
	\href{http://creativecommons.org/licenses/by-nc-nd/3.0/}
	{Attribution-Noncommercial-No Derivative Works} License.
      \else\ifsharealike
	\href{http://creativecommons.org/licenses/by-nc-sa/3.0/}
	{Attribution-Noncommercial-Share Alike} License.
      \else
	\href{http://creativecommons.org/licenses/by-nc/3.0/}
	{Attribution-Noncommercial} License.
      \fi\fi
    \else
      \ifnoderivs
        \href{http://creativecommons.org}{Creative Commons}\\
	\href{http://creativecommons.org/licenses/by-nd/3.0/}
	{Attribution-No Derivative Works} License.
      \else\ifsharealike
        \href{http://creativecommons.org}{Creative Commons}\\
	\href{http://creativecommons.org/licenses/by-sa/3.0/}
	{Attribution-Share Alike} License.
      \else
        \\\href{http://creativecommons.org}{Creative Commons}
	\href{http://creativecommons.org/licenses/by/3.0/}
	{Attribution} License.
      \fi\fi
    \fi
  \fi
\fi
\end{tabular}}
  \null
  %\vskip 2em%				a bit of space removed (< 2em)
  \begin{center}%
  \let \footnote \thanks
    {\LARGE\bf \@title \par}%		\bf added
    \vskip 2em%				was: 1.5em
    {\large
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
    \vskip 1em%			       \date and extra space removed
  \end{center}%
  \par
  \markboth{\hfill\titlerunning}{\authorrunning\hfill}
  \vskip .5em}

\newcommand{\institute}[1]{\\{\scriptsize
   \begin{tabular}[t]{@{\footnotesize}c@{}}#1\end{tabular}}}
\newcommand{\email}[1]{\\{\footnotesize\tt #1}}

\renewenvironment{abstract}{\thispagestyle{empty}
                        \setcounter{page}{\firstpage}
                        \begin{list}{}%   header removed and noindent
			{\rightmargin\leftmargin
			\listparindent 1.5em
			\parsep 0pt plus 1pt}
			\small\item}{\end{list}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%			Less space in lists      		    %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\@listi{\leftmargin\leftmargini
            \parsep 2.5\p@ \@plus1.5\p@ \@minus\p@
            \topsep 5\p@   \@plus2\p@ \@minus5\p@
            \itemsep2.5\p@ \@plus1.5\p@ \@minus\p@}
\let\@listI\@listi
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    1\p@ \@plus\p@ \@minus\p@
              \parsep    1\p@   \@plus\p@  \@minus\p@
              \itemsep   \parsep}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    \z@
              \parsep    \z@
              \itemsep   \topsep}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%       References small and with less space between items       %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewenvironment{thebibliography}[1]
     {\section*{\refname}\small%              small added
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m
		\setlength{\parskip}{2pt}%    less space between items
		\setlength{\itemsep}{0pt}%    less space between items
     }
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                  load eptcsdata when available                 %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\IfFileExists{eptcsdata.tex}{\input{eptcsdata}}{}
