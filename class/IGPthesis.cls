% Copyright 2021 Ammar Kamoona <ammarkamoona.2012@gmail.com>
% Modified by Maricar Rabonza 2023
% Modified by Michael Yuhas 2024
% 
% Licensed under the GNU GPL version 3.0 or later.
% See http://www.gnu.org/licenses/gpl.html
%
% 
% MY'24: I have provided annotating comments based on the thesis standards which can be found at:
% https://entuedu.sharepoint.com/sites/Student/dept/sasd/oas/SitePages/Qualifying Examination and Thesis/Format of Final Thesis.aspx
% all changes from the original template by Maricar Rabonzo have been annotated as well.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{IGPthesis}[2025/01/24 v0.1 
		PhD Thesis Class]


% MY'24: Give the option of printing a one-sided version to reduce the number of pages in the PDF.
% MY'24: Give the option of different bibliography formats, ieeebib for IEEE transactions and kbib for Chicago with DOIs.
\DeclareOption{twosided}{\def\TWOSIDED{}}
\DeclareOption{ieeebib}{\def\IEEEBIBSTYLE{}}
\DeclareOption{kbib}{\def\KBIBSTYLE{}}
\ProcessOptions\relax


% MY'24: Each copy must be in interantional size A4 (210mm x 297mm)
\ifdefined\TWOSIDED
    \LoadClass[12pt,a4paper,onecolumn,twoside,openright]{report}
\else
    \LoadClass[12pt,a4paper,onecolumn,oneside,openright]{report}
\fi

% MY'24: Use the correct parameters for natbib
\ifdefined\IEEEBIBSTYLE
    \RequirePackage[numbers, square]{natbib}
\else
    \RequirePackage[authoryear, round]{natbib}
\fi


% margins
% use showframe in parameters if you want to check the margins.
% MY'24: Each page must have a margin of 3.7cm to allow for binding, if necessary.
\RequirePackage[left=2.7cm,right=2.7cm,top=2.7cm,bottom=2.7cm, bindingoffset=1cm]{geometry}


% Fonts! needs XeTeX
\RequirePackage{ifxetex}

\makeatletter
% MY'24: removing warning to use XeTeX
% I'm getting an error with the breakurl package when compiling
\usepackage{textcomp}
   \ifxetex
		\usepackage[no-math]{fontspec}
	 	\setmainfont{TeX Gyre Termes}
	   	\setsansfont{TeX Gyre Heros}
    \setmonofont{TeX Gyre Cursor}
	\else	
		\usepackage[T1]{fontenc}
		\usepackage{qtxmath}	
		\usepackage{tgtermes}
		\usepackage{tgheros}
	\fi
\makeatother


% fancy headers, footers
\RequirePackage{fancyhdr}

\makeatletter
\pagestyle{fancy}
% MY'24: this is required to not print a chapter number for unnumbered chapters
\renewcommand{\chaptermark}[1]{\markboth{\ifstrequal{\string 0}{\thechapter}{}{\thechapter.} #1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection\ #1}{}}
\fancyhf{}
% MY'24: Preserve the original footer when twosided is selected.  For one-sided documents only show the page number.
\ifdefined\TWOSIDED
    \fancyhead[LE]{\footnotesize{\textsc{\leftmark}}}
    \fancyhead[RO]{\footnotesize{\textsc{\rightmark}}}
    \fancyfoot[LE,RO]{\thepage}
\else
    \fancyhead[L]{\footnotesize{\textsc{\leftmark}}}
    \fancyhead[RO]{\footnotesize{\textsc{\rightmark}}}
    \fancyfoot[C]{\thepage}
\fi
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}

\fancypagestyle{plain}{
  \fancyhead{}
  \renewcommand{\headrulewidth}{0pt}
%  \renewcommand{\footrulewidth}{0pt}
}
\makeatother


% Title page
\RequirePackage{titling}

% MY'24: I've modified this to follow the format in the NTU template for the cover page
% The only things that will be printed are:
% 1. NTU Logo
% 2. Thesis Title
% 3. Author Name
% 4. Affiliation
% 5. Date
\makeatletter
	\newcommand{\affiliation}[1]{\def \@affiliation {#1}}
	\newcommand{\affilogo}[1]{\def \@affilogo {#1}}
	\newcommand{\affiliations}[2]{\def \@firstaffiliation {#1}  \def \@secondaffiliation {#2}}
	\newcommand{\affilogos}[2]{\def \@firstaffilogo {#1}  \def \@secondaffilogo {#2}}
	\newcommand{\location}[1]{\def \@location {#1}}
	\newcommand{\subtitle}[1]{\def \@subtitle {#1}}
	\newcommand{\thesisDec}[1]{\def \@thesisDec {#1}}
	\newcommand{\TypeOfDocument}[1]{\def \@TypeOfDocument {#1}}
    
	\affiliation{}
	\affilogo{}
	\affiliations{}{}
	\location{}
	\subtitle{}
	\thesisDec{}
    \TypeOfDocument{}

	\pretitle{\vspace{-1.5cm}\begin{center}\includegraphics[ scale=0.7,keepaspectratio]{\@affilogo}\noindent \end{center} \begin{center} \vfill \Large \bf \sffamily }
	\posttitle{\par \end{center}\noindent}
	\preauthor{\vfill \begin{center}\large \bf}
    \postauthor{\vskip 1em \MakeUppercase{\@affiliation} \par \end{center}}
	\predate{\begin{center} \vskip 0.5em \large \bf}
	\postdate{\end{center} \vskip 8em}
\makeatother

% MY'24: This command makes the title page (separate from the cover page)
% According to the NTU template this must contain:
% 1. Title
% 2. Author Name
% 3. Affiliation
% 4. "Type of Document"
% 5. Date
\makeatletter
    \newcommand{\maketitlepage}{
        \begin{center}
            \Large{\bf \sffamily \vskip 1em \@title}
            \vfill
            \large{\bf \@author}
            \vfill
            \large{\@affiliation \vskip 2em}
            \large{\@TypeOfDocument \vskip 2em}
            \large{\bf \@date \vskip 8em}
        \end{center}
    }
\makeatother


% Sections and captions
\RequirePackage{titlesec}
\makeatletter
	\titleformat{\chapter}[display]{\normalfont\huge\bfseries}
	{\chaptertitlename\ \thechapter}{10pt}{\LARGE}[\vspace{2cm}\hrulefill]
	\titleformat{\section}[block]{\normalfont\Large\bfseries\sffamily}{\thesection}{15pt}{\Large}
	\titleformat{\subsection}[block]{\normalfont\large\bfseries\sffamily}{\thesubsection}{15pt}{\large}
	\titleformat{\subsubsection}[block]{\normalfont\normalsize\bfseries\sffamily}{\thesubsubsection}{15pt}{\normalsize}
	\titleformat{\paragraph}[block]{\normalfont\normalsize\bfseries\sffamily}{\paragraph}{15pt}{\normalsize}
	\titleformat{\subparagraph}[block]{\normalfont\normalsize\bfseries\sffamily}{\subparagraph}{15pt}{\normalsize}
\makeatother


% captions for figures and tables
\RequirePackage{caption}
\makeatletter
	\renewcommand{\captionlabelfont}{\normalsize\bfseries}
	\renewcommand{\captiontextfont}{\small}
	\setlength{\captionmargin}{1.3cm}
\makeatother


% takes care of the abstract and aknowledgements
\RequirePackage{abstract}
\makeatletter
\newcommand{\keywords}[1]{\def \@keywords {#1}}
\newcommand{\theabstract}[1]{\def \@theabstract {#1}}
\newcommand{\acknowledgements}[1]{\def \@acknowledgements {#1}}
\newcommand{\declaration}[1]{\def \@declaration {#1}}
\newcommand{\originality}[1]{\def \@originality {#1}}
\newcommand{\acronyms}[1]{\def \@acronyms {#1}}

\keywords{}
\theabstract{}
\declaration{}
\acknowledgements{}
\originality{}
\acronyms{}

\input{Intro/abstract}
\input{Intro/declaration}
\input{Intro/acknowledgements}
\input{Intro/acronyms}
% indent the abstract properly
\setlength{\absrightindent}{1cm}
\setlength{\absleftindent}{1cm}
\makeatother

% MY'24: Format the abstract in the same way as declarations and acknowledgements.
\makeatletter
\renewenvironment{abstract}{
  \chapter*{Abstract}
}{}
\makeatother

% MY'24: Add a section for list of acronyms.
\makeatletter
\renewenvironment{acronyms}{
 \chapter*{List of Acronyms}
}{}
\makeatother

% makes everything in the begining of the document
\makeatletter
\newcommand{\makefrontmatter}{
    %% Roman numbers until Chapter 1
    \pagenumbering{roman}
    \pagestyle{empty}
	\maketitle

    % MY'24: Start title page on right side if this copy is two-sided
    \ifdefined\TWOSIDED
        \cleardoublepage
    \fi
    \thispagestyle{empty}
    \maketitlepage

    % MY'24: Start declarations on the right side if this copy is two-sided
    \ifdefined\TWOSIDED
        \pagestyle{fancy}
        \cleardoublepage
    \fi
	\pagestyle{fancy}
	%add declaration if any
	\ifx \@declaration \@empty
        \relax
	\else
        \@declaration
    \fi
	\ifx \@acknowledgements \@empty
		\relax
	\else
		\chapter*{Acknowledgements}
		\@acknowledgements
	\fi
    \tableofcontents
    % MY'24: According to the guidelines these should come before the abstract.
    \listoffigures
    % MJY'24: Add list of figures to table of contents
    \addcontentsline{toc}{chapter}{\listfigurename}
	\listoftables
    % MJY'24: Add list of tables to table of contents
    \addcontentsline{toc}{chapter}{\listtablename}

    % MJY'25: Add list of acronyms
	\ifx \@acronyms \@empty
		\relax
	\else
		\chapter*{List of Acronyms}
		\@acronyms
	\fi
    
	% make the abstract and keywords
	\ifx \@theabstract \@empty
		\ClassWarning{IGPthesis}{The abstract is missing. Use \protect\theabstract{text}.}
	\else
        % MJY'24: Only start on the right side if this copy is two-sided
		\ifdefined\TWOSIDED
		      \cleardoublepage
        \else
            \clearpage
        \fi
		\begin{abstract}
        % MJY'24: Add abstract to table of contents
        \addcontentsline{toc}{chapter}{Abstract}
		\noindent
		\@theabstract		
		\ifx \@keywords \@empty
            % MY'24: Downgrading this log message to info as keywords are not a requirement.
			\ClassInfo{IGPthesis}{Keywords are missing. Use \protect\keywords{words}.}
		\else
			\vspace{2cm}\par\noindent {\small{\bf Keywords\/}: \@keywords}
		\fi
		\end{abstract}
	\fi
}	
\makeatother


% make the bibliography
\makeatletter
\newcommand{\makebibliography}[1]{
	\cleardoublepage
	\phantomsection
	\addcontentsline{toc}{chapter}{Bibliography}
    
    \ifdefined\IEEEBIBSTYLE
        % IEEE Transaction bibliography style. TODO: add DOI support.
        \bibliographystyle{IEEEtran}
    \else\ifdefined\KBIBSTYLE
        % KBIB Style.  Looks like Chicago style, but with DOI support.
        \bibliographystyle{kbib}
    \else
        % Default natbib style.
        \bibliographystyle{plainnat}
    \fi\fi
    
	\bibliography{refs}
}
\makeatother