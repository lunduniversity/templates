%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% LTHletter.cls
%% 
%% by Stefan Höst
%% 2019-05-02
%% 
%% The LaTeX class LTHletter.cls is a letter class for LTH. It is
%% based on the standard class letter.cls.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{LTHletter}
%% Language
\newif\ifLTH@english\LTH@englishfalse%% Default Swedish
\DeclareOption{eng}{\LTH@englishtrue}
\DeclareOption{swe}{\LTH@englishfalse}
%%%%%%%%%%%%%%%%% Logos
%% LU logo
\newif\ifLTH@LUlogo\LTH@LUlogotrue%% Default LU logo
\DeclareOption{LU}{\LTH@LUlogotrue\LTH@LTHlogofalse}
%% LTH logo
\newif\ifLTH@LTHlogo\LTH@LTHlogofalse
\DeclareOption{LTH}{\LTH@LTHlogotrue\LTH@LUlogofalse}
%%%%%%%%%%%%%%%%% Colourful logo
\newif\ifLTH@logocol\LTH@logocolfalse%% Default B/W
\DeclareOption{logocol}{\LTH@logocoltrue}
\DeclareOption{logoBW}{\LTH@logocolfalse}
%%%%%%%%%%%%%%%%%
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{letter}
}
\ProcessOptions\relax
%%
\LoadClass{letter}
%%%%%%%%%%%%%%%%%%%%%
%% Paragraph spacing
\parskip=0pt plus 1pt
\parindent=15pt
%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{graphicx}
\RequirePackage{tikz}
\usetikzlibrary{calc,positioning}
\RequirePackage{geometry}
\geometry{a4paper,text={130mm,245mm},top=22mm,left=40mm,footskip=8mm,headsep=4mm,headheight=14pt}
%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{fancyhdr}
\renewcommand\headrulewidth{0pt}
\renewcommand\footrulewidth{0pt}
\fancyhf{}
\newdimen\footleftmarg
\newdimen\footrightmarg
\footleftmarg=20mm
\footrightmarg=25mm
%%%%%%%%%%%%%%%%%%%%%%%
%%% Define names
\ifLTH@english
  \def\name@address{Postal address}
  \def\name@visiting{Visiting address}
  \def\name@phone{Telephone}
  \def\name@mobile{Mobile phone}
  \def\name@fax{Fax}
  \def\name@email{E-mail}
  \def\name@web{Website}
