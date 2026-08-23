# CLAUDE.md — aidd

> The evals are the company. The code is a candidate.

## What This Is

AIDD is the operating model for AI-driven development. Isolated candidates. Frozen evals. Evidence-gated promotion. Implementation is disposable. The oracle is not.

This repo is knowledge. Skills and templates. A product later owns a binary.

## Skills

| Skill | What it does |
|---|---|
| `/aidd` | The method |
| `/aidd-rebuild` | Spin a clean-room generation against frozen evals |
| `/aidd-promote` | Score a challenger. Promote only on evidence |
| `/aidd-validate` | Grade an AI-produced artifact with an independent panel |
| `/aidd-plugin` | Add or use a plugin |
| `/aidd-mac` | Autonomous native Apple UI |

## Guardrails

1. A candidate must not redefine its own grading rubric.
2. Hard gates cannot be averaged away. A high score does not hide a tenant leak or a buried recommendation.
3. Failures become fixtures before the next generation.
4. Scheduled rewrites are banned. Rebuild on a trigger, not a calendar.
5. Humans own product, risk, promotion, and the oracle. AI owns generation, search, and mechanical execution.
6. Tests that can be rewritten to match the code are not tests.
7. Do not edit `validation-personas/`, plugin gates, or `product-evals/` in the same run that authors the artifact.

## Layout

Copy the four legs into a product repo:

```
product/
  ai-users/
  frontend-testing-standards/
  data-testing-standards/
  validation-personas/
```

Keep evals outside the candidate:

```
org/
  product/
  product-evals/
  plugin-evals/<id>/
  product-candidates/gen-NNN/
```

If the product has a native Apple surface, copy `plugins/mac-desktop/`. The builder does not approve its own UI.

## Related Forges

- **testr / shipr** — record the run
- **lessons.md** — keep what execution taught
- **story-forge** — listeners are the reward
- **forge-forge** — this forge is registered there
