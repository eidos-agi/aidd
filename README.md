# aidd

> The evals are the company. The code is a candidate.

AI-driven development. Implementation is disposable. Intent, oracles, and fitness are not.

Part of the [Eidos AGI](https://github.com/eidos-agi) forge ecosystem.

This repo is the champion. Knowledge, evals, skills, templates. Not a runtime.

Generations are sibling repos. AI bashes there. Winners get pushed back here. The public name stays `aidd`.

| Repo | Role |
| --- | --- |
| [`eidos-agi/aidd`](https://github.com/eidos-agi/aidd) | Champion. Public. Evals live here. |
| [`eidos-agi/aidd-v1`](https://github.com/eidos-agi/aidd-v1) | Generation 1. First bounded bash. |
| `eidos-agi/aidd-v2` | Generation 2. Opened on a trigger, not a calendar. |

## Why

AI made rebuilds cheap. It did not make semantic parity cheap. The durable system is the evaluator.

Products get versioned generation repos:

```
github.com/<org>/
  product/        # champion. what the public sees. evals live here.
  product-v1/     # generation 1. AI bashes a version here.
  product-v2/     # generation 2. clean slate against frozen evals.
  product-v3/     # ...
```

`product-v2` is a challenger, not a successor. It can lose. Promotion is evidence-gated. Ties stay with the champion.

You can open two theses at once (`product-v2`, `product-v2-smaller`) if search needs it. Do not schedule vN on a calendar. See [layout/generations.md](layout/generations.md).

## Doctrine

1. Code is a byproduct of intent, oracles, and fitness.
2. A rebuild is a new generation repo, not a confession.
3. Promotion is evidence-gated. Ties stay with the champion. A smaller candidate that holds the jobs is not a tie.
4. Tests that can be rewritten to match the code are not tests.
5. Humans own product, risk, promotion, and the oracle. AI owns generation, search, and mechanical execution.
6. The generation is `product-vN`. The public name stays `product`. Do not bash in the champion.
7. Verifiability sets the automation ceiling. What you cannot check, a human still owns.

See [doctrine/principles.md](doctrine/principles.md), [doctrine/champion-challenger.md](doctrine/champion-challenger.md), and [doctrine/field.md](doctrine/field.md).

## The five legs

Every product repo carries:

```
product/
  ai-users/
  frontend-testing-standards/
  data-testing-standards/
  validation-personas/
  simplicity-standards/
```

- **ai-users** — personas as executable users. Goals, jobs, failure modes, acceptance.
- **frontend-testing-standards** — journeys, accessibility, visual states, interaction contracts.
- **data-testing-standards** — policy, contracts, fixtures, oracles, replay.
- **validation-personas** — independent reviewers of AI-produced artifacts. Decision usefulness, evidence, human reading, AI-isms.
- **simplicity-standards** — features are candidates. Burden, kill conditions, evidence-gated deletion.

`ai-users` test whether a person can finish a job in the product. `validation-personas` test whether an artifact the product produced is fit for a real reader. `simplicity-standards` test whether a feature still earns its existence. Do not collapse them.

For autonomous rebuilds, data standards are often the most important of the operational legs. A regenerated UI can look great while the system silently duplicates records. When the product *writes* for humans — memos, case studies, briefs — validation-personas is the gate. When the product only grows, simplicity-standards is the gate. Aidd without it is an accumulation engine.

## Plugins

Aidd has plugins. Legs are universal. Plugins are optional.

A plugin is a capability pack for a surface the five legs do not fully cover. It may extend a leg. It may not weaken one.

```
plugins/
  mac-desktop/            # macOS windows, menus, pointer
  iphone/                 # compact phone: thumb, tab bar, interruptions
  ipad/                   # regular width: sidebar, Split View, multi-window
  nextjs-shadcn/          # App Router + shadcn: Playwright, Radix, tokens
```

See [plugins/README.md](plugins/README.md) and [layout/plugins.md](layout/plugins.md).

Apple surfaces are siblings, not an "iOS" umbrella. A green iPad suite is inadmissible on iPhone. Web is `nextjs-shadcn`, not a 390px stand-in for `iphone`. XCTest or Playwright decides go/no-go. An independent critic judges taste. Humans author new product direction.

## Org layout

```
github.com/<org>/
  product/                 # champion. public. evals live here.
  product-v1/              # generation 1. AI bashes here.
  product-v2/              # generation 2. clean slate.
  product-evals/           # optional. only if evals are not already in product/
```

AIDD keeps evals in `aidd` because they are the company. Candidates read public contracts. They do not edit held-out fixtures, reconciliation totals, cross-tenant probes, or quality thresholds.

When a challenger wins, it is pushed back to `product`. Tag the outgoing champion (`legacy-v1-final`). The public sees the upgrade. The org keeps the generations.

## Skills

| Skill | What it does |
|---|---|
| `/aidd` | The method |
| `/aidd-rebuild` | Open `product-vN` against frozen evals |
| `/aidd-promote` | Score `product-vN`. Promote only on evidence. Push back to `product` |
| `/aidd-validate` | Grade an AI-produced artifact with an independent panel |
| `/aidd-plugin` | Add or use a plugin. Do not invent one to rename a leg |
| `/aidd-mac` | Autonomous macOS desktop UI |
| `/aidd-iphone` | Autonomous iPhone UI. Compact. Not iPad |
| `/aidd-ipad` | Autonomous iPad UI. Regular width. Not a stretched iPhone |
| `/aidd-next` | Autonomous Next.js + shadcn. Playwright is the gate |
| `/aidd-prune` | Kill unearned surface. Smaller and holding is a promotion |

## Guardrails

1. A candidate must not redefine its own grading rubric.
2. Hard gates cannot be averaged away.
3. Failures become fixtures before the next generation.
4. Scheduled rewrites are banned. Rebuild on a trigger. The trigger opens `product-vN`.
5. Human sign-off is a gate, not a courtesy.
6. The generator does not choose, edit, or weaken the validation panel in the same run.
7. The builder does not approve its own UI. Plugin critics are part of the oracle.
8. The builder does not grade its own deletions. A feature without a job and a kill condition is undeclared surface.
9. A public eval the builder can see is not held-out. Goodhart is a hard problem, not a footnote.

## Related

- **testr / shipr** — record the run
- **lessons.md** — keep what execution taught
- **story-forge** — listeners are the reward
- **forge-forge** — registry

## License

MIT