\else
  \def\name@address{Postadress}
  \def\name@visiting{Bes\"oksadress}
  \def\name@phone{Telefon}
  \def\name@mobile{Mobil}
  \def\name@fax{Fax}
  \def\name@email{E-post}
  \def\name@web{Webbadress}
\fi
%%% Define commands
\def\DocumentName#1{\def\@docname{#1}}
\def\Diarienum#1{\def\@diarienum{#1}}
\def\Department#1{\def\@department{#1}}
\def\Admin#1{\def\@admin{#1}}
\def\Address#1{\def\@address{#1}}
\def\Visiting#1{\def\@visiting{#1}}
\def\Phone#1{\def\@phone{#1}}
\def\Mobile#1{\def\@mobile{#1}}
\def\Fax#1{\def\@fax{#1}}
\def\Email#1{\def\@email{#1}}
\def\Web#1{\def\@web{#1}}
%%% Set commands
\DocumentName{DocumentName}
\Diarienum{Diarienum}
\Department{Department}
\Admin{Admin}
\Address{Address}
\Visiting{Visiting}
\Phone{Phone}
\Mobile{Mobile}
\Fax{Fax}
\Email{Email}
\Web{Web}
\date{\Makedate}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\monthname@eng{%
  \ifcase \month \or January\or February\or March\or April\or May\or June\or July\or August\or September\or October\or November\or December\fi%
}
\def\monthname@swe{%
  \ifcase \month \or januari\or februari\or mars\or april\or maj\or juni\or juli\or augusti\or september\or oktober\or november\or december\fi%
}
\def\Makedate{%
  \ifLTH@english
  \monthname@eng\space\number\day, \number\year
  \else
  \number\day\space\monthname@swe, \number\year
  \fi
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Set logo parameters
% \LTH@logoxshift % xshift from logozero
% \LTH@logoyshift % yshift from logozero
% \LTH@logoheight % logo height
% \LTH@logo       % logo file name
%%%% ifs
% \ifLTH@LUlogo
% \ifLTH@LTHlogo
% \ifLTH@logocol
% \ifLTH@english
\ifLTH@english%%%%%%% English
 \ifLTH@logocol%       Colorful
   \ifLTH@LUlogo%        LU
     \def\LTH@logoxshift{-6pt}
     \def\LTH@logoyshift{-5pt}
     \def\LTH@logoheight{33.5mm}
     \def\LTH@logo{LundUniversity_C2line_PMS}
   \fi
   \ifLTH@LTHlogo%       LTH
     \def\LTH@logoxshift{-11pt}
     \def\LTH@logoyshift{-15pt}
     \def\LTH@logoheight{43.5mm}
     \def\LTH@logo{LTH_Logo_en}
   \fi
 \else%                B/W
   \ifLTH@LUlogo%        LU
     \def\LTH@logoxshift{-6pt}
     \def\LTH@logoyshift{-5pt}
     \def\LTH@logoheight{33.5mm}
     \def\LTH@logo{LundUniversity_C2line_BLACK}
   \fi
   \ifLTH@LTHlogo%       LTH
     \def\LTH@logoxshift{-11pt}
     \def\LTH@logoyshift{-15pt}
     \def\LTH@logoheight{43.5mm}
     \def\LTH@logo{LTH_Logo_en_BLACK}
   \fi
 \fi
\else%%%%%%%%%%%%%%%% Swedish
 \ifLTH@logocol%       Colorful
   \ifLTH@LUlogo%        LU
     \def\LTH@logoxshift{-5pt}
     \def\LTH@logoyshift{-5pt}
     \def\LTH@logoheight{33mm}
     \def\LTH@logo{Lunds_universitet_C2r_PMS}
   \fi
   \ifLTH@LTHlogo%       LTH
     \def\LTH@logoxshift{-38pt}
     \def\LTH@logoyshift{-54pt}
     \def\LTH@logoheight{69mm}
     \def\LTH@logo{LTH_Logotyp_sv}
   \fi
 \else%                B/W
   \ifLTH@LUlogo%        LU
     \def\LTH@logoxshift{-5pt}
     \def\LTH@logoyshift{-5pt}
     \def\LTH@logoheight{33mm}
     \def\LTH@logo{Lunds_universitet_C2r_SVART}
   \fi
   \ifLTH@LTHlogo%       LTH
     \def\LTH@logoxshift{-38pt}
     \def\LTH@logoyshift{-54pt}
     \def\LTH@logoheight{69mm}
     \def\LTH@logo{LTH_Logotyp_sv_BLACK}
   \fi
 \fi  
\fi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%\renewcommand{\footrule}{%
\newcommand\makeletterfoot{%
  \begin{tikzpicture}[overlay,xshift=-\footleftmarg,
    fntext/.style={anchor=north west, inner sep=0pt,font={\footnotesize\sffamily}}]
    \draw[line width=0.4pt](0,0) -- (\headwidth+\footleftmarg+\footrightmarg,0);
    \node[fntext](FootLineOne) at (0,-10pt){%
      \ifx\@empty\@address\relax\else \name@address: \textit{\@address} \fi
      \ifx\@empty\@visiting\relax\else \name@visiting: \textit{\@visiting} \fi
      \ifx\@empty\@phone\relax\else \name@phone: \textit{\@phone} \fi 
      \ifx\@empty\@mobile\relax\else \name@mobile: \textit{\@mobile} \fi 
      \ifx\@empty\@fax\relax\else \name@fax: \textit{\@fax} \fi
    };
    \node[anchor=north west, inner sep=0pt,font=\footnotesize](FootLineTwo) at 
    ($({(0,0)} |- FootLineOne.south) + (0,-6pt)$){%
      \sffamily
      \ifx\@empty\@email\relax\else \name@email: \textit{\@email} \fi
      \ifx\@empty\@web\relax\else \name@web: \textit{\@web} \fi
    };
  \end{tikzpicture}%
}
\fancypagestyle{plain}{%
  \fancyhf{}% clear all header and footer fields
  \fancyhead[R]{\strut\rlap{\rule{25mm}{0pt}\llap{\thepage}}}
  \fancyfoot[L]{%
    \ifnum\c@page>1\relax
    \else
      \makeletterfoot
    \fi
  }
}
\pagestyle{plain}
%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand*{\opening}[1]{% Redefine opening to set LTH header and footer
  \noindent%
  \thispagestyle{fancy}%
  \begin{tikzpicture}[%
    TextBox/.style={inner sep=0pt,anchor=base west}
    ]
    \useasboundingbox(0,1em)-- +(0,-50mm);
    \coordinate (logoorigin) at (-\footleftmarg,-18mm);%% Left bottom of logo
    \node[TextBox](logo) at ($(logoorigin)+(\LTH@logoxshift,\LTH@logoyshift)$) {%
      \includegraphics[height=\LTH@logoheight]{Logos/\LTH@logo}};
    %%%%% Tmp
    % \draw[fill=green] (logoorigin) circle (1pt);
    % \foreach \x in {0,1,2,3}{%
    %   \draw[green]($(logoorigin)+(0,\x)$) -- +(3,0);
    %   \draw[green]($(logoorigin)+(\x,0)$) -- +(0,3);
    % }
    %%%%%
    \node[TextBox,anchor=north west](Department) at ($(logoorigin)+(0,-10mm)$){%
      \textsf{%
      \begin{tabular}{@{}l}
        \@department\\
        \@admin
      \end{tabular}}
    };
    \node[TextBox, anchor=north west] at ($(logoorigin)+(90mm,10mm)$){%
      \begin{tabular}{@{}l}
        \toname\\
        \toaddress
      \end{tabular}};
    \node[TextBox] at ($(logoorigin)+(90mm,30mm)$){\@docname};
    \node[TextBox] at ($(logoorigin)+(135mm,20mm)$){\@diarienum};
    \node[TextBox] at ($(logoorigin)+(90mm,20mm)$){\@date};
  \end{tikzpicture}\newline
  \begin{list}{}{%
      \leftmargin=0pt
      \rightmargin=0pt
      \itemindent=0pt
      \topsep=5pt
      \partopsep=0pt
    }
  \item {\fontsize{14}{16}\selectfont\textbf{\textsf{#1}}}
  \end{list}%
}
\renewcommand{\closing}[1]{% Redefine closing. There is some strange longindent
  \par\nobreak\vspace{2em}%
  \stopbreaks
  \noindent
  \parbox{\indentedwidth}{\raggedright
       \ignorespaces #1\\[6\medskipamount]%
       \ifx\@empty\fromsig
           \fromname
       \else \fromsig \fi\strut}%
   \par}
\let\@texttop\relax%% Redefine to get rid of vertical rubberband before mail start
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\section[1]{%
  \begin{list}{}{%
      \leftmargin=0pt
      \rightmargin=0pt
      \itemindent=0pt
      \topsep=10pt
      \partopsep=0pt
    }
  \item {\fontsize{14}{16}\selectfont\textsf{#1}}
  \end{list}%
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
\endinput





