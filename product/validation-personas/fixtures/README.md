# fixtures

Minimized examples. Not the current champion's full output.

```
known-good/   # exceptional work you would still ship after a rebuild
known-bad/    # one failure mode each
```

When a panel finds a new miss:

1. Cut it to the smallest artifact that still fails.
2. Name the gate, taxonomy id, or persona that must catch it.
3. Put a public copy here.
4. Put a held-out variation in `product-evals/` if the failure is load-bearing.

The candidate may read public fixtures. It may not edit held-out copies.
