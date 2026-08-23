# Evals

The durable asset. Implementation is disposable. This is not.

## Three corpora

| Corpus | Who may see it | When it runs |
| --- | --- | --- |
| Public | Candidates. They will overfit it. | Every bash. |
| Held-out | Promotion controller only. | Promotion. Never during generation. |
| Production-shadow | Nobody authors it. The world does. | Before cutover. |

If the builder can read a case, it is public. Do not call it held-out.

## Error analysis is the loop

```
trace or incident
  → minimized reproducible fixture
  → contract / invariant / journey
  → public or held-out, by sensitivity
  → every future product-vN must pass it
```

Do not start with infrastructure. Start with a failure you can replay.

## Teeth

Before you trust a suite, mutate the candidate. If the suite stays green, the suite is not a suite.

Planted bugs the evals must catch:

- tenant leak
- double write
- dropped job
- buried recommendation
- undeclared surface
- grader edited by the candidate

## Hard gates cannot be averaged away

A high fitness score does not hide a failed gate. `pass^k`: k independent greens, not one.

## Future-weighted fitness

Score the generation on whether the next generation is still possible. A candidate that wins today by poisoning tomorrow is a reject. See EvoScore in `doctrine/field.md`.

## Ownership

The champion owns the grader. `product-vN` may read public contracts. It may not edit held-out fixtures, thresholds, critic calibration, or plugin-evals in the same run that authors the candidate.
