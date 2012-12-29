%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%    SBIR/STTR proposal class
%    Created by G. L. Heileman, Dec. 15, 2012
%    (C) 2012 AHS Engineering Services, LLC
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sbir}[2012/12/15 v1.0 SBIR/STTR Proposal Class (c) 2012 AHS Engineering Services, LLC]

\LoadClass{article}

\renewcommand\normalsize{%
	 \@setfontsize\normalsize\@xpt\@xiipt
	 \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
	 \abovedisplayshortskip \z@ \@plus3\p@
	 \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
	 \belowdisplayskip \abovedisplayskip
	 \let\@listi\@listI}
\normalsize
\renewcommand\small{%
	 \@setfontsize\small\@ixpt{11}%
	 \abovedisplayskip 8.5\p@ \@plus3\p@ \@minus4\p@
	 \abovedisplayshortskip \z@ \@plus2\p@
	 \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
	 \def\@listi{\leftmargin\leftmargini \topsep 4\p@ \@plus2\p@ \@minus2\p@ \parsep 2\p@ \@plus\p@ \@minus\p@ \itemsep \parsep}%
	 \belowdisplayskip \abovedisplayskip
}
 \renewcommand\footnotesize{%
	 \@setfontsize\footnotesize\@viiipt{9.5}%
	 \abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
	 \abovedisplayshortskip \z@ \@plus\p@
	 \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
	 \def\@listi{\leftmargin\leftmargini \topsep 3\p@ \@plus\p@ \@minus\p@ \parsep 2\p@ \@plus\p@ \@minus\p@ \itemsep \parsep}%
	 \belowdisplayskip \abovedisplayskip
}
\renewcommand\scriptsize{\@setfontsize\scriptsize\@viipt\@viiipt} 
\renewcommand\tiny{\@setfontsize\tiny\@vpt\@vipt}
\renewcommand\large{\@setfontsize\large\@xiipt{14}}
\renewcommand\Large{\@setfontsize\Large\@xivpt{16}} 
\renewcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}} 
\renewcommand\huge{\@setfontsize\huge\@xxpt{25}} 
\renewcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}

\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{ifthen}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
\RequirePackage{wrapfig}
\RequirePackage{amssymb}
\RequirePackage{calc}
\RequirePackage[T1]{fontenc} % needed for boldface smallcap font
\RequirePackage{natbib}
\RequirePackage{multicol}

% Defined colors
\definecolor{BlueSteel}{rgb}{0,0,0.5}
\definecolor{Magnum}{rgb}{0.73,0.81,0.87}
\definecolor{LeTigre}{rgb}{0.45,0.44,0.44}

% No horizontal rule below the header (fancyhdr package)
\renewcommand{\headrulewidth}{0pt}

% define page layout lengths
\setlength{\textheight}{9in} 
\setlength{\textwidth}{6.5in}
\setlength{\topmargin}{-0.65in}
\setlength{\headheight}{24pt}
\setlength{\footskip}{0in}
\setlength{\oddsidemargin}{0in} 
\setlength{\evensidemargin}{0in}
\setlength{\parskip}{1em}
\setlength{\parindent}{0.0em}
\setlength{\footskip}{0.5in}

%%%% bibliography settings  %%%%
\renewcommand\bibsection{\sbirsection{\refname}{}}
\bibfont{\small}
\setlength{\bibsep}{2pt}

