\ProvidesClass{Article_Template}[MyLatex]

\LoadClass[12pt]{article}

\RequirePackage{ctex}
\RequirePackage[a4paper, left=3cm, right=3cm, top=3cm, bottom=3cm]{geometry}
\RequirePackage{graphicx}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{cite}
\RequirePackage{tocloft}

\setlength{\cftsecnumwidth}{5em}
% 调整子章节编号的宽度
\setlength{\cftsubsecnumwidth}{3.5em}
% 调整子子章节编号的宽度
\setlength{\cftsubsubsecnumwidth}{4em}

% 设置正文字体大小为四号（\zihao{4}）
\renewcommand{\normalsize}{\zihao{4}}

\renewcommand{\maketitle}{%
\begin{titlepage} % 开始标题页
    \centering
    \vspace*{\fill} % 居中标题
    {\zihao{1}\bfseries \@title \par} % 标题字体设置为Huge和粗体
    \vspace{5em} % 标题和作者之间的空间
    {\zihao{3} \@author \par}
    \vspace{5em}
    {\zihao{4} \@date \par}
    \vspace*{\fill}
  \end{titlepage}
}

\renewenvironment{abstract}{
  \clearpage % 开始新一页
  \begin{center}
    \zihao{3}\bfseries 摘要
  \end{center}
  \zihao{4} % 摘要的字体大小
}{
  \clearpage % 摘要后开始新一页
}

\RequirePackage{titlesec}
\titleformat*{\section}{\zihao{3}\bfseries\centering}
\titleformat*{\subsection}{\zihao{-3}\bfseries}
\titleformat*{\subsubsection}{\zihao{4}\bfseries}

% 定义章节格式
\renewcommand{\thesection}{第\arabic{section}章}
\renewcommand{\thesubsection}{\arabic{subsection}.}
\renewcommand{\thesubsubsection}{\thesubsection\arabic{subsubsection}}
\newcommand{\sectionbreak}{\clearpage}