# Org layout

One public canonical product. Versioned generation repos. Evals in the champion.

```
github.com/<org>/
  product/                 # champion. what the public sees. evals live here.
  product-v1/              # generation 1. AI bashes a version here.
  product-v2/              # generation 2. clean slate against frozen evals.
  product-v3/              # ...
  product-evals/           # optional. only if evals are not already in product/
```

AIDD applied to itself:

```
github.com/eidos-agi/
  aidd/                    # champion
  aidd-v1/                 # generation 1
  aidd-v2/                 # not opened until a trigger fires
```

`product-v2` is a challenger, not a successor. It can lose. Do not assume the higher number is better. That is ceremony, not search.

You may open concurrent theses (`product-v2`, `product-v2-smaller`) when search needs it. Record a run manifest: base champion, prompts, agent/model versions, tool permissions, environment digest, evaluator version, metrics, promotion decision.

Candidates may read the public contract in `product/`. They may not edit held-out fixtures, reconciliation totals, cross-tenant probes, or quality thresholds.

When a challenger wins, push it back to `product`. Tag the outgoing champion (`legacy-v1-final`). Archive the generation repo once it has no unique value. The public sees the upgrade. The org keeps the generations.

Do not bash in the champion. The champion is what runs and what grades.
