# Generations

The generation is a repo. The public name stays the product.

```
product      ← champion. evals. what the world clones.
product-v1   ← first bounded bash. AI works here.
product-v2   ← next evolution. clean slate against frozen evals.
product-v3   ← ...
```

## Open a generation

1. A trigger in `doctrine/rebuild-triggers.md` fires. Not a calendar.
2. Freeze the evaluator in the champion. Record its version.
3. Create `github.com/<org>/<product>-vN`. Empty of champion internals.
4. Write `GENERATION.md` and `templates/run-manifest.yaml`.
5. Point `EVALS.md` at the champion. Public contracts are readable. Held-out is not.
6. Build from the thesis. The champion is an oracle, not a template.
7. Convert every novel failure into a fixture in the champion before asking for `vN+1`.

## Promote a generation

1. Score `product-vN` against the frozen suite in `product`.
2. Hard gates first. Any fail is a reject.
3. Fitness second. Ties stay with the champion. A smaller candidate that holds every remaining job is a promotion.
4. Human signs. AI does not promote.
5. If promoted: tag `legacy-v{N-1}-final` on `product`, push `product-vN` into `product`, leave the generation repo as evidence.
6. If rejected: keep `product-vN`. Do not delete the miss.

## Naming

| Name | Meaning |
| --- | --- |
| `product` | Public champion. Always. |
| `product-v1` | First generation repo. |
| `product-v2` | Second generation repo. A challenger. |
| `product-v2-smaller` | Concurrent subtractive thesis. Optional. |
| `legacy-v1-final` | Tag on `product` for the outgoing champion. |

Do not name an unearned rewrite `v2` inside the champion. The repo is the name. The tag is the history.
