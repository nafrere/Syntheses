\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{eplexam}[2015/03/06 EPL exam class]

% We do not license exams under CC-BY-SA since part of
% the documents are work of professors.

% I need to pass license=none to eplbase so I cannot just do
% \LoadClassWithOptions because it ignores \PassOptionsToClass.
% I need to pass every option manually with the 2 following lines
% and then use \LoadClass
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{../../../../../../eplbase}}
\ProcessOptions\relax
\PassOptionsToClass{license=none}{../../../../../../eplbase}

\newcommand*{\Majmin}{}

\LoadClassWithOptions{../../../../../../epleval}

\IfLanguageName{english}{
\newcommand{\Epltype}{Exam}
\newcommand{\epltypesingular}{exam}
}{% else IfLanguageName{english}
\newcommand{\Epltype}{Examen}
\newcommand{\epltypesingular}{examen} % version au singulier
\newcommand{\epltypedefadj}{l'} % adjectif défini à utiliser au singulier
\newcommand{\epltypegender}{} % marque du genre ; masculin donc rien
}% end else IfLanguageName{english}

\endinput
