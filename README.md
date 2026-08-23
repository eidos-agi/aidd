# aidd

> The evals are the company. The code is a candidate.

Latest promoted copy of AIDD. This repo is not special. It is whoever last won.

Work happens in the generation repos. When a generation wins, it is copied here so the public sees the upgrade.

| Repo | Role |
| --- | --- |
| [`eidos-agi/aidd`](https://github.com/eidos-agi/aidd) | Latest copy of the winner. Overwritten on promote. |
| [`eidos-agi/aidd-v1`](https://github.com/eidos-agi/aidd-v1) | Generation 1. Working. |
| [`eidos-agi/aidd-v2`](https://github.com/eidos-agi/aidd-v2) | Generation 2. Not started. |
| [`eidos-agi/aidd-v3`](https://github.com/eidos-agi/aidd-v3) | Generation 3. Not started. |

```
v1 ──▶ v2 ──▶ v3     work
        │
        └── copy winner ──▶ aidd     public
```

`v2` is not automatically better than `v1`. A higher number is a generation, not a successor. Promotion is evidence-gated. If it does not beat the current latest, it does not get copied here.

Do not bash in this repo. It will be overwritten. Bash in `aidd-vN`.

## Why

AI made rebuilds cheap. It did not make semantic parity cheap. Each generation is a repo so an agent can bash without inheriting the last tree as a prison. The public name stays `aidd`.

Evals travel with the generation. They accumulate. They copy forward into the next `vN`. They land here as part of the snapshot. They are not a privilege of this repo.

## Doctrine

1. `product` is the latest copy of the winner. Not an oracle. Not a workspace.
2. `product-v1`, `product-v2`, `product-v3` are the work.
3. Promote by copying the winning `vN` onto `product`.
4. Tests that can be rewritten to match the code are not tests.
5. Humans own product, risk, promotion, and the oracle. AI owns generation, search, and mechanical execution.
6. Verifiability sets the automation ceiling. What you cannot check, a human still owns.

See [layout/generations.md](layout/generations.md), [doctrine/principles.md](doctrine/principles.md), [doctrine/field.md](doctrine/field.md).

## The five legs

Every generation carries:

```
product/
  ai-users/
  frontend-testing-standards/
  data-testing-standards/
  validation-personas/
  simplicity-standards/
```

- **ai-users** — personas as executable users.
- **frontend-testing-standards** — journeys, accessibility, visual states.
- **data-testing-standards** — policy, contracts, fixtures, oracles, replay.
- **validation-personas** — independent reviewers of AI-produced artifacts.
- **simplicity-standards** — features are candidates. Burden, kill conditions.

Do not collapse them. A regenerated UI can look great while the system duplicates records.

## Plugins

Legs are universal. Plugins are optional. Copy the pack that matches the shipped surface: `mac-desktop`, `iphone`, `ipad`, `nextjs-shadcn`. A green suite on one is inadmissible on the others.

## Skills

| Skill | What it does |
|---|---|
| `/aidd` | The method |
| `/aidd-rebuild` | Open or continue `product-vN` |
| `/aidd-promote` | Score `product-vN`. If it wins, copy it onto `product` |
| `/aidd-validate` | Grade an AI-produced artifact with an independent panel |
| `/aidd-plugin` | Add or use a plugin |
| `/aidd-mac` `/aidd-iphone` `/aidd-ipad` `/aidd-next` | Surface packs |
| `/aidd-prune` | Kill unearned surface |

## Guardrails

1. Do not bash in `product`. Bash in `product-vN`.
2. A candidate must not redefine its own grading rubric.
3. Hard gates cannot be averaged away.
4. Failures become fixtures before the next generation.
5. Scheduled rewrites are banned. Open `vN` on a trigger.
6. Human sign-off is a gate. AI does not promote.
7. A public eval the builder can see is not held-out.

## License

MIT
