# Org layout

One public canonical product. Separate evals. Disposable candidates.

```
org/
  product/                 # champion implementation — what customers run
  product-evals/           # tests, corpus, scorer — versioned, mostly immutable
  product-candidates/      # challenger implementations
    gen-014/
    gen-015/
```

Candidate code may also live in ephemeral repos or worktrees. Record a run manifest: base commit, prompts, agent/model versions, tool permissions, environment digest, evaluator version, metrics, promotion decision.

`product-evals/` is independently owned. Candidates may read the public contract. They may not edit held-out fixtures, reconciliation totals, cross-tenant probes, or quality thresholds.

When a challenger wins, the public repository is replaced by promotion, not by a file copy across repos. Tag the outgoing champion (`legacy-gen-014-final`). Make the new implementation canonical. Archive the candidate once it has no unique value.
