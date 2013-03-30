\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ar2e}[1997/08/13 v1.0 Standard LaTeX document class]
\newcommand\@ptsize{}
\newif\if@restonecol
\newif\if@titlepage
\@titlepagefalse
\newif\if@openbib
\@openbibfalse
\DeclareOption{a4paper}
   {\setlength\paperheight {297mm}%
    \setlength\paperwidth  {210mm}}
\DeclareOption{a5paper}
   {\setlength\paperheight {210mm}%
    \setlength\paperwidth  {148mm}}
\DeclareOption{b5paper}
   {\setlength\paperheight {250mm}%
    \setlength\paperwidth  {176mm}}
\DeclareOption{letterpaper}
   {\setlength\paperheight {11in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{legalpaper}
   {\setlength\paperheight {14in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{executivepaper}
   {\setlength\paperheight {10.5in}%
    \setlength\paperwidth  {7.25in}}
\DeclareOption{landscape}
   {\setlength\@tempdima   {\paperheight}%
    \setlength\paperheight {\paperwidth}%
    \setlength\paperwidth  {\@tempdima}}
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\DeclareOption{titlepage}{\@titlepagetrue}
\DeclareOption{notitlepage}{\@titlepagefalse}
\DeclareOption{onecolumn}{\@twocolumnfalse}
\DeclareOption{twocolumn}{\@twocolumntrue}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}}
\DeclareOption{openbib}{\@openbibtrue}
\ExecuteOptions{letterpaper,10pt,onecolumn,final,twoside}
\ProcessOptions
%\input{size1\@ptsize.clo}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xipt{13pt}
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize
\newcommand\small{%
   \@setfontsize\small\@xpt{12}%
   \abovedisplayskip 8.5\p@ \@plus3\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus2\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep \z@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\footnotesize{%
   \@setfontsize\footnotesize\@ixpt{11}%
   \abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 3\p@ \@plus\p@ \@minus\p@
               \parsep \z@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\scriptsize{\@setfontsize\scriptsize\@viiipt\@xpt}
\newcommand\tiny{\@setfontsize\tiny\@vpt\@vipt}
\newcommand\large{\@setfontsize\large\@xiipt{14}}
\newcommand\Large{\@setfontsize\Large\@xivpt{18}}
\newcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
\newcommand\huge{\@setfontsize\huge\@xxpt{25}}
\newcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}
%
\setlength\parindent{1em}
\setlength\headheight{10\p@}
\setlength\headsep   {12\p@}
\setlength\topskip   {10\p@}
\setlength\footskip{30\p@}
\setlength\maxdepth{.5\topskip}
\setlength\@maxdepth\maxdepth
\setlength\textwidth{32pc}\advance\hoffset2pc
\setlength\textheight{54pc}\advance\voffset-5pc

\setlength\oddsidemargin{-2pc}
\setlength\evensidemargin{7pc}
\setlength\topmargin{4pc}
\setlength\marginparwidth{130\p@}
\setlength\marginparsep{11\p@}
\setlength\marginparpush{5\p@}

\setlength\footnotesep{6.65\p@}
\setlength{\skip\footins}{9\p@ \@plus 4\p@ \@minus 2\p@}
\setlength\floatsep    {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\textfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\intextsep   {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dblfloatsep    {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dbltextfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\@fptop{0\p@ \@plus 1fil}
\setlength\@fpsep{8\p@ \@plus 2fil}
\setlength\@fpbot{0\p@ \@plus 1fil}
\setlength\@dblfptop{0\p@ \@plus 1fil}
\setlength\@dblfpsep{8\p@ \@plus 2fil}
\setlength\@dblfpbot{0\p@ \@plus 1fil}
\setlength\partopsep{0\p@}
\def\@listI{\leftmargin\leftmargini
            \parsep \z@
            \topsep 8\p@ \@plus2\p@ \@minus4\p@
            \itemsep4\p@ \@plus2\p@ \@minus\p@}
\let\@listi\@listI
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    4\p@ \@plus2\p@ \@minus\p@
              \parsep \z@
              \itemsep   \parsep}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    2\p@ \@plus\p@\@minus\p@
              \parsep    \z@
              \partopsep \p@ \@plus\z@ \@minus\p@
              \itemsep   \topsep}
\def\@listiv {\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep}
\def\@listv  {\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep}
\def\@listvi {\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{2}
\setlength\parskip{0\p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\setcounter{topnumber}{1}
\renewcommand\topfraction{.1}
\setcounter{bottomnumber}{5}
\renewcommand\bottomfraction{.1}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.9}
\renewcommand\floatpagefraction{1}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.1}
\renewcommand\dblfloatpagefraction{.1}

\long\def\@makecaption#1#2{
 \vskip 10pt 
 \setbox\@tempboxa\hbox{#1: #2}
 \ifdim \wd\@tempboxa >\hsize #1: #2\par \else \hbox
to\hsize{\hfil\box\@tempboxa\hfil} 
 \fi}
\def\figurebox#1#2{\hfill\fboxsep0pt\fbox{\vbox to #1{\hsize#2\hskip#2}}\hfill}

\def\Caption{\refstepcounter\@captype \@dblarg{\@caption\@captype}}
\long\def\@caption#1[#2]#3{%
  \par
  \addcontentsline{\csname ext@#1\endcsname}{#1}%
    {\protect\numberline{\csname the#1\endcsname}{\ignorespaces #2}}%
  \begingroup
    \@parboxrestore
    \if@minipage
      \@setminipage
    \fi
    \normalsize
    \@makecaption{\csname fnum@#1\endcsname}{\ignorespaces #3}\par
  \endgroup}

\def\toprule{\hline}
\def\colrule{\hline}
\def\botrule{\hline}


\if@twoside
    \def\ps@headings{%
      \let\@oddfoot\@empty\let\@evenfoot\@empty
      \def\@evenhead{\thepage\hfil\slshape\leftmark}%
      \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
      \let\@mkboth\markboth
      \def\sectionmark##1{%
        \markboth {\uppercase{\ifnum \c@secnumdepth >\z@
            \thesection.\hskip 1em\relax\fi
            ##1}}{}}%
      \def\subsectionmark##1{%
        \markright {\ifnum \c@secnumdepth >\@ne
            \thesubsection\hskip 1em\relax \fi
            ##1}}}
\else
    \def\ps@headings{%
      \let\@oddfoot\@empty
      \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
      \let\@mkboth\markboth
      \def\sectionmark##1{%
        \markright {\uppercase{\ifnum \c@secnumdepth >\m@ne
            \thesection\hskip 1em\relax \fi
            ##1}}}}
\fi
%%%
\def\ps@plain{\let\@mkboth\@gobbletwo
\def\@oddhead{\hfill\footnotesize\@jname\ \@jyear\ 
\@jvol\qquad\@arinfo\hfill}\def\@oddfoot{\rm\hfil\thepage
\hfil}\let\@evenhead\@oddhead\let\@evenfoot\@oddfoot}
%
%%%
\def\jname#1{\gdef\@jname{#1}}
\def\jvol#1{\gdef\@jvol{#1}}
\def\jyear#1{\gdef\@jyear{#1}}
\def\ARinfo#1{\gdef\@arinfo{#1}}
\jname{}\jyear{}\jvol{}\ARinfo{}
%
\def\ps@myheadings{%
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@evenhead{\thepage\hfil\slshape\leftmark}%
    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
    \let\@mkboth\@gobbletwo
    \let\sectionmark\@gobble
    \let\subsectionmark\@gobble
    }
\if@titlepage
  \newcommand\maketitle{\begin{titlepage}%
  \let\footnotesize\small
  \let\footnoterule\relax
  \null\vfil
  \vskip 60\p@
  \begin{center}%
    {\LARGE \@title \par}%
    \vskip 3em%
    {\large
     \lineskip .75em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
      \vskip 1.5em%
    {\large \@date \par}%       % Set date in \large size.
  \end{center}\par
  \@thanks
  \vfil\null
  \end{titlepage}%
  \setcounter{footnote}{0}%
  \let\thanks\relax\let\maketitle\relax
  \gdef\@thanks{}\gdef\@author{}\gdef\@title{}}
\else
\newcommand\maketitle{\par
  \begingroup
    \renewcommand\thefootnote{\fnsymbol{footnote}}%
    \def\@makefnmark{\hbox to\z@{$\m@th^{\@thefnmark}$\hss}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hbox to1.8em{\hss$\m@th^{\@thefnmark}$}##1}%
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
  \let\thanks\relax
  \let\maketitle\relax\let\@maketitle\relax
  \gdef\@thanks{}\gdef\@author{}\gdef\@title{}}
\def\@maketitle{%
\newpage\null\vskip2em
\begin{center}{\LARGE\bf\@title \par}\vskip2em
{\large\sc\begin{tabular}[t]{@{}p{\textwidth}@{}}\@author\end{tabular}}\vskip2em
{\small\unvbox\keywordsbox\par}\end{center}\vskip 2em%
{\unvbox\abstractbox\par}
\tableofcontents %%%%this nullifies having a toc while preserving section numbering.  Remove % at beginning
%of line to reinstate toc%%%%
}
\fi
\def\affiliation#1{\\{\raggedright\upshape\normalsize\sl#1\par}\\[6pt]}
\def\@keywords{}
\newbox\keywordsbox
\newenvironment{keywords}{%
  \global\setbox\keywordsbox\vbox\bgroup\normalsize\noindent\@hangfrom{\bf Key Words\ }}{
		\egroup}
\def\@abstract{}
\newbox\abstractbox
\newenvironment{abstract}{\global\setbox\abstractbox\vbox\bgroup\parindent0pt\footnotesize
{\bf Abstract}\ \noindent}{\egroup}
\setcounter{secnumdepth}{3}
\newcounter {part}
\newcounter {section}
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand\thepart          {\Roman{part}}
\renewcommand\thesection       {\arabic{section}}
\renewcommand\thesubsection    {\thesection.\arabic{subsection}}
\renewcommand\thesubsubsection {\thesubsection .\arabic{subsubsection}}
\renewcommand\theparagraph     {\thesubsubsection.\arabic{paragraph}}
\renewcommand\thesubparagraph  {\theparagraph.\arabic{subparagraph}}
\newcommand\part{\par
   \addvspace{4ex}%
   \@afterindentfalse
   \secdef\@part\@spart}

\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >\m@ne
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    {\parindent \z@ \raggedright
     \interlinepenalty \@M
     \reset@font
     \ifnum \c@secnumdepth >\m@ne
       \Large\bfseries \partname~\thepart
       \par\nobreak
     \fi
     \huge \bfseries #2%
     \markboth{}{}\par}%
    \nobreak
    \vskip 3ex
    \@afterheading}
\def\@spart#1{%
    {\parindent \z@ \raggedright
     \interlinepenalty \@M
     \reset@font
     \huge \bfseries #1\par}%
     \nobreak
     \vskip 3ex
     \@afterheading}
\def\@endpart{\vfil\newpage
              \if@twoside
                \hbox{}%
                \thispagestyle{empty}%
                \newpage
              \fi
              \if@tempswa
                \twocolumn
              \fi}
\newcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\reset@font\large\bfseries}}
\newcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\reset@font\large\bfseries}}
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     %{-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {.5ex \@plus .2ex}
				{-1.5em}
                                     {\reset@font\normalsize\sc}}
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\reset@font\normalsize\bfseries}}
\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\reset@font\normalsize\bfseries}}
\if@twocolumn
  \setlength\leftmargini  {2em}
\else
  \setlength\leftmargini  {2.5em}
\fi
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\if@twocolumn
  \setlength\leftmarginv  {.5em}
  \setlength\leftmarginvi {.5em}
\else
  \setlength\leftmarginv  {1em}
  \setlength\leftmarginvi {1em}
\fi
\setlength\leftmargin    {\leftmargini}
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\renewcommand\theenumi{\arabic{enumi}}
\renewcommand\theenumii{\alph{enumii}}
\renewcommand\theenumiii{\roman{enumiii}}
\renewcommand\theenumiv{\Alph{enumiv}}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{$\m@th\bullet$}
\newcommand\labelitemii{\normalfont\bfseries --}
\newcommand\labelitemiii{$\m@th\ast$}
\newcommand\labelitemiv{$\m@th\cdot$}
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}
\newenvironment{verse}
               {\let\\=\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item[]}
               {\endlist}
\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@}%
                \item[]}
               {\endlist}
\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item[]}
               {\endlist}
\newenvironment{titlepage}
    {%
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
      \thispagestyle{empty}%
      \if@compatibility
        \setcounter{page}{0}
      \else
        \setcounter{page}{1}%
      \fi}%
    {\if@restonecol\twocolumn \else \newpage \fi
      \setcounter{page}{1}%
    }
\newcommand\appendix{\par
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \renewcommand\thesection{\Alph{section}}}
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\renewcommand\theequation{\arabic{equation}}
\newcounter{figure}
\renewcommand\thefigure{\@arabic\c@figure}
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
\renewcommand\thetable{\@arabic\c@table}
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
    \hbox to\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\gdef\cal{\protect\pcal}
\newcommand{\pcal}{\@fontswitch{\relax}{\mathcal}}
\gdef\mit{\protect\pmit}
\newcommand{\pmit}{\@fontswitch{\relax}{\mathnormal}}
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg {2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{2}
\newcommand\tableofcontents{%
    \par\addvspace{24pt plus3pt minus3pt}%
    \noindent{\normalsize\contentsname}%
    \vskip6pt
    \@starttoc{toc}}
\def\numberline#1{}
\newcommand\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{\@secpenalty}%
    \addvspace{2.25em \@plus\p@}%
    \begingroup
      \setlength\@tempdima{3em}%
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries #1\hfil \hbox to\@pnumwidth{\hss #2}}\par
       \nobreak
       \if@compatibility
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}
      \fi
    \endgroup
  \fi}
\newcommand\l@section[2]{%
  \ifnum \c@tocdepth >\z@
    \addpenalty{\@secpenalty}%
    \addvspace{1.0em \@plus\p@}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode\small
      #1\nobreak\leaders\hbox{$\m@th \mkern \@dotsep mu.\mkern \@dotsep
       mu$}\hfill \nobreak\hbox to\@pnumwidth{\hss #2}\par
    \endgroup
  \fi}
\newcommand\l@subsection[2]{%
  \ifnum \c@tocdepth > 1
    \addpenalty{\@secpenalty}%
    \setlength\@tempdima{14pt}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leftskip\@tempdima\footnotesize
      \leavevmode{\itshape#1}\nobreak\leaders\hbox{$\m@th \mkern \@dotsep mu.\mkern \@dotsep
       mu$}\hfill \nobreak\hbox to\@pnumwidth{\hss #2}\par
    \endgroup
  \fi}
%\newcommand\l@subsection   {\@dottedtocline{2}{1.5em}{2.3em}}
\newcommand\l@subsubsection{\@dottedtocline{3}{3.8em}{3.2em}}
\newcommand\l@paragraph    {\@dottedtocline{4}{7.0em}{4.1em}}
\newcommand\l@subparagraph {\@dottedtocline{5}{10em}{5em}}
\newcommand\listoffigures{%
    \section*{\listfigurename
      \@mkboth{\uppercase{\listfigurename}}%
              {\uppercase{\listfigurename}}}%
    \@starttoc{lof}%
    }
\newcommand\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand\listoftables{%
    \section*{\listtablename
      \@mkboth{\uppercase{\listtablename}}{\uppercase{\listtablename}}}%
    \@starttoc{lot}%
    }
\let\l@table\l@figure
%
%%% Begin cite.sty
\edef\citenum{% to restore funny codes
  \catcode\string`\string ` \the\catcode\string`\`
  \catcode\string`\string ' \the\catcode\string`\'
  \catcode\string`\string = \the\catcode\string`\=
  \catcode\string`\string _ \the\catcode\string`\_
  \catcode\string`\string : \the\catcode\string`\:}
\catcode\string`\`12
\catcode`\'12
\catcode`\=12
\catcode`\_8
\catcode`\:12

%   Handle optional variations:  [verbose,nospace,space,nosort,noadjust],
%   \citeform,\citeleft,\citeright,\citemid,\citepunct,\citedash
%
%   Set defaults:

%   [ on the left.
\@ifundefined{citeleft}{\let\citeleft=[}{}

%   ] on the right:
\@ifundefined{citeright}{\let\citeright=]}{}

%   , (comma space) before note
\@ifundefined{citemid}{\def\citemid{,\penalty\@medpenalty\ }}{}

%   , (comma thin-space) between entries; [nospace] eliminates the space
\@ifundefined{citepunct}{
   \def\citepunct{,\penalty\@m\hskip.13emplus.1emminus.1em}%
 }{}

%   -- (endash) designating range of numbers:
% (using \hbox avoids easy \exhyphenpenalty breaks)
\@ifundefined{citedash}{\def\citedash{\hbox{--}\penalty\@m }}{}

%   Each number left as-is:
\@ifundefined{citeform}{\def\citeform{}}{}

%   Do not repeat warnings.  [verbose] reverses
\let\oc@verbo\relax

\@ifundefined{DeclareOption}{}%
{ \toks@={\def\oc@verbo#1#2#3#4{}}
  \DeclareOption{verbose}{\the\toks@}
  \DeclareOption{nospace}{\def\citepunct{,\penalty\@m}}
  \DeclareOption{space}{\def\citepunct{,\penalty\@highpenalty\ }}
  \DeclareOption{nosort}{\def\@addto@cite@list
   {\edef\@cite@list{\@cite@list \@celt{\@B@citeB}}}}
  \DeclareOption{sort}{\let\@cite@list\relax}% default!
  \DeclareOption{noadjust}{\let\cite@adjust\@empty}% Don't change spaces
  \DeclareOption{adjust}{\let\cite@adjust\relax}% adjust space before [ ]
  %\ProvidesPackage{cite}[1999/04/23 \space  v 3.8]
  \ProcessOptions }

%----------------------
% \citen uses \@nocite to ignore spaces after commas, and write the aux file
% \citation. \citen then loops over the citation tags, using \@make@cite@list
% to make a sorted list of numbers.  Finally, \citen executes \@citelist to
% compress ranges of numbers and print the list. \citen can be used by itself
% to give citation numbers without the brackets and other formatting; e.g.,
% "See also ref.~\citen{junk}."
%
\edef\citen{\noexpand\protect \expandafter\noexpand\csname citen \endcsname}

\@namedef{citen }#1{%
\begingroup
\let\@safe@activesfalse\@empty
\@nocite{#1}% ignores spaces, writes to .aux file, returns #1 in \@no@sparg
\@tempcntb\m@ne    % \@tempcntb tracks highest number
\let\@h@ld\relax   % nothing held from list yet
\let\@citea\@empty % no punctuation preceding first
\let\@celt\delimiter % an unexpandable, but identifiable, token
\def\@cite@list{}% % empty list to start
\@for \@citeb:=\@no@sparg\do{\@make@cite@list}% make a sorted list of numbers
% After sorted citelist is made, execute it to compress citation ranges.
\@tempcnta\m@ne    % no previous number
\let\@celt\@compress@cite \@cite@list % output number list with compression
\@h@ld % output anything held over
\endgroup}

% For each citation, check if it is defined and if it is a number.
% if a number: insert it in the sorted \@cite@list
% otherwise: output it immediately.
%
\def\@make@cite@list{%
 \expandafter\let \expandafter\@B@citeB
          \csname b@\@citeb\@extra@b@citeb \endcsname
 \ifx\@B@citeB\relax % undefined: output ? and warning
    \@citea {\bf{?}}\let\@citea\citepunct \G@refundefinedtrue
    \@warning {Citation `\@citeb' on page \thepage\space undefined}%
    \oc@verbo \global\@namedef{b@\@citeb\@extra@b@citeb}{?}%
 \else %  defined               % remove previous line to repeat warnings
    \ifcat _\ifnum\z@<0\@B@citeB _\else A\fi % a positive number, put in list
       \@addto@cite@list
    \else % citation is not a number, output immediately
       \@citea \citeform{\@B@citeB}%
       \let\@citea\citepunct
 \fi\fi}

% Regular definition for adding entry to cite list, with sorting

\@ifundefined{@addto@cite@list}{% sort option either declared or defaulted
  \def\@addto@cite@list{\@tempcnta\@B@citeB \relax
     \ifnum \@tempcnta>\@tempcntb % new highest, add to end (efficiently)
        \edef\@cite@list{\@cite@list \@celt{\@B@citeB}}%
        \@tempcntb\@tempcnta
     \else % arbitrary number: insert appropriately
        \edef\@cite@list{\expandafter\@sort@celt \@cite@list \@gobble @}%
     \fi}
%
% \@sort@celt inserts number (\@tempcnta) into list of \@celt{num} (#1{#2})
% \@celt must not be expandable; list should end with two vanishing tokens.
%
  \def\@sort@celt#1#2{\ifx \@celt #1% parameters are \@celt {num}
       \ifnum #2<\@tempcnta % number goes later in list
          \@celt{#2}%
          \expandafter\expandafter\expandafter\@sort@celt % continue
       \else % number goes here
          \@celt{\number\@tempcnta}\@celt{#2}% stop comparing
    \fi\fi}
}% end sort option definitions
{}% nosort definition is done in options processing

% Check if each number follows previous and can be put in a range
%
\def\@compress@cite#1{%  % This is executed for each number
  \advance\@tempcnta\@ne % Now \@tempcnta is one more than the previous number
  \ifnum #1=\@tempcnta   % Number follows previous--hold on to it
     \ifx\@h@ld\relax    % first pair of successives
        \edef\@h@ld{\@citea \noexpand\citeform{#1}}%
     \else               % compressible list of successives
        \def\@h@ld{\citedash \citeform{#1}}%
     \fi
  \else   %  non-successor -- dump what's held and do this one
     \@h@ld \@citea \citeform{#1}\let\@h@ld\relax
  \fi \@tempcnta#1\let\@citea\citepunct
}

\edef\cite{\noexpand\protect\expandafter\noexpand\csname cite \endcsname}

\@namedef{cite }{\@ifnextchar [{\@tempswatrue\@citex}{\@tempswafalse\@citex[]}}

%  Make \@citex refer to \citen:
%
\def\@citex[#1]#2{\@cite{\citen{#2}}{#1}}%

%  Replacement for \@cite which defines the formatting normally done
%  around the citation list.  Minor changes can
%  be done by changing \citeleft, \citemid, and \citeright; but in other
%  cases it might be necessary to redefine the whole macro.
%
\def\@cite#1#2{\leavevmode \cite@adjust
  \citeleft{#1\if@tempswa \citemid #2\fi
  \spacefactor\@m % punctuation in note doesn't affect outside
  }\citeright}

%  Put a penalty before the citation, and adjust the spacing: if no space
%  already or if there is extra space due to some punctuation, then change
%  to one inter-word space.
%
\@ifundefined{cite@adjust}{\def\cite@adjust{%
  \@tempskipa\lastskip \edef\@tempa{\the\@tempskipa}\unskip
  \ifnum\lastpenalty=\z@ \penalty\@highpenalty \fi
  \ifx\@tempa\@zero@skip \spacefactor1001 \fi % if no space before, set flag
  \ifnum\spacefactor>\@m \ \else \hskip\@tempskipa \fi}}{}

\edef\@zero@skip{\the\z@skip}

% \nocite: This is changed to ignore *ALL* spaces and be robust.  The
% parameter list, with spaces removed, is `returned' in \@no@sparg, which
% is used by \citen.
%
\edef\nocite{\noexpand\protect\expandafter\noexpand\csname nocite \endcsname}

\@namedef{nocite }#1{\@bsphack \@nocite{#1}%
 \@for \@citeb:=\@no@sparg\do{\@ifundefined{b@\@citeb\@extra@b@citeb}%
    {\G@refundefinedtrue\@warning{Citation `\@citeb' undefined}%
    \oc@verbo \global\@namedef{b@\@citeb\@extra@b@citeb}{?}}{}}%
 \@esphack}

\def\@nocite#1{\xdef\@no@sparg{\@ignsp#1 \! }% remove *ALL* spaces
 \if@filesw \immediate\write\@auxout {\string\citation {\@no@sparg}}\fi}

% for ignoring *ALL* spaces in the input.  This presumes there are no
% \outer tokens and no \if-\fi constructs in the parameter.  Spaces inside
% braces are retained.
%
\def\@ignsp#1 {\ifx\!#1\@empty\else #1\expandafter\@ignsp\fi}

\let\nocitecount\relax  % in case \nocitecount was used for drftcite

\@ifundefined{@extra@b@citeb}{\def\@extra@b@citeb{}}{}
%  in case no fancy bib package (chapterbib) defines this

\@ifundefined{G@refundefinedtrue}{\let\G@refundefinedtrue\relax}{}

\citenum % execute restore-catcodes

% Aliases:
\let\citenum\citen
\let\citeonline\citen
%%%%% end cite.sty
\def\@cite#1#2{({#1\if@tempswa , #2\fi})}
\def\@biblabel#1{#1.}
\newdimen\bibindent
\bibindent=1.5em
\newenvironment{thebibliography}[1]{%
			%\twocolumn
   \normalsize
   \section*{\normalsize\sc Literature Cited}%
   \def\@tempa{#1}%
   \ifx\@tempa\@empty
   \list{}{\def\@biblabel##1{##1}\labelwidth0pt\leftmargin1em\itemindent-1em\itemsep0pt\labelsep0pt
            \usecounter{enumiv}%
            \let\p@enumiv\@empty}%
   \else
   \list{\@biblabel{\arabic{enumiv}}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth\itemsep0pt
            \advance\leftmargin\labelsep
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\arabic{enumiv}}}%
   \fi
      \if@openbib
        \renewcommand\newblock{\par}
      \else
        \renewcommand\newblock{\hskip .11em \@plus.33em \@minus.07em}%
      \fi
      \sloppy\clubpenalty4000\widowpenalty4000%
      \sfcode`\.=\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\newcommand\newblock{}

\def\@lbibitem[#1]#2{\item[\@biblabel{}\hfill]\if@filesw
      {\let\protect\noexpand
       \immediate
       \write\@auxout{\string\bibcite{#2}{#1}}}\fi\ignorespaces}

\newenvironment{theindex}
               {\if@twocolumn
                  \@restonecolfalse
                \else
                  \@restonecoltrue
                \fi
                \columnseprule \z@
                \columnsep 35\p@
                \twocolumn[\section*{\indexname}]%
                \@mkboth{\uppercase{\indexname}}%
                        {\uppercase{\indexname}}%
                \thispagestyle{plain}\parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \let\item\@idxitem}
               {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand\@idxitem  {\par\hangindent 40\p@}
\newcommand\subitem   {\par\hangindent 40\p@ \hspace*{20\p@}}
\newcommand\subsubitem{\par\hangindent 40\p@ \hspace*{30\p@}}
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule width .4\columnwidth
  \kern 2.6\p@}
\long\def\@makefntext#1{%
    \parindent 1em%
    \noindent
    \hbox to 1.8em{\hss\@makefnmark}#1}
\newcommand\contentsname{CONTENTS}
\newcommand\listfigurename{List of Figures}
\newcommand\listtablename{List of Tables}
\newcommand\refname{References}
\newcommand\indexname{Index}
\newcommand\figurename{Figure}
\newcommand\tablename{Table}
\newcommand\partname{Part}
\newcommand\appendixname{Appendix}
\newcommand\abstractname{Abstract}
%%
\newenvironment{extract}{%
\par\leftskip1pc\rightskip1pc\small}{\par\leftskip0pc\rightskip0pc}
%
%%
\newcommand\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
\pagestyle{myheadings}
\pagenumbering{arabic}      % Arabic page numbers
\raggedbottom
\newdimen\nomenspace\nomenspace=6pt
\newdimen\tempdima\newbox\tempbox
\def\nomenentry#1#2{%
\setbox\tempbox=\vbox{\hsize\tempdim\raggedright#2\endgraf}
\hbox to 20pc{\hbox to\tempdima{#1\hfill}=\hskip3pt\vtop{\hsize\tempdim\raggedright#2\endgraf%
\ifdim\ht\tempbox>1.5\baselineskip\vskip2pt\fi}}}
\def\nomensection#1{\vskip12pt\noindent{#1}\vskip6pt}
\newenvironment{nomenclature}[1]{%
\lineskip0pt\normallineskip0pt\setbox\tempbox=\hbox{#1}%
\tempdima\wd\tempbox\advance\tempdima\nomenspace\advance\tempdima6pt
\tempdim20pc\advance\tempdim-\tempdima\advance\tempdim-8pt
\section*{Nomenclature}}{\par\addvspace{12pt plus 6pt}}
%
\newbox\tempbox
\newenvironment{note}{%
\setbox\tempbox\vbox\bgroup\hsize\marginparwidth\raggedright
\noindent{\bf Note to Editor:}\\}{%
\egroup\marginpar{\box\tempbox}}
%
% Added on 22nd, Jan-2001
%
\def\revise#1#2{\strikeout{#1}\ {{\bf #2}}}
%
\def\strikeout#1{$\setbox\z@\hbox{#1}\dp\z@\z@\m@th\raise2.5pt\hbox{\rlap{\vrule height.5pt width\wd\z@}}\hbox{\box\z@}$}
%
%
\if@twoside
\else
  \raggedbottom
\fi
\if@twocolumn
  \twocolumn
  \sloppy
  \flushbottom
\else
  \onecolumn
\fi
\endinput
%% 
%% End of file `areviews.cls'.