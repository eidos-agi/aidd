# Champion–challenger

Products get versioned generation repos:

```
product      ← champion. public. evals live here.
product-v1   ← generation 1. AI bashes a version here.
product-v2   ← generation 2. clean slate against frozen evals.
product-v3   ← ...
```

Each `vN` is a challenger. It is not a successor. A higher number does not mean better. Promotion is evidence-gated. Ties stay with the champion.

```
                     ┌── product-v2            ──┐
product (champion) ──┼── product-v2-smaller    ──┼── evaluation ──> next champion
                     └── product-v2-add        ──┘
```

The public name stays `product`. Winners get pushed back. The public sees the upgrade. The org keeps the generations.

Do not bash in the champion. Do not clone the champion’s internals as a template. The champion is an oracle.

A smaller candidate that holds every remaining user job and every hard gate is a promotion. Search the subtractive half of the space. See `doctrine/features-are-candidates.md`.

A candidate that looks cleaner is not a promotion. A candidate that is cheaper and faster is not a promotion if it fails a hard gate. A candidate that deletes a job to look simple is not a promotion. A candidate that edits its own grader is not a candidate.
