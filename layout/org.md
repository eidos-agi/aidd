# Org layout

`product` is the latest copy of the winner. Generations are sibling repos. Promote by copying.

```
github.com/<org>/
  product/                 # latest promoted copy. public. overwritten on promote.
  product-v1/              # generation 1. AI bashes here.
  product-v2/              # generation 2. next evolution.
  product-v3/              # generation 3. next evolution.
```

AIDD applied to itself:

```
github.com/eidos-agi/
  aidd/                    # latest copy of the winner
  aidd-v1/                 # generation 1
  aidd-v2/                 # generation 2
  aidd-v3/                 # generation 3
```

`aidd` is not a champion. It is a pointer. The generation that last won is sitting there as a snapshot.

`product-v2` is a generation, not a successor. It can lose. If it loses, `product` still holds `v1` (or whoever last won). The public name never becomes `product-v2`.

Evals live in the generation and copy forward. They arrive in `product` only because they were part of the winner. The next `vN` copies them out of the current latest and must beat them. Do not weaken them.

When a generation wins: copy `product-vN` → `product`. Tag the previous snapshot (`legacy-v1`). Keep `product-vN` as history. Do not delete a miss.

Do not bash in `product`. It will be overwritten.
