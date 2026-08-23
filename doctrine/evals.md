# Evals

The durable asset. They travel with the generation. `product` only has them because a winner brought them.

## They copy forward

```
v1 evals ──▶ v2 evals ──▶ v3 evals
                │
                └── arrive in product as part of the copy
```

The next generation starts from the evals in the current latest. It may add. It may not weaken.

## Three corpora

| Corpus | Who may see it | When it runs |
| --- | --- | --- |
| Public | The generation. They will overfit it. | Every bash. |
| Held-out | Promotion only. | Promote. Never during generation. |
| Production-shadow | Nobody authors it. The world does. | Before copy-back. |

If the builder can read a case, it is public. Do not call it held-out. Do not store held-out only in `product` and hope. Freeze it from the previous generation.

## Error analysis is the loop

```
trace or incident
  → minimized reproducible fixture
  → contract / invariant / journey
  → copied into every later product-vN
```

Do not start with infrastructure. Start with a failure you can replay.

## Teeth

Mutate the candidate. If the suite stays green, the suite is theater.

## Hard gates cannot be averaged away

`pass^k`: k independent greens, not one lucky run.

A generation that poisons the next generation is a reject. See EvoScore in `doctrine/field.md`.
