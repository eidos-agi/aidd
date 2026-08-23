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
                     ┌── candidate A (add)     ──┐
product (champion) ──┼── candidate B (same)    ──┼── evaluation ──> next champion
                     └── candidate C (smaller) ──┘
```

The public sees the major upgrade. The org sees the competition that produced it.

## Doctrine

1. Code is a byproduct of intent, oracles, and fitness.
2. A rebuild is a new generation, not a confession.
3. Promotion is evidence-gated. Ties stay with the champion. A smaller candidate that holds the jobs is not a tie.
4. Tests that can be rewritten to match the code are not tests.
5. Humans own product, risk, promotion, and the oracle. AI owns generation, search, and mechanical execution.

See [doctrine/principles.md](doctrine/principles.md) and [doctrine/features-are-candidates.md](doctrine/features-are-candidates.md).

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
org/
  product/                 # current champion (what runs)
  product-evals/           # tests, corpus, scorer — versioned, mostly immutable
  plugin-evals/            # held-out plugin baselines and critic calibration
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
4. Scheduled rewrites are banned. Rebuild on a trigger.
5. Human sign-off is a gate, not a courtesy.
6. The generator does not choose, edit, or weaken the validation panel in the same run.
7. The builder does not approve its own UI. Plugin critics are part of the oracle.
8. The builder does not grade its own deletions. A feature without a job and a kill condition is undeclared surface.

## Related

- **testr / shipr** — record the run
- **lessons.md** — keep what execution taught
- **story-forge** — listeners are the reward
- **forge-forge** — registry

## License

MIT
