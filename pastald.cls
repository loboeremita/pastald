%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   PASTALD.CLS                                                              %%
%%                                                                            %%
%%                                                                            %%
%%   Licence: LPPL (LaTeX Project Public License)                             %%
%%     You can change this file in the terms of LPPL                          %%
%%     (http://www.latex-project.org/lppl.html)                               %%
%%                                                                            %%
%%   Licenca: LPPL (LaTeX Project Public License)                             %%
%%     Esta licença diz basicamente que se você editar o código desta         %%
%%     classe, mesmo localmente (no seu micro), você DEVE RENOMEAR o arquivo  %%
%%     da classe!! Como sempre, não eh dada nenhuma garantia.                 %%
%%     Para o texto completo da licença, favor seguir o endereço              %%
%%        http://www.latex-project.org/lppl.html                              %%
%%                                                                            %%
%%   Classe destinada a criação da pasta de relatório do candidato a líder    %%
%%     de desbravadores de acordo com as normas pedidas pela Divisão Sul      %%
%%     Americana da Igreja Adventista do Sétimo Dia.                          %%
%%   Esta classe foi obtida modificando a classe article, adicionando a       %%
%%     formatação, os comandos e os requisitos necessários.                   %%
%%                                                                            %%
%%   Autor: Eloy Guimarães Pires                                              %%
%%     https://www.linkedin.com/in/eloypires/                                 %%
%%     https://github.com/loboeremita                                         %%
%%                                                                            %%
%%   Comandos:                                                                %%
%%     \lider                                                                 %%
%%     \divisao                                                               %%
%%     \uniao                                                                 %%
%%     \associacao                                                            %%
%%     \regiao                                                                %%
%%     \distrito                                                              %%
%%     \clube                                                                 %%
%%     \cidade                                                                %%
%%     \ano                                                                   %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pastald}[2017/10/20 v17.10 pasta líder de desbravadores]

\LoadClass{article}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\RequirePackage{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{draftwatermark}
\RequirePackage{indentfirst}
\RequirePackage{titlesec}
\RequirePackage{newtxtext}

\titleformat*{\section}{\Huge\bfseries\filcenter}

\SetWatermarkText{\includegraphics{L4f.png}}
\SetWatermarkScale{1.15}
\SetWatermarkAngle{0}

\newcommand{\lider}{\author}
\newcommand{\divisao}[1]{\def\@divisao{#1}}
\newcommand{\uniao}[1]{\def\@uniao{#1}}
\newcommand{\associacao}[1]{\def\@associacao{#1}}
\newcommand{\regiao}[1]{\def\@regiao{#1}}
\newcommand{\distrito}[1]{\def\@distrito{#1}}
\newcommand{\clube}[1]{\def\@clube{#1}}
\newcommand{\cidade}[1]{\def\@cidade{#1}}
\newcommand{\ano}[1]{\def\@ano{#1}}

\renewcommand{\thesection}{\Roman{section}}
\renewcommand{\thesubsection}{\arabic{subsection}}
\renewcommand{\thesubsubsection}{\alph{subsubsection})}
\renewcommand{\baselinestretch}{1.5}

\renewcommand{\maketitle}{%
    \newpage
    \thispagestyle{empty}
    \begin{center}
        \scshape\Large
        \@divisao \\
        \@uniao \\
        \@associacao \\
        \@regiao \\
        \@distrito \\
        \@clube \\
        \vfill
        \textbf{\Huge{Líder}} \\
        \vspace{1cm}
        \@author \\
        \vfill
        \@cidade \\
        \@ano
    \end{center}
    \newpage
}

\geometry{a4paper, left=3cm, top=3cm, right=2cm, bottom=2cm}

\pagestyle{fancy}
\fancyhead{}
\rhead{\@clube}
% \chead{\includegraphics[width=9mm]{l1.jpg}}
\lhead{\@author}
\fancyfoot{}
\cfoot{
% \includegraphics[width=5mm]{liasd.jpg}\space
\@associacao}
\rfoot{\thepage}