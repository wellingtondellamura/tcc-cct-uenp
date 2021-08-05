%%
%% UENP - Universidade Estadual do Norte do Paraná
%% Centro de Ciências Tecnológicas - Campus Luiz Meneghel
%% Customizações do abnTeX2 (http://abnTeX2.googlecode.com)
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%%
%% The Current Maintainer of this work is Daniel dos Santos Kaster, dskaster@uel.br
%%
%% Further information about abnTeX2 are available on http://abntex2.googlecode.com/
%%
%% Changelog:
%%
%% 2014/08/25 - (v.1.1) Ajustes diversos de formatação para manter conformidade com template DC/UEL MS Word 2013
%% 2013/10/30 - (v1.0.1) Inclusão das opções tccpreliminar e qualificacaoms
%% 2013/07/11 - (v1.0) Liberação da customização dc-uel.cls do ABNTeX
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cct-uenp}[2016/03/22 v0.1 Modelo do Centro de Ciências Tecnológicas da UENP baseado em abnTeX2]

\providecommand{\UENPisprojeto}{false}
\DeclareOption{projeto}{
	\renewcommand{\UENPisprojeto}{true}
}

\providecommand{\UENPistcc}{false}
\DeclareOption{tcc}{
	\renewcommand{\UENPistcc}{true}
}

\PassOptionsToClass{chapter=TITLE}{abntex2} % títulos de capítulos convertidos em letras maiúsculas
\PassOptionsToPackage{english}{babel} % idioma adicional para hifenização/citação

%
% Repassa todos os demais parametros a classe abntex2,
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}


% ---
% INICIO DAS CUSTOMIZACOES PARA O CCT UENP
% ---

