# Generations

The generation is a repo. The public name is a copy of whoever last won.

```
product      ← latest copy. overwritten on promote. not a workspace.
product-v1   ← generation 1. work.
product-v2   ← generation 2. work.
product-v3   ← generation 3. work.
```

```
v1 ──▶ v2 ──▶ v3
        │
        └── copy winner ──▶ product
```

## Open a generation

1. A trigger in `doctrine/rebuild-triggers.md` fires. Not a calendar.
2. Create or continue `github.com/<org>/<product>-vN`.
3. Copy evals forward from the current latest (`product`, which is the last winner). Add fixtures. Do not weaken what arrived.
4. Write `GENERATION.md`. Build from the thesis.
5. Do not bash in `product`.

## Promote a generation

1. Score `product-vN` against the evals that shipped with the current latest.
2. Hard gates first. Any fail is a reject.
3. Fitness second. Ties stay with what is already in `product`.
4. Human signs. AI does not promote.
5. If promoted: tag the current `product` snapshot, copy `product-vN` onto `product`, leave `product-vN` as history.
6. If rejected: keep `product-vN`. Do not delete the miss.

## Naming

| Name | Meaning |
| --- | --- |
| `product` | Latest copy of the winner. Always. |
| `product-v1` | Generation 1 repo. |
| `product-v2` | Generation 2 repo. |
| `product-v3` | Generation 3 repo. |
| `legacy-v1` | Tag on `product` for the snapshot `v2` replaced. |
