%% This is file `ipart.cls'
%%
%% LaTeX 2e class file for the processing of LaTeX2e files
%% of the following International Press journals:
%%
%% Statistics and Its Interface (SII)
%% Journal of Combinatorics (JOC)
%% Cambridge Journal of Mathematics (CJM)
%% Geometry, Imaging and Computing (GIC)
%% Communications in Information and Systems (CIS)
%% Annals of Mathematical Sciences and Applications (AMSA)
%%
%% Macros written by Vytas Statulevicius, VTeX, Lithuania
%% for International Press, U.S.A.
%% Please submit bugs or your comments to vytas@vtex.lt
%%
%% The original distribution is located at:
%% http://www.e-publications.org/ims/support
%%
%% This class file loads standart "article.cls" with appropriate 
%% settings and then style file "imsart.sty" with additional macros
%%
%% You are free to use this style file as you see fit, provided 
%% that you do not make changes to the file. 
%% If you DO make changes, you are required to rename this file.
%%
%% It may be distributed under the terms of the LaTeX Project Public
%% License, as described in lppl.txt in the base LaTeX distribution.
%% Either version 1.0 or, at your option, any later version.
%%
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%
%%
%% Bug fixes and changes: at end of file

% TeX programming: Vytas Statulevicius, VTeX, Lithuania, vytas@vtex.lt
% Requires Latex2e, ver.2000.06


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ipart}[2015/08/12 driver class for package imsart.sty]

% layout options:
\newif\if@siilayout \@siilayoutfalse

\DeclareOption{sii}{%
  \PassOptionsToClass{letter,10pt,twoside,twocolumn,leqno}{article}
  \PassOptionsToPackage{leqno}{amsmath}
  \AtEndOfPackage{\def\journal@id{-sii}}
  \AtBeginDocument{\def\journal@name{Statistics and Its Interface}}
  \AtBeginDocument{\def\journal@issn{ISSN: 1935-7516}}
  \AtBeginDocument{\def\journal@url{http://www.intlpress.com/SII/}}
  \AtEndOfPackage{\let\affiliation\@gobble}
  \@siilayouttrue
}


\newif\if@joclayout \@joclayoutfalse

\DeclareOption{joc}{%
  \PassOptionsToClass{letter,11pt,twoside,leqno}{article}
  \PassOptionsToPackage{leqno}{amsmath}
  \AtEndOfPackage{\def\journal@id{-joc}}
  \AtBeginDocument{\def\journal@name{Journal of Combinatorics}}
  \AtBeginDocument{\def\journal@issn{ISSN: 1097-1440}}
  \AtBeginDocument{\def\journal@url{http://www.intlpress.com/JOC/}}
  \AtEndOfPackage{\let\affiliation\@gobble}
  \@joclayouttrue
}

\DeclareOption{gic}{%
  \PassOptionsToClass{letter,11pt,twoside,leqno}{article}
  \PassOptionsToPackage{leqno}{amsmath}
  \AtEndOfPackage{\def\journal@id{-gic}}
  \AtBeginDocument{\def\journal@name{Geometry, Imaging and Computing}}
  \AtBeginDocument{\def\journal@issn{ISSN: 2328-8876}}
  \AtBeginDocument{\def\journal@url{http://intlpress.com/GIC/}}
  \AtEndOfPackage{\let\affiliation\@gobble}
  \@joclayouttrue
}

\DeclareOption{cjm}{%
  \PassOptionsToClass{letter,11pt,twoside,leqno}{article}
  \PassOptionsToPackage{leqno}{amsmath}
  \PassOptionsToPackage{autosecdot}{imsart}
  \AtEndOfPackage{\def\journal@id{-cjm}}
  \AtBeginDocument{\def\journal@name{Cambridge Journal of Mathematics}}
  \AtBeginDocument{\def\journal@issn{ISSN: 2168-0930}}
  \AtBeginDocument{\def\journal@eissn{ISSN: 2168-0949}}
  \AtBeginDocument{\def\journal@url{http://www.intlpress.com/CJM/}}
  \AtBeginDocument{\setattribute{bauthor}{style}{\rm}}
  \AtBeginDocument{\setattribute{beditor}{style}{\rm}}
  \AtEndOfPackage{\let\affiliation\@gobble}
  \@joclayouttrue
}

\DeclareOption{amsa}{%
  \PassOptionsToClass{letter,11pt,twoside,leqno}{article}
  \PassOptionsToPackage{leqno}{amsmath}
  \PassOptionsToPackage{autosecdot}{imsart}
  \AtEndOfPackage{\def\journal@id{-amsa}}
  \AtBeginDocument{\def\journal@name{Annals of Mathematical Sciences and Applications}}
  \AtBeginDocument{\def\journal@issn{ISSN: 2168-0930}}
  \AtBeginDocument{\def\journal@eissn{ISSN: 2168-0949}}
  \AtBeginDocument{\def\journal@url{http://intlpress.com/site/pub/pages/journals/items/amsa/_home/_main/index.html}}
  \AtBeginDocument{\setattribute{bauthor}{style}{\rm}}
  \AtBeginDocument{\setattribute{beditor}{style}{\rm}}
  \AtEndOfPackage{\let\affiliation\@gobble}
  \@joclayouttrue
}

\DeclareOption{cis}{%
  \PassOptionsToClass{letter,11pt,twoside,leqno}{article}
  \PassOptionsToPackage{leqno}{amsmath}
  \AtEndOfPackage{\def\journal@id{-cis}}
  \AtBeginDocument{\def\journal@name{Communications in Information and Systems}}
  \AtBeginDocument{\def\journal@issn{ISSN: 1526-7555}}
  \AtBeginDocument{\def\journal@eissn{ISSN: 2163-4548}}
  \AtBeginDocument{\def\journal@url{http://www.intlpress.com/CIS/}}
  \AtBeginDocument{\setattribute{bauthor}{style}{\rm}}
  \AtBeginDocument{\setattribute{beditor}{style}{\rm}}
  \AtEndOfPackage{\let\affiliation\@gobble}
  \@joclayouttrue
}


\PassOptionsToPackage{psamsfonts}{amssymb}
\PassOptionsToPackage{cmex10}{amsmath}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions*

\LoadClass{article}

\IfFileExists{imsart.sty}{}{\ClassError{imsart}{The complimentary style file "imsart.sty" is required}{
The complimentary style file "imsart.sty" is required\MessageBreak
You need to install file "imsart.sty" in your system\MessageBreak
File could be downloaded from http://www.e-publications.org/ims/support
}}


% Load additional macros and modifications for "article.cls"
\RequirePackage[addressatend,preprint,generic]{imsart}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ipart specific changes



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% sii layout
\if@siilayout

% Change to main font

\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xpt{12pt plus .3pt minus .3pt}%
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus2\p@
   \abovedisplayshortskip 6\p@ \@plus2\p@
   \belowdisplayshortskip 6\p@ \@plus2\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}


% Keitimai:

 \set@page@layout{44pc}{55pc}

% \setlength\headsep{-12\p@}
 \setlength\footskip{24\p@}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ADDITIONAL PACKAGES

\if@twocolumn
  \RequirePackage{flushend}%
  \RequirePackage{stfloats}%
  \fnbelowfloat%
\fi


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% COMMON MACROS

% \raggedrightmargin{00mm}

\def\raggedrightmargin#1{%
  \let\\\@centercr\@rightskip #1 plus 1fil  \rightskip\@rightskip
  \leftskip\z@skip
  \parindent\z@\nohyphen}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\pagestyle{imsheadings} \thispagestyle{copyright}

\def\ps@copyright{\let\@mkboth\@gobbletwo%
  \def\@evenhead{\smash{\lower24\p@ \hbox to\textwidth{\copyright@size\copyright@text}}}%
  \let\@oddhead\@evenhead%
  \def\@oddfoot{\hfill\llap{\info@line}}%
  \let\@evenfoot\@oddfoot}

\def\ps@imsheadings{%
      \def\@evenfoot{\runninghead@size\hbox to18\p@{\pagenumber@size\thepage\hfill}\leftmark\hfill}%
      \def\@oddfoot{\runninghead@size\hfill\rightmark\hbox to18\p@{\hfill\pagenumber@size\thepage}}%
      \def\@evenhead{\hfill}%
      \def\@oddhead{\hfill}}

\pagestyle{imsheadings}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% FRONT MATTER DIMENSIONS
\setattribute{history}    {width} {\textwidth}

% FRONT MATTER STYLE
\setattribute{frontmatter} {style} {\raggedright}
\setattribute{title}       {style} {\raggedrightmargin{11pc}}
\setattribute{author}      {style} {\raggedrightmargin{11pc}}
\setattribute{history}     {style} {\centering}


% FRONT MATTER SKIPS
\setattribute{title}       {skip} {36\p@}
\setattribute{authors}     {skip} {16pt}
\setattribute{abstract}    {skip} {\medskipamount}
\setattribute{abstractname}{skip} {\hskip12\p@}
\setattribute{history}     {skip} {\medskipamount}

% FRONT MATTER FONTS 
\setattribute{title}      {size} {\LARGE\sffamily\bfseries}
\setattribute{author}     {size} {\large\scshape}
\setattribute{address}    {size} {\normalsize\sffamily}
\setattribute{abstract}   {size} {\normalsize\upshape\mdseries}
\setattribute{keyword}    {size} {\normalsize\upshape\mdseries}
\setattribute{keywordname}{size} {\scshape}
\setattribute{history}    {size} {\normalsize\itshape\mdseries\parindent\z@}
\setattribute{copyright}  {size} {\sffamily\small\raggedright}
\setattribute{runninghead}{size} {\small\itshape}
\setattribute{pagenumber} {size} {\small\upshape}
\setattribute{thebibliography}{size}{\footnotesize}

% TEXT, etc.

\setattribute{copyright}  {text} {\url@fmt{}{\scshape}{\journal@name}{\journal@url}\enskip%
                                  \@ifnonempty{\@volume\ (\@pubyear) \@pagerange}%
                                  \print@copyrightowner\break
                                }%

\def\abstractname{}

% HISTORY
\setattribute{history}  {postfix} {}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% put@fmt@data

\def\put@fmt@data{%
%  \copyright@fmt%
%  \@thanks%
%  \abstract@fmt%
%  \keyword@fmt%
%  \history@fmt
  \vskip18\p@
  \tableofcontents@fmt}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% frontmatter@cmd

\def\frontmatter@cmd{
  \write@pdfinfo{\hy@subject}{\journal@name, \@copyrightyear, \@volume, \@issue, \@pagerange}
  \ifvoid\abstract@box\else
    \hrule height1\p@
    \@tempswatrue
  \fi
  \abstract@fmt
  \keyword@fmt
  \if@tempswa
    \medskip
    \hrule height1\p@
  \fi
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% firstpager@cmd

  \def\firstpage@cmd{%
      \@ifundefined{@arxiv}{}{\safe@footnotetext{\url@fmt{arXiv: }{}{\@arxiv}{\arxiv@base\@arxiv}}}%
      \markboth{\@runauthor}{\@runtitle}%
      \@thanks
    }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% pubyear, volume, paperno



\def\volume#1{\gdef\@volume{Volume #1}}
\def\issue#1{\gdef\@issue{Number #1}}

\def\pubyear#1{\gdef\@pubyear{#1}\gdef\@copyrightyear{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% \author@fmt


\def\addr@author@sep{}
\def\author@group{}

\def\author@fmt[#1]#2{%
  \stepcounter{author}%
  \author@fmt@init%
  \let\author@fmt@init\relax%
  \bgroup% 
     \def\degs##1{##1}\def\fnms##1{##1}\def\inits##1{##1}\def\snm##1{##1}\def\roles##1{##1}%
     \@tempcnta=\author@num\relax%
     \ifnum\c@author=\@tempcnta \def\author@sep{ and }\else \def\author@sep{, }\fi%
     \ifnum\c@author=1\addto@authors@list{#2}\else\addto@authors@list{\author@sep #2}\fi%
     \addto@authors@group{#2}%
     \def\fnms##1{{\fnms@size{##1}}}\def\snm##1{\snm@size{##1}}%
     \noindent#2\thanksref{#1}%
  \egroup}


\def\addto@authors@group#1{%
  \begingroup%
    \no@harm%
    \def\@act{\xdef\author@group{\author@group\addr@author@sep #1}}\@act%
  \endgroup%
  \gdef\addr@author@sep{, }}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% \address@fmt

\def\address@fmt[#1]#2{%
  \stepcounter{address}%
  \def\@act{\expandafter\xdef\csname @author@\the\c@address\endcsname{\author@group}}\@act%
  \def\addr@author@sep{}%
  \expandafter\protected@xdef\csname address@ref@#1\endcsname{\the\c@address}%
  \expandafter\newtoks\csname @address@\the\c@address\endcsname%
  \expandafter\expandafter\expandafter\global\csname @address@\the\c@address\endcsname={#2}%
  \xdef\author@group{}%
  \ignorespaces}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% \printaddressnum

\def\printaddressnum#1{%
\xdef\@tmp{#1}%
\bgroup
\@ifundefined{@address@#1}{\@latex@error{Error: there are no address with number '#1'!}{??}}{
  \address@size
  \ifnum#1=1%
     \ifnum\c@author=1\relax%
       \safe@phantomsection{\addcontentsline{toc}{section}{Author's addresses}}%
     \else%
       \safe@phantomsection{\addcontentsline{toc}{section}{Authors' addresses}}%
     \fi%
  \fi%
  \begin{tabular}[t]{@{}l@{}}
  \expandafter\expandafter\expandafter\csname @author@\@tmp\endcsname\\
  \expandafter\expandafter\expandafter\the\csname @address@\@tmp\endcsname
  \end{tabular}}
\egroup
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ABSTRACT

\def\@abstract[#1]{%
     \setkeys{abstract}{#1}%
     \global\setbox\abstract@box=\vbox\bgroup%
     \hsize=\columnwidth%
     \ifvoid\abstract@box\else%
        \unvbox\abstract@box%
        \vskip\abstract@skip%
     \fi%
     \abstract@style%
     \abstract@size%
     \parindent\sv@parindent%
     \noindent\hskip\abstract@indent{\abstractname@size\abstractname\abstractname@skip}\ignorespaces}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% KEYWORDS

\gdef\@keyword[#1]{%
  \do@option@list{keyword}{#1}%
  \def\keyword@name{\csname keyword@\keyword@class\endcsname}%
  \let\kwd@sep\relax
%
  \global\setbox\keyword@box=\vbox\bgroup%
     \ifvoid\keyword@box\else%
        \unvbox\keyword@box
        \vskip-\pre@kwd@depth\vtop to\pre@kwd@depth{}%
     \fi
     \hsize=\columnwidth%
     \keyword@style%
     \keyword@size%
     \parindent\sv@parindent%
     \noindent\hskip\keyword@indent{\keywordname@size\keyword@name}\space\hskip.1pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% HISTORY: received, revised, accepted

\def\history@fmt{%
  \ifcase\history@exist\else%
  \bgroup
    \nobreak%
    \vskip\history@skip%
    \nobreak%
    \history@style%
    \history@size%
    \leavevmode
    \history@prefix
    \ifx\@received\empty@data \else
      \received@prefix\@received \received@postfix%
    \fi
    \ifx\@revised\empty@data \else
      \revised@prefix\@revised \revised@postfix%
    \fi
    \ifx\@accepted\empty@data \else
      \accepted@prefix\@accepted \accepted@postfix%
    \fi
  \history@postfix\par%
  \egroup%
  \gdef\history@exist{0}
\fi
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% FOOTNOTE

\renewcommand\@makefntext[1]{%
    \@makefnmark #1}

\def\footnoterule{\kern-5\p@ \hrule width\columnwidth height .2pt depth0pt
  \kern 4.8\p@}                 % The \hrule is hairline


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% section, subsection etc.

\setcounter{secnumdepth}{4}

\renewcommand\section{\@startsection {section}{1}{\z@}%
                                     {\medskipamount}%
                                     {\smallskipamount}%
                                     {\centering\sffamily\large\bfseries\mathversion{bold}\MakeUppercase}}

\renewcommand\subsection{\@startsection {subsection}{2}{12\p@}%
                                     {\smallskipamount}%
                                     {\smallskipamount}%
                                     {\raggedright\sffamily\large\bfseries\mathversion{bold}}}

\renewcommand\subsubsection{\@startsection{subsubsection}{3}{12\p@}%
                                     {\smallskipamount}%
                                     {\smallskipamount}%
                                     {\sffamily}}

\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                     {\smallskipamount}%
                                     {-1em}%
                                     {\itshape}}

\def\subsection@numbersep{}

\def\subsubsection@numbersep{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% appendix

  \renewcommand\appendix{\par
    \let\old@section\section%
    \def\section{\@ifnextchar*{\@appsectionstar}{\@appsectionnostar}}%
    \def\section@prefix{\appendixname\ }%
    \def\section@numbersep{.}%
    \setcounter{section}{0}%
    \setcounter{subsection}{0}%
    \gdef\thesection{\@Alph\c@section}}


  \def\@appsectionnostar#1{%
     \ifx.#1.% 
       \def\section@numbersep{}\old@section[\appendixname\ \thesection]{}%
     \else%
       \def\section@numbersep{.}\old@section{#1}%
     \fi}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% table, figure

\def\@floatboxreset{%
        \reset@font
        \@setminipage
        \singlespacing
        \small
        \centering}

% various rules

   \let\savehline\hline
   \def\thline{\noalign{\vskip3pt}\savehline\noalign{\vskip3pt}}%
   \def\fhline{\noalign{\vskip1pt}\savehline\noalign{\vskip7pt}}%
   \def\bhline{\noalign{\vskip3pt}\noalign{\global\arrayrulewidth=1\p@}\savehline\noalign{\global\arrayrulewidth=.5\p@}\noalign{\vskip3pt}}%
   \def\lhline{\noalign{\vskip3pt}\noalign{\global\arrayrulewidth=.3\p@}\savehline\noalign{\global\arrayrulewidth=.5\p@}\noalign{\vskip3pt}}


\renewcommand\figurename{Figure}

\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \normalsize\itshape\sffamily\centering
    #1.\enskip #2\par
  \vskip\belowcaptionskip}


\let\@maketablecaption\@makecaption

\let\@makefigurecaption\@makecaption

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% \ead, \printead

\def\email@text{{E-mail address:} }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% \printaddresses

\def\printaddresses{%
\@tempcnta=0%
\bgroup\parindent\z@
\@whilenum{\@tempcnta<\c@address}%
  \do{%
    \advance\@tempcnta\@ne
    \vskip\address@skip%
    \expandafter\printaddressnum{\the\@tempcnta}\par%
     }%
\egroup
\null
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% \printhistory

\def\set@history@fmt{
  \let\sv@thebibliography\thebibliography
  \def\thebibliography{\history@fmt\sv@thebibliography}
}


\AtBeginDocument{\set@history@fmt}

\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% joc layout
\newif\if@put@toc \@put@tocfalse


\if@joclayout

% Change to main font

\renewcommand\normalsize{%
  \@setfontsize\normalsize{11\p@}{13.5\p@ plus .5\p@ minus .5\p@}%
  \abovedisplayskip 12\p@ \@plus 2\p@ \@minus2\p@
  \abovedisplayshortskip 3\p@ \@plus 3\p@ \@minus1\p@
  \belowdisplayshortskip 6\p@ \@plus 3\p@ \@minus2\p@
  \belowdisplayskip \abovedisplayskip
  \let\@listi\@listI}
\normalsize

\renewcommand\small{%
  \@setfontsize\small{9\p@}{11\p@ plus .5\p@ minus .5\p@}%
  \abovedisplayskip 6\p@ \@plus1\p@ \@minus1\p@
  \abovedisplayshortskip 3\p@ \@plus 2\p@ \@minus1\p@
  \belowdisplayshortskip 2\p@ \@plus 1\p@ \@minus1\p@
  \def\@listi{\leftmargin\leftmargini
              \listparindent \parindent
              \topsep 6\p@ \@plus2\p@ \@minus1\p@
              \parsep \z@ \itemsep \z@}%
  \belowdisplayskip \abovedisplayskip
  }

\renewcommand\footnotesize{%
  \@setfontsize\footnotesize{10\p@}{12\p@ plus .5\p@ minus .5\p@}%
  \abovedisplayskip 10\p@ \@plus2\p@ \@minus2\p@
  \abovedisplayshortskip \z@ \@plus \p@
  \belowdisplayshortskip 1\p@ \@plus2\p@ \@minus2\p@
  \def\@listi{\leftmargin\leftmargini
              \listparindent 1em
              \topsep 5\p@ \@plus 2\p@ \@minus 1\p@
              \parsep \z@ \itemsep \z@}%
  \belowdisplayskip \abovedisplayskip
  }


\def\scriptsize{\@setfontsize\scriptsize{7\p@}{9\p@}}
\def\tiny{\@setfontsize\tiny{6\p@}{7\p@}}
\def\little{\@setfontsize\little{5\p@}{6\p@}}
\def\large{\@setfontsize\large{12\p@}{14\p@}}
\def\Large{\@setfontsize\Large{14\p@}{16\p@}}
\def\LARGE{\@setfontsize\LARGE{16\p@}{18\p@}}
\def\huge{\@setfontsize\huge{24\p@}{26\p@}}
\def\Huge{\@setfontsize\Huge{25\p@}{27\p@}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% dimensions
% Page settings. Production settings are in ipart-joc.cnf

 \setlength\parindent{18pt}
 \setlength\headsep{22\p@}
 \setlength\footskip{24\p@}

  \setlength\smallskipamount{7\p@ \@plus 1\p@ \@minus 1\p@}
  \setlength\medskipamount  {13.5\p@ \@plus 3\p@ \@minus 3\p@}
  \setlength\bigskipamount  {21\p@ \@plus 3\p@ \@minus 3\p@}


 \set@page@layout{30pc}{537\p@}


% FRONT MATTER DIMENSIONS
\setattribute{abstract}   {width} {24pc}
\setattribute{keyword}    {width} {24pc}
\setattribute{history}    {width} {\textwidth}

% FRONT MATTER SKIPS
\setattribute{title}       {skip} {12\p@}
\setattribute{abstract}    {skip} {32\p@}
\setattribute{abstractname}{skip} {}


% FRONT MATTER FONTS 
\setattribute{title}      {size} {\LARGE}
\setattribute{author}     {size} {\normalsize\scshape}
\setattribute{address}    {size} {\footnotesize\scshape}
\setattribute{abstract}   {size} {\footnotesize\upshape\mdseries}
\setattribute{abstractname}{size} {\bfseries}
\setattribute{keyword}    {size} {\small\upshape\mdseries}
\setattribute{keywordname}{size} {\scshape}
\setattribute{history}    {size} {\footnotesize\scshape\mdseries\parindent\z@}
\setattribute{copyright}  {size} {\fontsize{8}{10}\selectfont\raggedright}
\setattribute{runninghead}{size} {\normalsize}
\setattribute{pagenumber} {size} {\normalsize\upshape}
\setattribute{thebibliography}{size}{\normalsize}

\setattribute{frontmatter} {cmd}  {\write@pdfinfo{\hy@subject}{\journal@name, \@copyrightyear, \@volume, \@issue, \@pagerange}
                                   \vskip23\p@ plus 3\p@ minus 3\p@
                                   \@afterindentfalse\@afterheading}


% TEXT, etc.
\setattribute{copyright}  {text} {\url@fmt{}{\scshape}{\journal@name}{\journal@url}%
                                 \print@copyrightowner\break%
                                  \@ifundefined{volume@title}{}{\textbf{\volume@title}\break}%
                                  \@ifnonempty{\@volume, \@issue, \@pagerange, \@pubyear\break}%
                                  \doi@text}%
\def\abstractname{}

% HISTORY
\setattribute{history}  {postfix} {}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\put@fmt@data{%
  \copyright@fmt%
  \@thanks%
  \abstract@fmt%
  \keyword@fmt%
  \tableofcontents@fmt}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% pubyear, volume, paperno



\def\volume#1{\gdef\@volume{Volume #1}}
\def\issue#1{\gdef\@issue{Number #1}}

\def\pubyear#1{\gdef\@pubyear{#1}\gdef\@copyrightyear{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% \author@fmt


\def\addr@author@sep{}
\def\author@group{}

\def\author@fmt[#1]#2{%
  \stepcounter{author}%
  \author@fmt@init%
  \let\author@fmt@init\relax%
  \bgroup% 
     \def\degs##1{##1}\def\fnms##1{##1}\def\inits##1{##1}\def\snm##1{##1}\def\roles##1{##1}%
     \@tempcnta=\author@num\relax%
     \ifnum\c@author=\@tempcnta \def\author@sep{ and }\else \def\author@sep{, }\fi%
     \ifnum\c@author=1\addto@authors@list{#2}\else\addto@authors@list{\author@sep #2}\fi%
     \addto@authors@group{#2}%
     \def\fnms##1{{\fnms@size{##1}}}\def\snm##1{\snm@size{##1}}%
     \noindent#2\thanksref{#1}%
  \egroup}


\def\addto@authors@group#1{%
  \begingroup%
    \no@harm%
    \def\@act{\xdef\author@group{\author@group\addr@author@sep #1}}\@act%
  \endgroup%
  \gdef\addr@author@sep{, }}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% \address@fmt

\def\address@fmt[#1]#2{%
  \stepcounter{address}%
  \def\@act{\expandafter\xdef\csname @author@\the\c@address\endcsname{\author@group}}\@act%
  \def\addr@author@sep{}%
  \expandafter\protected@xdef\csname address@ref@#1\endcsname{\the\c@address}%
  \expandafter\newtoks\csname @address@\the\c@address\endcsname%
  \expandafter\expandafter\expandafter\global\csname @address@\the\c@address\endcsname={#2}%
  \xdef\author@group{}%
  \ignorespaces}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% \printaddressnum

\def\printaddressnum#1{%
\xdef\@tmp{#1}%
\bgroup
\@ifundefined{@address@#1}{\@latex@error{Error: there are no address with number '#1'!}{??}}{
  \address@size
%  \ifnum#1=1%
%    \safe@phantomsection{\addcontentsline{toc}{section}{Author's addresses}}%
%  \fi%
  \begin{tabular}[t]{@{}l@{}}
  \expandafter\expandafter\expandafter\csname @author@\@tmp\endcsname\\
  \expandafter\expandafter\expandafter\the\csname @address@\@tmp\endcsname
  \end{tabular}}
\egroup
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TOC in "article" class is a mess:

\if@changetoc

% problema: \tableofcontents reikia patraukti is fm@box, nes dingsta tarpas tarp eiluciu

  \newcommand\sv@tableofcontents{%
%      \bigskip
      \bfseries
      \@starttoc{toc}%
      }

  \renewcommand\tableofcontents{\global\@put@toctrue}

  \def\firstpage@cmd{%
     \if@put@toc
       \bigskip
       \bfseries
       \@starttoc{toc}%
     \fi
  }

  \def\enable@tableofcontents{\global\let\tableofcontents\sv@tableofcontents}

  \g@addto@macro\endfrontmatter\enable@tableofcontents

  \renewcommand*\l@section{\@dottedtocline{1}{\z@}{1.5em}}
  \renewcommand\@dotsep{10000}

  \def\@dottedtocline#1#2#3#4#5{%
    \ifnum #1>\c@tocdepth \else
      \smallbreak
      {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
       \parindent #2\relax\@afterindenttrue
       \interlinepenalty\@M
       \leavevmode
       \@tempdima #3\relax
       \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
       {#4}\nobreak
       \leaders\hbox{$\m@th
          \mkern \@dotsep mu\hbox{.}\mkern \@dotsep
          mu$}\hfill
       \nobreak
       \hb@xt@\@pnumwidth{\hfil #5}%
       \par}%
    \fi}


\fi



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% section, subsection etc.

\setcounter{secnumdepth}{4}

\renewcommand\section{\@startsection {section}{1}{\z@}%
                                     {-\medskipamount}%
                                     {\medskipamount}%
                                     {\centering\large\bfseries\mathversion{bold}}}

\renewcommand\subsection{\@startsection {subsection}{2}{\z@}%
                                     {-\medskipamount}%
                                     {\medskipamount}%
                                     {\centering\bfseries\mathversion{bold}}}

\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-\medskipamount}%
                                     {-1em}%
                                     {\mathversion{bold}\bfseries}}

\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                     {\medskipamount}%
                                     {-1em}%
                                     {\itshape}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% appendix

  \renewcommand\appendix{\par
    \let\old@section\section%
    \def\section{\@ifnextchar*{\@appsectionstar}{\@appsectionnostar}}%
    \def\section@prefix{\appendixname\ }%
    \def\section@numbersep{.}%
    \setcounter{section}{0}%
    \setcounter{subsection}{0}%
    \gdef\thesection{\@Alph\c@section}}


  \def\@appsectionnostar#1{%
     \ifx.#1.% 
       \def\section@numbersep{}\old@section[\appendixname\ \thesection]{}%
     \else%
       \def\section@numbersep{.}\old@section{#1}%
     \fi}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% table, figure


\newdimen\tablewidth 
\tablewidth\textwidth

\long\def\@maketablecaption#1#2{%
    \centering%
    \parbox[b]{\tablewidth}{\normalsize #1: #2\phantom{y}\par}\par%
    \vskip\belowcaptionskip}


\def\@floatboxreset{%
        \reset@font
        \@setminipage
        \singlespacing
        \footnotesize
        \centering}

% various rules

   \let\savehline\hline
   \def\thline{\noalign{\vskip3pt}\savehline\noalign{\vskip3pt}}%
   \def\fhline{\noalign{\vskip1pt}\savehline\noalign{\vskip7pt}}%
   \def\bhline{\noalign{\vskip3pt}\noalign{\global\arrayrulewidth=1\p@}\savehline\noalign{\global\arrayrulewidth=.5\p@}\noalign{\vskip3pt}}%
   \def\lhline{\noalign{\vskip3pt}\noalign{\global\arrayrulewidth=.3\p@}\savehline\noalign{\global\arrayrulewidth=.5\p@}\noalign{\vskip3pt}}


\renewcommand\figurename{Figure}

\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \normalsize
  \sbox\@tempboxa{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% thebibliography, loading natbib

\def\set@natbib{%
  \let\bibfont\thebibliography@size
  \setlength\bibsep{6\p@}}


\if@load@natbib
   \set@natbib
\else 
  \g@addto@macro\@openbib@code{\itemsep6\p@}
\fi



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% arXiv
\def\arxiv#1{%
  \gdef\@arxiv{#1}%
   \AtBeginDocument{\safe@footnotetext{\url@fmt{arXiv: }{}{#1}{\arxiv@base\@arxiv}}}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% \ead, \printead

\def\email@text{\textit{E-mail address:} }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% \printaddresses

\def\printaddresses{%
  \@tempcnta=0%
  \bgroup\parindent\z@
  \@whilenum{\@tempcnta<\c@address}%
    \do{%
      \advance\@tempcnta\@ne
      \vskip\address@skip%
      \expandafter\printaddressnum\expandafter{\the\@tempcnta}\par%
       }%
  \egroup
  \history@fmt
  \null
  }


\fi


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% joc layout: end

\def\copyright@fmt{}
\def\copyrightowner@fmt#1{{\textcopyright\space\scshape #1}}
\def\print@copyrightowner{\hfill\if!\copyrightowner@text!\else\copyrightowner@fmt{\copyrightowner@text}\fi}%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% input .cnf

\AtEndOfPackage{\@input{ipart\journal@id.cnf}}

\endinput
%%
%% History:
2014.06.03 - fixed problem with TOC in JOC layout
2014.05.23 - CJM: autosecdot option set
2014.04.18 - CIS layout added
2014.01.30 - GIC layout added
2013.01.17 - CJM layout small fix
2012.12.12 - CJM layout added
2011.03.20 - small fix: added \let\@makefigurecaption\@makecaption
2010.03.08 - JOC layout added
2008.03.18 - Author's addresses bookmark fixed
2008.05.26 - new twocolumn layout
2008.05.09 - textheight changed from 517pt to 543pt
2008.04.04 - "." removed after history line
2008.03.19 - bug with abstract fixed;
2008.03.07 - address formatting rewritten;

