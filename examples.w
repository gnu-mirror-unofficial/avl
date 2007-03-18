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
