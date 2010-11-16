%
%  FSTTCS class file for submission and for final proceedings
%
%
%  -- by V. Vinay
%  
%  borrows heavily from all sorts of sources;
%  especially article and chapter class files 
%
%  Version 0.8 >> 24th sept 2008
%    Fixed problem with appendices (S P Suresh)
%
%  Version 0.7 >> 18th sept 2008 
%    Fixed a problem with \label references in \theoremlike
%    environments.  Changed \stepcounter{theorem} to
%    \refstepcounter{theorem}. 
%    (Problem and fix pointed out by Stefan Gulan).
%
%  Version 0.6 >> 13th sept 2008 
%


\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{fsttcs}

\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\DeclareOption{titlepage}{\@titlepagetrue}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}}
\ExecuteOptions{letterpaper,twoside,onecolumn,final}
\ProcessOptions


% fsttcs

\newcommand{\fsttcs}{{\scshape fsttcs 2010\/ }}

%
% font sizes
%

\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xipt{14}%
   \abovedisplayskip 11\p@ \@plus3\p@ \@minus6\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}

\normalsize

\newcommand\small{%
   \@setfontsize\small\@xpt\@xiipt
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 0\p@ \@plus2\p@ \@minus2\p@
               \parsep 0\p@ \@plus2\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}

\newcommand\footnotesize{%
   \@setfontsize\footnotesize\@ixpt{11}%
   \abovedisplayskip 8\p@ \@plus2\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 0\p@ \@plus2\p@ \@minus2\p@
               \parsep 0\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}

\newcommand\scriptsize{\@setfontsize\scriptsize\@viiipt{9.5}}
\newcommand\tiny{\@setfontsize\tiny\@vipt\@viipt}
\newcommand\large{\@setfontsize\large\@xiipt{14}}
\newcommand\Large{\@setfontsize\Large\@xivpt{18}}
\newcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
\newcommand\huge{\@setfontsize\huge\@xxpt{25}}
\newcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}

%
% define layout; bigger than the usual B5; aspect ratio roughly 1.4
%


\setlength\paperheight{772pt}
\setlength\paperwidth{552pt}  % 5pt into binding


\setlength\textwidth{616pt}
\setlength\textheight{440pt}

\setlength\baselineskip{14pt}

\setlength\topmargin{78pt}
\setlength\oddsidemargin{56pt}
\setlength\evensidemargin{56pt}

\setlength\headheight{14pt}
\setlength\headsep{28pt}
\setlength\footskip{\baselineskip}

\setlength\marginparsep{1em}
\setlength\marginparwidth{7em}

\setlength\parindent{2em}

\usepackage[total={552pt,772pt},text={440pt,616pt},top=78pt,left=56pt]{geometry}
%\usepackage[cam,a4,center]{crop}
\usepackage[a4,center]{crop}

%
% change font to palatino
%

\usepackage{palatino}
\usepackage{mathpazo}

%
% some misc stuff
%

\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{}
\setlength\parskip{0\p@ \@plus \p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\setcounter{topnumber}{2}
\renewcommand\topfraction{.7}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.3}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.2}
\renewcommand\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.7}
\renewcommand\dblfloatpagefraction{.5}

%
% headings/running titles etc on each page
%


