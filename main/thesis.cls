\NeedsTeXFormat{LaTeX2e}
\LoadClass[a4paper,12pt,fleqn]{book}

%% Use of A4 size paper with a 12pt font ensures a proper size in the reduced B5 size of
%% the pages in the thesis. (Info from Ponsen&Looijen)

%% Package with definitions for thesis.
%% Usage: \documentclass[]{thesis}
%% The package is intended to work with the book class. (see \LoadClass command above)!!!
%% It redefines some commands of the book class to get a different look.

%% Known limitations:
%% The chapter title in the backmatter and frontmatter section are typeset in a 0.8\textwidth wide parbox

%% Michiel de Dood - started February 2000 and later (many additions)
%% Jeroen Engelberts - started February 2004 and later (many additions)

\ProvidesPackage{main/thesis}

%% 0 --> Automatically load required packages with options
%%
\RequirePackage[bf,small]{caption}
%%
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}                               %% Fancy header definition
\RequirePackage[fleqn]{amsmath}
\RequirePackage{amssymb}                                %% Special AMS symbols
\RequirePackage{times}                                  %% Font selection
\RequirePackage[square,comma,sort&compress]{natbib}     %% Citation package
\RequirePackage{calc}
\RequirePackage{array}                                  %% Extra's for formatting tables
\RequirePackage[dutch,usenglish]{babel}                 %% US english (default) and dutch hyphenation rules

%% 1/2-> Pagesize commands to define a pagesize of 24x15 cm

\setlength{\textwidth}{150mm}
\setlength{\textheight}{240mm}

%% This seems easy; but what about margins, headers etc.? Use the calc package to center
%% the page on the paper...

\setlength{\oddsidemargin}{(\paperwidth-\textwidth)/2-1in}
\setlength{\evensidemargin}{(\paperwidth-\textwidth)/2-1in}

\setlength{\topmargin}{(\paperheight-\textheight-\headheight-\headsep-\footskip)/2-1in}

