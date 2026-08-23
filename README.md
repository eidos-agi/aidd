# aidd

> The evals are the company. The code is a candidate.

AI-driven development. Implementation is disposable. Intent, oracles, and fitness are not.

Part of the [Eidos AGI](https://github.com/eidos-agi) forge ecosystem.

This repo is knowledge. Skills, doctrine, and templates. Not a runtime.

## Why

AI made rebuilds cheap. It did not make semantic parity cheap. The durable system is the evaluator.

A linear sequence of `product-v1`, `product-v2`, `product-v3` assumes every successor is better. That is ceremony, not search.

Use champion–challenger:

```
                     ┌── candidate A ──┐
product (champion) ──┼── candidate B ──┼── evaluation ──> next champion
                     └── candidate C ──┘
```

The public sees the major upgrade. The org sees the competition that produced it.

## Doctrine

1. Code is a byproduct of intent, oracles, and fitness.
2. A rebuild is a new generation, not a confession.
3. Promotion is evidence-gated. Ties stay with the champion.
4. Tests that can be rewritten to match the code are not tests.
5. Humans own product, risk, promotion, and the oracle. AI owns generation, search, and mechanical execution.

See [doctrine/principles.md](doctrine/principles.md).

## The three legs

Every product repo carries:

```
product/
  ai-users/
  frontend-testing-standards/
  data-testing-standards/
```

- **ai-users** — personas as executable users. Goals, jobs, failure modes, acceptance.
- **frontend-testing-standards** — journeys, accessibility, visual states, interaction contracts.
- **data-testing-standards** — policy, contracts, fixtures, oracles, replay.

For autonomous rebuilds, data standards are often the most important of the three. A regenerated UI can look great while the system silently duplicates records.

## Org layout

```
org/
  product/                 # current champion (what runs)
  product-evals/           # tests, corpus, scorer — versioned, mostly immutable
  product-candidates/      # challenger implementations
    gen-014/
    gen-015/
```

Do not name an active rewrite `product-v2` until v2 is a settled external contract. Call it `next` until it earns a release.

## Skills

| Skill | What it does |
|---|---|
| `/aidd` | The method |
| `/aidd-rebuild` | Spin a clean-room generation against frozen evals |
| `/aidd-promote` | Score a challenger. Promote only on evidence |

## Guardrails

1. A candidate must not redefine its own grading rubric.
2. Hard gates cannot be averaged away.
3. Failures become fixtures before the next generation.
4. Scheduled rewrites are banned. Rebuild on a trigger.
5. Human sign-off is a gate, not a courtesy.

## Related

- **testr / shipr** — record the run
- **lessons.md** — keep what execution taught
- **story-forge** — listeners are the reward
- **forge-forge** — registry

## License

MIT
