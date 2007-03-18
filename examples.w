@c GNU libavl - library for manipulation of binary trees.
@c Copyright (C) 1998, 1999, 2000, 2001, 2002, 2004 Free Software
@c Foundation, Inc.
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
@c Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 
@c 02110-1301 USA.

@<Clear hash table entries@> =
for (i = 0; i < hash->m; i++)
  hash->entry[i] = NULL;
@

@<Initialize hash table@> =
hash->m = 13;
@<Clear hash table entries@>
@

@<Initialize hash table@> +=
hash->n = 0;
@