\providecommand{\imprimirmembrobancadois}{}
\newcommand{\membrobancadois}[1]{\renewcommand{\imprimirmembrobancadois}{#1}}

\providecommand{\imprimirmembrobancatres}{}
\newcommand{\membrobancatres}[1]{\renewcommand{\imprimirmembrobancatres}{#1}}

\providecommand{\imprimirmembrobancaquatro}{}
\newcommand{\membrobancaquatro}[1]{\renewcommand{\imprimirmembrobancaquatro}{#1}}

\providecommand{\imprimirinstmembrobancadois}{}
\newcommand{\instmembrobancadois}[1]{\renewcommand{\imprimirinstmembrobancadois}{#1}}

\providecommand{\imprimirinstmembrobancatres}{}
\newcommand{\instmembrobancatres}[1]{\renewcommand{\imprimirinstmembrobancatres}{#1}}

\providecommand{\imprimirinstmembrobancaquatro}{}
\newcommand{\instmembrobancaquatro}[1]{\renewcommand{\imprimirinstmembrobancaquatro}{#1}}

\providecommand{\imprimirdiadefesa}{}
\newcommand{\diadefesa}[1]{\renewcommand{\imprimirdiadefesa}{#1}}

\providecommand{\imprimirnivel}{}
\newcommand{\nivel}[1]{\renewcommand{\imprimirnivel}{#1}}

\providecommand{\imprimircitacaoautor}{}
\newcommand{\citacaoautor}[1]{\renewcommand{\imprimircitacaoautor}{#1}}

\providecommand{\imprimirpalavraschave}{}
\newcommand{\palavraschave}[1]{\renewcommand{\imprimirpalavraschave}{#1}}

\providecommand{\imprimirtituloingles}{}
\newcommand{\tituloingles}[1]{\renewcommand{\imprimirtituloingles}{#1}}

\providecommand{\imprimirpalavraschaveingles}{}
\newcommand{\palavraschaveingles}[1]{\renewcommand{\imprimirpalavraschaveingles}{#1}}

% ---
% Capa
% ---
\renewcommand{\imprimircapa}{%

  % definindo o preambulo
  \ifthenelse{\equal{\UENPistcc}{true}}
    {\preambulo{Trabalho de Conclus\~{a}o de Curso apresentado ao curso de Bacharelado em Ci\^{e}ncia
      da Computa\c{c}\~{a}o da Universidade Estadual do Norte do Paran\'{a} para obten\c{c}\~{a}o do t\'{i}tulo de
      Bacharel em Ci\^{e}ncia da Computa\c{c}\~{a}o.}}{}
  \ifthenelse{\equal{\UENPisprojeto}{true}}
    {\preambulo{Vers\~{a}o Preliminar de Trabalho de Conclus\~{a}o de Curso apresentado ao curso de Bacharelado em Ci\^{e}ncia
      da Computa\c{c}\~{a}o da Universidade Estadual do Norte do Paran\'{a} para obten\c{c}\~{a}o do t\'{i}tulo de
      Bacharel em Ci\^{e}ncia da Computa\c{c}\~{a}o.}}{}

  \begin{capa}%

    \center
    \begin{tabular}{p{2.8cm}l}
    \begin{minipage}{2.8cm}
    	\centering
      \includegraphics[width=2.8cm]{uenp}
    \end{minipage} &
    \begin{minipage}{\textwidth-2.8cm}
    	\centering
      {\large UNIVERSIDADE ESTADUAL DO NORTE DO PARAN\'{A}}\\
      {\small CAMPUS LUIZ MENEGHEL - CENTRO DE CI\^ENCIAS TECNOL\'OGICAS}\\
      {\large BACHARELADO EM CI\^ENCIA DA COMPUTA\c{C}\~AO}
    \end{minipage}\\
    \end{tabular}
%    \includegraphics[width=1\textwidth]{faixa}

    \vspace{1cm}
    {\large \expandafter\MakeUppercase{\imprimirautor}}

    \vspace*{\fill}
    {\ABNTEXchapterfont\bfseries\large \expandafter\MakeUppercase{\imprimirtitulo}}
    \vspace*{\fill}

%    \includegraphics[width=1\textwidth]{faixa}
    {\ABNTEXchapterfont\bfseries \expandafter\MakeUppercase{\imprimirlocal}}
    \par
    {\ABNTEXchapterfont\bfseries \imprimirdata}

    \vspace*{1cm}

  \end{capa}
}

% ---
% Folha de rosto
% ---
\renewcommand{\folhaderostocontent}{
\begin{center}

    {\large \expandafter\MakeUppercase{\imprimirautor}}

    \vspace*{\fill}\vspace*{\fill}\vspace*{\fill}\vspace*{\fill}
    {\ABNTEXchapterfont\bfseries\large \expandafter\MakeUppercase{\imprimirtitulo}}
    \vspace*{\fill}\vspace*{\fill}\vspace*{\fill}\vspace*{\fill}

 \abntex@ifnotempty{\imprimirpreambulo}{
  \hspace{.45\textwidth}
  \begin{minipage}{.5\textwidth}
  \SingleSpacing
    \imprimirpreambulo

  \vspace*{0.4cm}
  {\imprimirorientadorRotulo~\imprimirorientador\par}

  \abntex@ifnotempty{\imprimircoorientador}{%
    {\imprimircoorientadorRotulo~\imprimircoorientador}%
  }%

  \end{minipage}%
  \vspace*{\fill}
 }%

    \vspace*{\fill}

    {\ABNTEXchapterfont\bfseries \expandafter\MakeUppercase{\imprimirlocal}}
    \par
    {\ABNTEXchapterfont\bfseries \imprimirdata}

    \vspace*{1cm}
\end{center}
}

% ---
% Folha de aprovação
% ---
\newcommand{\imprimirfolhadeaprovacao}{%
\begin{folhadeaprovacao}

  \begin{center}
    {\large \expandafter\MakeUppercase{\imprimirautor}}

    \vspace*{\fill}\vspace*{\fill}
    {\ABNTEXchapterfont\bfseries\large \expandafter\MakeUppercase{\imprimirtitulo}}
    \vspace*{\fill}\vspace*{\fill}

    \hspace{.45\textwidth}
    \begin{minipage}{.5\textwidth}
        \imprimirpreambulo

    \vspace*{0.5cm}
    \center{\bfseries BANCA EXAMINADORA}

   \assinatura{\imprimirorientador \\ \imprimirinstituicao \\ Orientador}
   \ifthenelse{\not\equal{\imprimirmembrobancadois}{}}{\assinatura{\imprimirmembrobancadois \\ \imprimirinstmembrobancadois}}{}
   \ifthenelse{\not\equal{\imprimirmembrobancatres}{}}{\assinatura{\imprimirmembrobancatres \\ \imprimirinstmembrobancatres}}{}
   \ifthenelse{\not\equal{\imprimirmembrobancaquatro}{}}{\assinatura{\imprimirmembrobancaquatro \\ \imprimirinstmembrobancaquatro}}{}


   \vspace*{1.5cm}

   \imprimirlocal, \imprimirdiadefesa~de \imprimirdata

    \end{minipage}%
   \end{center}

\end{folhadeaprovacao}
}

% ---
% Resumo
% ---
\renewenvironment{resumo}[1][\resumoname]{%

   \noindent
   \expandafter\MakeUppercase{\imprimircitacaoautor}. {\bfseries\imprimirtitulo}. \pageref*{LastPage} p.
   \ifthenelse{\equal{\UENPistcc}{true}}{Trabalho de Conclus\~{a}o de Curso (Bacharelado em Ci\^{e}ncia da Computa\c{c}\~{a}o)}{}%
   \ifthenelse{\equal{\UENPisprojeto}{true}}{Trabalho de Conclus\~{a}o de Curso -- Projeto (Bacharelado em Ci\^{e}ncia da Computa\c{c}\~{a}o)}{}%
   ~-- \imprimirinstituicao, \imprimirlocal, \imprimirdata.
   \vspace*{1cm}

   \PRIVATEbookmarkthis{#1}
   \renewcommand{\abstractnamefont}{\chaptitlefont}
   \renewcommand{\abstractname}{\ABNTEXchapterupperifneeded{#1}}
   \begin{abstract}
     \SingleSpacing
   }{\end{abstract}

  \vspace{\onelineskip}

  \noindent
  \textbf{Palavras-chave}: \imprimirpalavraschave

 \vspace*{\fill}
 \PRIVATEclearpageifneeded

}

% ---
% Abstract
% ---
\newenvironment{Abstract}[1][Abstract]{%

   \noindent
   \expandafter\MakeUppercase{\imprimircitacaoautor}. {\bfseries\imprimirtituloingles}. \pageref*{LastPage} p.
   \ifthenelse{\equal{\UENPistcc}{true}}{Final Project (Bachelor of Science in Computer Science)}{}%
   \ifthenelse{\equal{\UENPisprojeto}{true}}{Final Project -- Draft Version (Bachelor of Science in Computer Science)}{}%
   ~-- State University Northern of Parana , \imprimirlocal, \imprimirdata.
   \vspace*{1cm}

   \PRIVATEbookmarkthis{#1}
   \renewcommand{\abstractnamefont}{\chaptitlefont}
   \renewcommand{\abstractname}{\ABNTEXchapterupperifneeded{#1}}
   \begin{abstract}
     \SingleSpacing
     \begin{otherlanguage*}{english}
     }{
     \end{otherlanguage*}
   \end{abstract}

  \vspace{\onelineskip}

  \noindent
  \textbf{Keywords}: \imprimirpalavraschaveingles

  \vspace*{\fill}
  \PRIVATEclearpageifneeded

}

% ---
% Customização de fontes
% ---
\renewcommand{\ABNTEXchapterfont}{\bfseries} % altera a fonte do capitulo
\renewcommand{\ABNTEXchapterfontsize}{\large} % altera o tamanho da fonte de \chapter (inclusive dos elementos pré-textuais)
\renewcommand{\ABNTEXsectionfontsize}{\large} % altera o tamanho da fonte de \section
\renewcommand{\ABNTEXsubsectionfontsize}{\normalsize} % altera o tamanho da fonte de \subsection

% ---
% PACOTES
% ---

% ---
% Pacotes fundamentais
% ---

\RequirePackage{cmap}			% Mapear caracteres especiais no PDF
\RequirePackage{lmodern}			% Usa a fonte Latin Modern
\RequirePackage{lastpage}			% Usado pela Ficha catalográfica
\RequirePackage{indentfirst}		% Indenta o primeiro parágrafo de cada seção.
\RequirePackage{color}			% Controle das cores

% ---
% Pacotes de citações
% ---
\RequirePackage[num, recuo=0.8cm]{abntex2cite}	% Citações numéricas padrão ABNT

% ---
% CONFIGURAÇÕES DE PACOTES
% ---

% ---
% Configurações do abntex2cite
% ---
\citebrackets[] % altera as citações no texto para usar colchetes
\renewcommand\@biblabel[1]{{\parbox{0.8cm}{[#1]}}} % modifica a seção de referências para mostrar [1] SOBRENOME, P. em vez de 1 SOBRENOME, P.
% ---

% ---
% Configurações de cabeçalho do pacote memoir
% ---
\makepagestyle{uenp-header}
  \makeevenhead{uenp-header} %%pagina par
     {\thepage} % esquerda
     {} % centro
     {} % direita
  \makeoddhead{uenp-header} %%pagina ímpar ou com oneside
     {} % esquerda
     {} % centro
     {\thepage} % direita
% ---

% ---
% Configurações de aparência do PDF final
% ---
% alterando o aspecto da cor azul
\definecolor{blue}{RGB}{41,5,195}

% informações do PDF
\hypersetup{
		pdftitle={\@title},
		pdfauthor={\@author},
    	pdfsubject={\imprimirpreambulo},
	    pdfcreator={LaTeX with abnTeX2},
		pdfkeywords={abnt}{latex}{abntex}{abntex2}{trabalho acadêmico},
		colorlinks=true,       		% false: boxed links; true: colored links
    	linkcolor=blue,          	% color of internal links
    	citecolor=blue,        		% color of links to bibliography
    	filecolor=magenta,      		% color of file links
		urlcolor=blue,
		bookmarksdepth=4
}
% ---

% ---
% Espaçamentos entre linhas e parágrafos
% ---

% O tamanho do parágrafo é dado por:
\setlength{\parindent}{1.3cm}

% Controle do espaçamento entre um parágrafo e outro:
\setlength{\parskip}{0.2cm}  % ou \onelineskip

% Constantes do abntex2
\instituicao{Universidade Estadual do Norte do Paran\'{a}}
\local{Bandeirantes--PR}

% ---
% FIM DAS CUSTOMIZACOES
% ---