\newtoks\rtitle
\newtoks\rauth
\newtoks\c@ntenttype
\newcommand{\runningtitle}[1]{\rtitle={#1}}
\newcommand{\runningauthors}[1]{\rauth={#1}}
\newcommand{\contenttype}[1]{\c@ntenttype={#1}}

\newtoks\firstpage
\newtoks\lastpage
\newcommand{\pagenumbers}[2]{\firstpage={#1}\lastpage={#2}\setcounter{page}{#1}}


\newdimen\ruleht			       
\ruleht=0.4pt

\vbadness=10000
\def\ps@headings{%
      \let\@oddfoot\@empty\let\@evenfoot\@empty
      \def\@evenhead{\llap{\hbadness=10000 \hbox  to 30pt{{\bfseries\large \thepage}}}{\scshape \the\rtitle}%
          \hfill{\scshape\large \the\c@ntenttype}}%

      \def\@oddhead{{\scshape \the\rauth}\hfill{\fsttcs}\rlap{\hbadness=10000 \hbox to 30pt{\hfill\textbf{\thepage}}}}%
}


\def\ps@firstpage{%

\def\@oddhead{\parbox{320pt}{\fontsize{8}{9\p@}\normalfont\textsf{Foundations of Software Technology and Theoretical Computer Science (2010) Submission}}\hfill{}}

\def\@oddfoot{\fontsize{8}{9\p@}\normalfont{}\hfill\textsf{NOT FOR DISTRIBUTION}}
\let\@evenhead\@empty\let\@evenfoot\@empty
}



%
% Theorem environment
%

\newcounter{theorem}

\newcommand{\theoremlike}[1]{\par\medskip\penalty-250\refstepcounter{theorem}{\bfseries\scshape\noindent#1 \thetheorem.}\slshape}
\newenvironment{theorem}{\theoremlike{Theorem}}{\par\medskip}
\newenvironment{corollary}{\theoremlike{Corollary}}{\par\medskip}
\newenvironment{proposition}{\theoremlike{Proposition}}{\par\medskip}
\newenvironment{lemma}{\theoremlike{Lemma}}{\par\medskip}
\newenvironment{definition}{\theoremlike{Definition}}{\par\medskip}
\newenvironment{conjecture}{\theoremlike{Conjecture}}{\par\medskip}
\newenvironment{claim}{\theoremlike{Claim}}{\par\medskip}
\newenvironment{remark}{\medskip{\bfseries \noindent Remarks:}}{\par\medskip}{\par\medskip}
\newenvironment{remarks}{\medskip{\bfseries \noindent Remarks:}}{\par\medskip}{\par\medskip}

\newcommand{\proof}{{\scshape\noindent Proof.\quad}}
\newcommand{\qed}{\hfill\rule{1ex}{1em}\penalty-1000{\par\medskip}}

%
% AtEndDocument
%

%\newcommand{\putcclicense}{\par\vfill\hfill\parbox{230pt}{\bigskip\fontsize{8}{9\p@}\normalfont\upshape\textsf{This work is licensed under the Creative Commons Attribution-NonCommercial-No Derivative Works 3.0 License.}}}

%\AtEndDocument{\putcclicense}

%
% sections etc
%

\setcounter{secnumdepth}{2}
\newcounter{chapter}
\newcounter {section}
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand\thesection {\@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection .\@arabic\c@subsubsection}
\renewcommand\theparagraph    {\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph}

\renewcommand\thefootnote{\fnsymbol{footnote}}
\let\thanks\footnote

\newcommand{\resetc@unters}{\setcounter{theorem}{0} \cleardoublepage}


\renewcommand{\title}[1]{\resetc@unters\thispagestyle{firstpage}\begin{flushright}{\Huge    #1\medskip}\end{flushright}}%%
\renewcommand{\author}[1]{\bigskip\begin{flushright}{\bfseries\sffamily\Large  #1}\end{flushright}}
\newcommand{\email}[1]{{\tt #1}}
\newcommand{\inst}[1]{\unskip$^{#1}$}
\newcommand{\institute}[2]{\bigskip\begin{flushright}$^{#1}${#2}\end{flushright}}
\newcommand{\affiliation}[1]{\begin{flushright}{#1}\end{flushright}}



\newcommand{\addtotoc}[1]{\addcontentsline{toc}{section}{#1}}
\newcommand{\TOCauthors}[1]{\addcontentsline{toc}{section}{#1}}

%
% abstract env
%

\newcommand{\absname}{Abstract.\/}
\newenvironment{abstract}{%
  \bigskip\bigskip\parindent=\z@{\scshape\absname}\relax\small  
}



\newcommand\section{\@startsection {section}{1}{\z@}%
                                   {-2.5ex \@plus -1ex \@minus -.2ex}%
                                   {1.5ex \@plus.2ex}%
                                   {\bfseries\sffamily\Large }}

\newcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\large\bfseries}}

\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\normalsize\bfseries}}

\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\normalfont\normalsize\bfseries}}

\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\normalfont\normalsize\bfseries}}
\setlength\leftmargini  {2.5em}
\leftmargin  \leftmargini
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\setlength\leftmarginv  {1em}
\setlength\leftmarginvi {1em}
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}
\newenvironment{verse}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item\relax}
               {\endlist}
\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}
\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax}
               {\endlist}
\newcommand\appendix{\par
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \gdef\thesection{\@Alph\c@section}}
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\@addtoreset {equation}{chapter}
\renewcommand\theequation
  {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@equation}
\newcounter{figure}
\renewcommand \thefigure
     {\ifnum \c@chapter>\z@ \fi \@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename~\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
\newcounter{table}
\renewcommand \thetable
     {\ifnum \c@chapter>\z@ \fi \@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename~\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{1}
\newcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{2.25em \@plus\p@}%
    \begingroup
      \setlength\@tempdima{3em}%
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries #1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}
\newcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\newcommand*\l@section{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand*\l@subsection{\@dottedtocline{2}{3.8em}{3.2em}}
\newcommand*\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
\newcommand*\l@paragraph{\@dottedtocline{4}{10em}{5em}}
\newcommand*\l@subparagraph{\@dottedtocline{5}{12em}{6em}}
\newcommand\listoffigures{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}%
              {\MakeUppercase\listfigurename}}%
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
    }
\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand\listoftables{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename
      \@mkboth{%
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}%
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
    }
\let\l@table\l@figure
\newdimen\bibindent
\setlength\bibindent{1.5em}
\newenvironment{thebibliography}[1]
     {\section*{\bibname}%
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
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty
\newenvironment{theindex}
               {\if@twocolumn
                  \@restonecolfalse
                \else
                  \@restonecoltrue
                \fi
                \columnseprule \z@
                \columnsep 35\p@
                \twocolumn[\@makeschapterhead{\indexname}]%
                \@mkboth{\MakeUppercase\indexname}%
                        {\MakeUppercase\indexname}%
                \thispagestyle{plain}\parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \let\item\@idxitem}
               {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand\@idxitem{\par\hangindent 40\p@}
\newcommand\subitem{\@idxitem \hspace*{20\p@}}
\newcommand\subsubitem{\@idxitem \hspace*{30\p@}}
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule\@width.4\columnwidth
  \kern2.6\p@}
\@addtoreset{footnote}{chapter}
\newcommand\@makefntext[1]{%
    \parindent 1em%
    \noindent
    \hb@xt@1.8em{\hss\@makefnmark}#1}
\newcommand\contentsname{Contents}
\newcommand\listfigurename{List of Figures}
\newcommand\listtablename{List of Tables}
\newcommand\bibname{References}
\newcommand\indexname{Index}
\newcommand\figurename{Figure}
\newcommand\tablename{Table}
\newcommand\partname{Part}
\newcommand\chaptername{Chapter}
\newcommand\appendixname{Appendix}
\newcommand\today{}
\edef\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}

\pagestyle{headings}
\pagenumbering{arabic}
\onecolumn

\endinput
%%
