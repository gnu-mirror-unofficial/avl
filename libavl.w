\input texinfo
@c 
@c GNU libavl - library for manipulation of binary trees.
@c Copyright (C) 1998-2002, 2004 Free Software Foundation, Inc.
@c 
@c This program is free software; you can redistribute it and/or
@c modify it under the terms of the GNU General Public License as
@c published by the Free Software Foundation; either version 2 of
@c the License, or (at your option) any later version.
@c 
@c This program is distributed in the hope that it will be useful,
@c but WITHOUT ANY WARRANTY; without even the implied warranty of
@c MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
@c General Public License for more details.
@c 
@c You should have received a copy of the GNU General Public License
@c along with this program; if not, write to: Free Software
@c Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
@c 02111-1307, USA.
@c 
@c The author may be contacted as blp@gnu.org on the Internet, or
@c write to Ben Pfaff, Stanford University, Computer Science Dept.,
@c 353 Serra Mall, Stanford CA 94305, USA.

@c @libavl{} macro
@iftex
@macro libavl{}
@sc{Libavl}
@end macro
@end iftex

@c %**start of header
@setfilename libavl.info
@settitle GNU libavl 2.0.2
@c %**end of header
@setchapternewpage odd

@c @libavl{} macro
@ifnottex
@macro libavl{}
libavl
@end macro
@end ifnottex

@c @bibref{} macro
@iftex
@macro bibref{cite}
[\cite\]
@end macro
@end iftex
@ifinfo
@ifclear PLAINTEXT
@macro bibref{cite}
@ref{\cite\}
@end macro
@end ifclear
@ifset PLAINTEXT
@macro bibref{cite}
[\cite\]
@end macro
@end ifset
@end ifinfo
@ifhtml
@macro bibref{cite}
[@ref{\cite\}]
@end macro
@end ifhtml

@c References clauses
@ifinfo
@macro references
@noindent See also:@w{ }
@end macro
@end ifinfo
@ifnotinfo
@macro references
@noindent @strong{See also:}@w{ }
@end macro
@end ifnotinfo
@macro bibdfn{cite}
@noindent @anchor{\cite\}
[\cite\].@w{  }
@end macro

@macro WEB{}
@t{WEB}
@end macro

@macro TexiWEB{}
TexiWEB
@end macro

@c METAFONT logo
@tex
\global\font\logo=logo10
\global\def\MF{\strut\hbox{\logo METAFONT}}\def\.#1{\strut\hbox{\tt #1}}
@end tex
@ifnottex
@macro MF{}
METAFONT
@end macro
@end ifnottex

@c Using italics for definitions makes them look like identifiers.
@iftex
@alias dfn=b
@end iftex

@c Centered dots for typesetting relations.
@ifnottex
@alias cdots=dots
@end ifnottex

@c Glossary references
@iftex
@macro gloss{term}
@dfn{\term\}
@end macro
@end iftex
@ifnottex
@ifclear PLAINTEXT
@macro gloss{term}
@dfn{\term\} (@pxref{\term\})
@end macro
@end ifclear
@ifset PLAINTEXT
@macro gloss{term}
@dfn{\term\}
@end macro
@end ifset
@end ifnottex
@macro glossdfn{term}
@anchor{\term\}
@dfn{\term\}:
@end macro

@c Nice mathematics or ASCII mathematics, depending on format
@iftex
@macro altmath{TEX, ASCII}
@tex
$\TEX\$@unskip
@end tex
@end macro
@end iftex
@ifnottex

@macro altmath{TEX, ASCII}
@math{\ASCII\}
@end macro
@end ifnottex
@macro comma
,
@end macro

@c Similar to @pxref{} but produces only a page number in TeX output.
@tex
\gdef\pageref#1{\putwordsee{} \xpagerefX[#1,,,,,,,]}
\gdef\xpagerefX[#1,#2,#3,#4,#5,#6]{\begingroup
  \unsepspaces
  \def\printedmanual{\ignorespaces #5}%
  \setbox1=\hbox{\printedmanual}%
  \ifpdf
    \leavevmode
    \getfilename{#4}%
    \ifnum\filenamelength>0
      \startlink attr{/Border [0 0 0]}%
        goto file{\the\filename.pdf} name{#1@@}%
    \else
      \startlink attr{/Border [0 0 0]}%
        goto name{#1@@}%
    \fi
    \linkcolor
  \fi
  % page 3
  \turnoffactive \putwordpage\tie\refx{#1-pg}{}%
  \endlink
\endgroup}
@end tex
@ifnottex
@alias pageref=pxref
@end ifnottex

@tex
\gdef\putwordShortTOC{Brief Contents}
@end tex

@setheaderfile libavl.hdr
@setanswerfile libavl.ans
@include libavl.hdr

@titlepage
@titlefont{An Introduction to}
@sp 1
@title Binary Search Trees and Balanced Trees
@subtitle @libavl{} Binary Search Tree Library
@subtitle Volume 1: Source Code
@subtitle Version 2.0.2

@vskip 0pt plus 1filll
@center @image{cover}

@author by Ben Pfaff
@page
@vskip 0pt plus 1filll

Copyright @copyright{} 1998--2002, 2004 Free Software Foundation, Inc.

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or (at
your option) any later version.

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to:

@display
Free Software Foundation, Inc.
59 Temple Place - Suite 330
Boston, MA 02111-1307
UNITED STATES
@end display

The author may be contacted as @email{blp@@gnu.org} on the Internet, or
write to:

@display
Ben Pfaff
Stanford University
Computer Science Dept.
353 Serra Mall
Stanford CA 94305
UNITED STATES
@end display
@end titlepage

@shortcontents
@contents

@ifnottex
@node Top, Preface, (dir), (dir)
@top GNU @libavl{} 2.0.2

@menu
* Preface::
* Introduction::                
* The Table ADT::               
* Search Algorithms::           
* Binary Search Trees::         
* AVL Trees::                   
* Red-Black Trees::             
* Threaded Binary Search Trees::  
* Threaded AVL Trees::          
* Threaded Red-Black Trees::    
* Right-Threaded Binary Search Trees::  
* Right-Threaded AVL Trees::    
* Right-Threaded Red-Black Trees::  
* BSTs with Parent Pointers::   
* AVL Trees with Parent Pointers::  
* Red-Black Trees with Parent Pointers::  
* References::                  
* Supplementary Code::          
* Glossary::                    
* Answers to All the Exercises::
* Catalogue of Algorithms::     
* Index::
@end menu

@end ifnottex

@include preface.w
@include intro.w
@include table.w
@include search-alg.w

@include bst.w
@include avl.w
@include rb.w

@include tbst.w
@include tavl.w
@include trb.w

@include rtbst.w
@include rtavl.w
@include rtrb.w

@include pbst.w
@include pavl.w
@include prb.w

@include references.w
@include extra.w
@include glossary.w

@node Answers to All the Exercises, Catalogue of Algorithms, Glossary, Top
@appendix Answers to All the Exercises

@include libavl.ans

@include catalogue.w
@node Index, , Catalogue of Algorithms, Top
@appendix Index

@printindex cp

@bye

@c Local Variables:
@c mode: texinfo
@c End:
