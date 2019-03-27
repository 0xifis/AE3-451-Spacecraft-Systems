\LoadClass[11pt, oneside]{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{summary_notes}[2018/01/11 Latex Class for Simple Module Summary Notes. Works better with <3.]

\RequirePackage[left=15mm, right=15mm, top=15mm, bottom=14.5mm]{geometry}
\RequirePackage{setspace}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{units}
\RequirePackage{tcolorbox}
\RequirePackage{mparhack}
\RequirePackage{graphicx}
\RequirePackage{ar}
\graphicspath{ {figs/} }
\RequirePackage{commath}
\RequirePackage[ddmmyy]{datetime}

% Hyperlinks/Bookmarks in TOC
\RequirePackage[pagebackref]{hyperref}
\hypersetup{
    colorlinks,
    citecolor=black,
    filecolor=black,
    linkcolor=black,
    urlcolor=black
}

\allowdisplaybreaks

% Command to add info about lecture number in sidebar
\newcommand{\mymarginpar}[1]{\marginpar{\setstretch{1}\textit{\scriptsize{#1}}}}

% New counter for lecture number
\newcounter{lecture}

% Command to display text showing lecture no. and date
\newcommand{\lecture}[5][]{%
  \addtocounter{lecture}{1}%
  \newdate{@date\arabic{lecture}}{#3}{#4}{#5}%
  \mymarginpar{Lecture \arabic{lecture}\\\displaydate{@date\arabic{lecture}}\\(#2 hour)}
  }

% Setting style of equation numbers
\numberwithin{equation}{section}

% Styling for vectors - bold
\renewcommand{\vec}[1]{\mathbf{#1}}

% Removing paragraph indent and linebreak after each paragraph
\setlength{\parskip}{5pt}%
\setlength{\parindent}{0pt}%

% Setting vertical space inside align environment
\setlength{\jot}{15pt}

% A command to use giant curly braces (right)
\newenvironment{rcases}
  {\left.\begin{aligned}}
  {\end{aligned}\hspace{3pt}\right\rbrace\hspace{5pt}}

% Notes toolbar
\newenvironment{note}[1][\unskip]
{
  \begin{tcolorbox}
  \ifthenelse
    {\equal{#1}{}}
    {}
    {\textbf{#1}\\}
}
{\end{tcolorbox}}