%% 1 --> Fancy headers using the fancyhdr package
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\if@mainmatter
                                \markboth{Chapter \thechapter}{} \markright{#1}
                               \else
                                \markboth{#1}{#1}
                               \fi}
\renewcommand{\sectionmark}[1]{}
%% \renewcommand{\sectionmark}[1]{\markright{\thesection\ #1}}
\fancyhf{}
\fancyfoot[CE,CO]{}
\fancyhead[RO]{\thepage}
\fancyhead[LO]{\textsc{\leftmark}}
\fancyhead[RE]{\textsc{\leftmark}}
\fancyhead[LE]{\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\addtolength{\headheight}{2.5pt}
\fancypagestyle{plain}{%
    \fancyhead{}
    \renewcommand{\headrulewidth}{0pt}
}

%% 2 --> New abstract environment to give a short intro at beginning of the chapter

\newenvironment{abstract}{\vfill\sl}{}{\clearpage}

%% 3 --> Redefinition of the chapter command
%% Changes the appearance of headers and layout of the starting page of each chapter

\renewcommand\chapter{\if@openright\clearpage\thispagestyle{empty}\cleardoublepage\else\clearpage\fi
                    \thispagestyle{empty}%
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                       \if@mainmatter
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{\thechapter}#2}%
                       \else
                         \addcontentsline{toc}{chapter}{#2}%
                       \fi
                    \else
                      \addcontentsline{toc}{chapter}{#2}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}
\def\@makechapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \normalfont
    \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter
        \begin{center}\Huge\bfseries \setlength{\fboxsep}{1em} \framebox[3em][c]{\thechapter}\end{center}%
        \vspace*{50\p@}%
        \begin{center}\LARGE\bfseries \parbox{0.8\textwidth}{\center #1} \end{center}\par\nobreak \vskip 40\p@
      \else
         \LARGE\bfseries #1\par\nobreak \vskip 40\p@
      \fi
    \fi
  }}
\def\@schapter#1{\if@twocolumn
                   \@topnewpage[\@makeschapterhead{#1}]%
                 \else
                   \@makeschapterhead{#1}%
                   \@afterheading
                 \fi}
\def\@makeschapterhead#1{%
  {\parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    \LARGE \bfseries #1\par\nobreak
    \vskip 40\p@
  }}

%% End of \chapter command

%% 4 --> Introduced standard figure width \figwidth and captionwidth \capwidth
%% Figures, tables and equations

\newlength\figwidth
\setlength\figwidth{0.8\textwidth}

\newlength\capwidth
\setlength\capwidth{0.95\textwidth}

%% 5 --> Bibliography name changed to References

%% Small caps References as labels for page headers
%% added \itemsep command to adjust vertical space between references
%% IMPORTANT NOTE: The references consist of one big list with many \bibitems...
%% VERY IMPORTANT: \def\bibname should be within the thebibliography environment.
%%                 It seems to be defined elsewhere as well (BibTeX?)

\newdimen\bibindent
\setlength\bibindent{1.5em}
\renewenvironment{thebibliography}[1]
    {\def\bibname{References}
     \section{\bibname}
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\itemsep 0em
            \settowidth\labelwidth{\@biblabel{#1}}%
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


%% 6 --> Titlepage modification to remove the date usually displayed

\if@titlepage
  \renewcommand\maketitle{\begin{titlepage}%
  \let\footnotesize\small
  \let\footnoterule\relax
  \let \footnote \thanks
  \null\vfil
  \vskip 60\p@
  \begin{center}%
    {\Huge \@title \par}%
%%    \vskip 3em%
%%    {\large
%%     \lineskip .75em%
%%      \begin{tabular}[t]{c}%
%%        \@author
%%      \end{tabular}\par}%
%%      \vskip 1.5em%
%%    {\large \@date \par}%       % Set date in \large size.
  \end{center}\par
  \@thanks
  \vfil\null
  \end{titlepage}%
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\else
\renewcommand\maketitle{\par
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hb@xt@1.8em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \thispagestyle{plain}\@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\def\@maketitle{%
  \newpage
  \null
  \vskip 2em%
  \begin{center}%
  \let \footnote \thanks
    {\LARGE \@title \par}%
    \vskip 1.5em%
    {\large
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
    \vskip 1em%
    {\large \@date}%
  \end{center}%
  \par
  \vskip 1.5em}
\fi

%% 7 --> Part command; consistent with the Chapter style....

\renewcommand\part{%
  \if@openright
    \clearpage\thispagestyle{empty}\cleardoublepage\thispagestyle{empty}
  \else
    \clearpage\thispagestyle{empty}
  \fi
  \thispagestyle{plain}%
  \if@twocolumn
    \onecolumn
    \@tempswatrue
  \else
    \@tempswafalse
  \fi
  \null\vfil
  \secdef\@part\@spart}

\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >-2\relax
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{Part~\thepart\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    \markboth{}{}%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >-2\relax
       \huge\bfseries \partname~\thepart
       \par
       \vskip 20\p@
     \fi
     \Huge \bfseries #2\par}%
    \@endpart}
\def\@spart#1{%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \Huge \bfseries #1\par}%
    \@endpart}
\def\@endpart{\vfil\newpage
              \if@twoside
                \null
                \thispagestyle{empty}%
                \newpage
              \fi
              \if@tempswa
                \twocolumn
              \fi}

%% 8 --> Appearance of footnotes changed [24/09/2001]

\renewcommand{\thefootnote}{\fnsymbol{footnote}}

%% 9 --> Remove dots in TOC [24/10/2001] Thanks to the tocloft documentation! [10/11/2001]

\renewcommand{\@dotsep}{10000} %% Default value is 4.5

%% 10 -> Extra table formatting added; array package + \extrarowheight defined [01/12/2001]

\setlength{\extrarowheight}{2pt}

%% 11 -> Fix \backmatter command [01/03/2002]

\renewcommand\backmatter{%
  \if@openright\clearpage\thispagestyle{empty}\cleardoublepage
  \else\clearpage
  \fi
  \thispagestyle{empty}%
  \@mainmatterfalse}

\endinput
