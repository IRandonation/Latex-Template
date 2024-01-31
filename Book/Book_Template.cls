\ProvidesClass{Book_Template}[MyLatex]

\LoadClass[12pt]{book}

\RequirePackage{ctex}
\RequirePackage[a4paper, left=3cm, right=3cm, top=3cm, bottom=3cm]{geometry}
\RequirePackage{graphicx}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{cite}
\RequirePackage{tocloft}

\setlength{\cftsecnumwidth}{5em}
\setlength{\cftsubsecnumwidth}{3.5em}
\setlength{\cftsubsubsecnumwidth}{4em}

% 设置正文字体大小为四号（\zihao{4}）
\renewcommand{\normalsize}{\zihao{4}}

\renewcommand{\maketitle}{%
\begin{titlepage}
    \centering
    \vspace*{\fill}
    {\zihao{1}\bfseries \@title \par}
    \vspace{5em}
    {\zihao{3} \@author \par}
    \vspace{5em}
    {\zihao{4} \@date \par}
    \vspace*{\fill}
  \end{titlepage}
}

\RequirePackage{titlesec}
\titleformat*{\section}{\zihao{3}\bfseries}
\titleformat*{\subsection}{\zihao{-3}\bfseries}
\titleformat*{\subsubsection}{\zihao{4}\bfseries}

% 定义章节格式
\renewcommand{\thesection}{第\arabic{section}节}
\renewcommand{\thesubsection}{\arabic{subsection}.}
\renewcommand{\thesubsubsection}{\thesubsection\arabic{subsubsection}}
\newcommand{\sectionbreak}{\clearpage}
