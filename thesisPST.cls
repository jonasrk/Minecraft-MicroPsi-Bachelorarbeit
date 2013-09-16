%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%         DOCUMENT CLASS for theses at the PST group
% 
% Authors:
%      Matthias Hölzl, 2006
%      Annabelle Klarl, 2011
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% USAGE:
%
% \usepackage{thesisPST}
%
%    Commands for the options of the title page:
%       \thesisType		% the type of this thesis (Master Thesis or Bachelor Thesis)
%       \thesisAuthor	% your name
%       \thesisProgram 	% your course of studies
%       \thesisTitle	% the title of this thesis
%       \subtitle		% the subtitle if any (otherwise leave blank)
%       \referee		% the referee of this thesis  
%                         (Prof. Dr. Martin Wirsing/
%                          Prof. Dr. Rolf Hennicker/
%                          Prof. Dr. Christian Prehofer/
%                          Prof. Dr. Mirco Tribastone)
%       \supervisor		% the supervisor of this thesis, normally someone of the PST team
%       \handInDate		% the hand in date
%
%
%    Commands for the creation of the title page:
%       \maketitlepage % creates the title page
%       \selbststaendigkeitserklaerung % create the Selbststaendigkeitserklaerung
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesPackage{thesisPST}[2011/09/15]
\typeout{--- `thesisPST' style for 'Theses at the PST group' ---}

\LoadClass[a4paper,11pt,twoside]{book}

% Encoding: Allows the usage of umlauts
\RequirePackage[utf8]{inputenc}
% Sets the language of this document
\RequirePackage[ngerman,english]{babel}
% Allows the usage of images (needed for the titlepage)
\RequirePackage{graphicx}
% Sets margins
\RequirePackage[includeheadfoot=true,inner=3cm,outer=3.5cm,top=2cm,bottom=2cm]{geometry}
\RequirePackage[format=plain,labelsep=colon,labelfont={normalfont,small,bf},font={small,sl},margin=.5cm, indention=.5cm]{caption} % for special captions

\RequirePackage{hyperref}

\setcounter{secnumdepth}{3} % sets numbering of subsubsections
\setcounter{tocdepth}{3} % shows subsubsections in table of contents

% for the appendices (page inserts a special appendices page, "title" writes Appendix in front of the chapter name, "titletoc" writes Appendix in front of the chapter name in the TOC, "header" writes Appendix in front of the chapter name in the head)
\usepackage[title,titletoc,header]{appendix} 

\makeatletter

\newcommand{\thesisType}[1]{\newcommand{\@thesisType}{#1}}
\newcommand{\thesisProgram}[1]{\newcommand{\@thesisProgram}{#1}}
\newcommand{\thesisTitle}[1]{\newcommand{\@thesisTitle}{#1}}
\newcommand{\subtitle}[1]{\newcommand{\@subtitle}{#1}}
\newcommand{\referee}[1]{\newcommand{\@referee}{#1}}
\newcommand{\supervisor}[1]{\newcommand{\@supervisor}{#1}}
\newcommand{\handInDate}[1]{\newcommand{\@handInDate}{#1}}
\newcommand{\thesisAuthor}[1]{\newcommand{\@thesisAuthor}{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%            Titlepage             %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\maketitlepage}{%
  \cleardoublepage \thispagestyle{empty}%
  \begingroup
  \advance\lineskip by 4mm
  \centering
  {\LARGE Institut f\"ur Informatik\\[1mm]}
  {\LARGE Lehrstuhl f\"ur Programmierung und Softwaretechnik}\\[1mm]
  {\large LUDWIG--MAXIMILIANS--UNIVERSIT\"AT M\"UNCHEN}
  
  \par
  \vspace*{5mm}
  \includegraphics[width=5cm]{graphics/lmu_siegel}
  
  \par
  \vspace*{15mm}
  {\LARGE \bfseries\@thesisType}
  
  \par
  \vspace*{15mm}
  {\huge \bfseries\@thesisTitle}
  
  \par
  \vspace*{5mm}
  {\large \@subtitle}
  
  \par
  \vfill
  {\LARGE \bfseries \@thesisAuthor}\\[1em]
  {\large \@thesisProgram}
  \vfill\large
  % I have no idea why it refuses to center the following, even if I put
  % it in a hbox.  Well... --mh
  \hfill
  \vbox{%
    \begin{tabbing}
      Aufgabensteller:
      \=\@referee\\
      Betreuer: 
      \>\@supervisor\\
      Abgabetermin: 
      \>\@handInDate\\
    \end{tabbing}
  }
  \hfill~\par
  \endgroup
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Selbststaendigkeitserklaerung   %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\selbststaendigkeitserklaerung}{
\thispagestyle{empty}

\begin{large}

\vspace*{2cm}

\noindent
Ich versichere hiermit eidesstattlich, dass ich die vorliegende Arbeit selbstst\"andig angefertigt, alle Zitate als solche kenntlich gemacht sowie alle benutzten Quellen und Hilfsmittel angegeben habe.

\vspace{2cm}

\noindent
Berlin, den 17. September 2013

\hspace*{5cm}%
\dotfill\\
\hspace*{6.5cm}%
\textit{(Unterschrift des Kandidaten)}

\end{large}
}

\makeatother