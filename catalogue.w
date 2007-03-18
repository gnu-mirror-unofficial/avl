@c -*-texinfo-*-
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

@tex
\gdef\catentryleaders{\leaders\hbox to 1em{\hss.\hss}\hfill}
\gdef\catentry#1#2{\noindent #2\catentryleaders{}\refx{#1-pg}\*}
@end tex
@ifnottex
@macro catentry{ANCHOR, TITLE}
@noindent \TITLE\:
@flushright 
@ref{\ANCHOR\}
@end flushright
@end macro
@end ifnottex

@node Catalogue of Algorithms, Index, Answers to All the Exercises, Top
@appendix Catalogue of Algorithms

This appendix lists all of the algorithms described and implemented in
this book, along with page number references.  Each algorithm is
listed under the least-specific type of tree to which it applies,
which is not always the same as the place where it is introduced.  For
instance, rotations on threaded trees can be used in any threaded
tree, so they appear under ``Threaded Binary Search Tree Algorithms'',
despite their formal introduction later within the threaded AVL tree
chapter.

Sometimes multiple algorithms for accomplishing the same task are
listed.  In this case, the different algorithms are qualified by a few
descriptive words.  For the algorithm used in @libavl{}, the
description is enclosed by parentheses, and the description of each
alternative algorithm is set off by a comma.

@unnumberedsec Binary Search Tree Algorithms
@printcatalogue bst

@unnumberedsec AVL Tree Algorithms
@printcatalogue avl

@unnumberedsec Red-Black Tree Algorithms
@printcatalogue rb

@unnumberedsec Threaded Binary Search Tree Algorithms
@printcatalogue tbst

@unnumberedsec Threaded AVL Tree Algorithms
@printcatalogue tavl

@unnumberedsec Threaded Red-Black Tree Algorithms
@printcatalogue trb

@unnumberedsec Right-Threaded Binary Search Tree Algorithms
@printcatalogue rtbst

@unnumberedsec Right-Threaded AVL Tree Algorithms
@printcatalogue rtavl

@unnumberedsec Right-Threaded Red-Black Tree Algorithms
@printcatalogue rtrb

@unnumberedsec Binary Search Tree with Parent Pointers Algorithms
@printcatalogue pbst

@unnumberedsec AVL Tree with Parent Pointers Algorithms
@printcatalogue pavl

@unnumberedsec Red-Black Tree with Parent Pointers Algorithms
@printcatalogue prb