% define newcommands for proposal information
\newcommand*{\company}[1]{\def\fromcompany{#1}}
\newcommand*{\proposaltitle}[1]{\def\fromproposaltitle{#1}}
\newcommand*{\proposaltype}[1]{\def\fromproposaltype{#1}}
\newcommand*{\topicnum}[1]{\def\fromtopicnum{#1}}
\newcommand*{\proposalnum}[1]{\def\fromproposalnum{#1}}

%set optional settings, initial values default to empty
\company{}\proposaltitle{}\topicnum{}\proposalnum{}\proposaltype{}

%%%% Information that goes in the header and footer  %%%  
  \pagestyle{fancy}
  \lhead{\color{LeTigre}\scshape\fromcompany}
  \chead{\color{LeTigre}\scshape{Proprietary}~\\ Topic No: \fromtopicnum}
  \rhead{\color{LeTigre}Proposal No: \fromproposalnum}
  \lfoot{\color{LeTigre}\scshape{Proprietary}}
  \cfoot{\color{LeTigre}\vspace*{-1.25em}{\scshape\fromproposaltitle}~\\ \rm\thepage}
  \rfoot{\color{LeTigre}\scshape\fromproposaltype}

%%% New counters %%%
\newcounter{task}
\newenvironment{tasks}
		{\begin{list}
			{\color{BlueSteel}\large\sf\bfseries{Task \arabic{task}:}}
			{\usecounter{task}\leftmargin=0pt}
		}
		{\end{list}}
		
\newenvironment{taskss}
        {\begin{itemize}[label={\color{BlueSteel}\sf\bfseries{\ \ \ \ \ \ \ Task \arabic{task}:}},leftmargin=0pt,labelsep=6pt,align=left, itemsep=4pt]\ignorespaces\usecounter{task}}
        {\end{itemize}\ignorespacesafterend}
		
\setlist[enumerate]{leftmargin=*}
		
\makeatletter
\def\taskitem{%
   \@ifnextchar[ \@taskitem{\@noitemargtrue\@taskitem[\@itemlabel]}}
   \def\@taskitem[#1]{\item[#1]\mbox{}\\\hspace*{\dimexpr-\labelwidth-\labelsep}}
\makeatother

\makeatletter
 \newcommand{\titem}[1]{%
  	\item{\color{BlueSteel}\sf\bfseries{#1\newline}}%
  }
\makeatother

%%% Commands for the Evaluation Criteria Quick Reference Guide %%%
\newenvironment{evalbox}{%
	\newsavebox{\colbox}  % box for storage
	    \wrapfigure{r}{2.5in}%
		\setbox\colbox=\vbox\bgroup%  start capturing input
	}{%
		\egroup% stop capturing input
		\fcolorbox{BlueSteel}{Magnum}{%
		\begin{minipage}[b]{1.02\linewidth}\raggedright
			\usebox{\colbox}% use box contents
		\end{minipage}}%
		\vspace*{-2em}%
	   \endwrapfigure%	
	}%
	
\newcommand{\evalhdr}[1]{{\sf\bfseries\color{BlueSteel} #1}}%

\newenvironment{evalitemize}{%
	\begin{itemize}[align=left,leftmargin=14pt,labelsep=-10pt]%
	}{%
	\end{itemize}
	}
	
	
%%%  Commands for the Check List Box %%%
%\newenvironment{checklistbox}{%
%		\newsavebox{\ckbox}  % box for storage
%		\setbox\ckbox=\vbox\bgroup%  start capturing input
%	}{%
%		\egroup% stop capturing input
%
%			\fcolorbox{BlueSteel}{Magnum}{%
%				\usebox{\ckbox}% use box contents
%			}%
%
%	}%
	
%%%  Commands for the Check List Box %%%
%\newenvironment{checkbox}{%
%		\newsavebox{\ckbox}  % box for storage
%		\begin{lrbox}{\ckbox}%  start capturing input
%	}{%
%		\end{lrbox}% stop capturing input
%		\begin{center}%
%   		\fcolorbox{BlueSteel}{Magnum}{%
%        			\begin{minipage}[t]{0.9\textwidth}%
%             			\begin{itemize}[labelindent=2em,leftmargin=1.5em,label=$\checkmark$]%
%					\usebox{\ckbox}% use box contents
%				\end{itemize}%
%			\end{minipage}%
%		}%
%		\end{center}%
%	}%

%%%  Commands for the Check List Box %%%
\newenvironment{checkbox}[1]{%
		\begin{center}%
	}{%
		\end{center}%
	}%

	
\newenvironment{checklistitemize}{%
		\begin{minipage}[t]{0.95\linewidth}\raggedright
		\begin{itemize}[labelindent=2em, leftmargin=2em,topsep=-0.5em,label=$\checkmark$,noitemsep]%
	}{%
		\end{itemize}%
		\end{minipage}%
%		\vspace*{0.75em}%
	}
	
%%%%  Highlighting Text  %%%%
\makeatletter
\newcommand{\hl}[1]{%
 {\color{red}#1}%
}{%
 %
}%
\makeatother


%%% Section Formatting %%%
\makeatletter
\newcommand{\sbirsection}[2]{%
	\@startsection{section}{1}{0pt}{1ex}{0.5ex}{\color{BlueSteel}\Large\sf\bfseries\raggedright}%
	{#1}%
	{\color{BlueSteel}\hrule}%
	    \ifthenelse{\equal{#2}{}}{}%
		{\vspace*{-1ex}%
		{\sf\large\color{BlueSteel}#2}\hspace*{\fill}%
		\vspace*{0.75ex}%
		{\color{BlueSteel}\hrule}%
	         }%
}
\makeatother

%%% Inline Callout %%%
\makeatletter
\newcommand{\sbircallout}[2]{%
	{\vspace{0.05in}}
	{\color{BlueSteel}\hrule}%
		{\vspace*{-1ex}%
		{\color{BlueSteel}\Large\sf\bfseries\raggedright #1} {\sf\large\color{BlueSteel} #2}\hspace*{\fill}%
		\vspace*{0.75ex}%
		{\color{BlueSteel}\hrule}%
	         }%
}
\makeatother

  
\titleformat{\subsection}						% Customize the \subsection command 
  {\color{BlueSteel}\large\sf\bfseries\raggedright}	% Make the \section headers large
  {}{0em}									% Can be used to give a prefix to all sections, like 'Section ...'
  {\arabic{section}.\arabic{subsection}\hspace{0.2in}}  % Inserted before the heading
\titlespacing{\subsection}{0pt}{*0}{*-2}

\titleformat{\subsubsection}
  {\color{BlueSteel}\sf\bfseries\raggedright}
  {}{0em}
  {\arabic{section}.\arabic{subsection}.\arabic{subsubsection}\hspace{0.2in}}
\titlespacing{\subsubsection}{0pt}{*0}{*-2}
  
  \titleformat{\paragraph}[runin]
  {\color{BlueSteel}\large\sf\bfseries}
  {\theparagraph}{0em}
  {}
  \titlespacing*{\paragraph}{0pt}{*0}{*1.25}

\makeatletter
%\newcommand{\heading}[1]{%
%  \noindent\textsc{\color{BlueSteel}\large\sf\bfseries{#1\newline\vspace{-0.25in}}}%
%  \@afterindentfalse\@afterheading}
% Changed so we don't need to insert a blank line after each heading - ccl
\newcommand{\heading}[1]{%
  \noindent\vspace{0.05in}\textsc{\color{BlueSteel}\large\sf\bfseries{#1\newline}}%
  \@afterindentfalse\@afterheading\hspace{-0.038in}}
\makeatother

%%% Remove a lot of the space around lists  %%%
\setlist{noitemsep,topsep=0pt,parsep=0pt,partopsep=0pt}



 

