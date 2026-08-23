# Champion–challenger

Do not make a linear sequence:

```
product-v1 → product-v2 → product-v3 → product-v4
```

That assumes every successor is better and makes history look like progress even if quality has regressed.

Use search:

```
                     ┌── candidate A ──┐
product (champion) ──┼── candidate B ──┼── evaluation ──> next champion
                     └── candidate C ──┘
```

Each candidate can be a scratch repo, a Git worktree, or an ephemeral branch. Only a candidate that beats the champion under a fixed, broad evaluation suite becomes the next product.

Version numbers describe shipped artifacts. Repositories describe ownership and development boundaries. Do not name an active rewrite `product-v2` until v2 is a settled external contract. Call the work `next` until it earns a release.

A candidate that looks cleaner is not a promotion. A candidate that is cheaper and faster is not a promotion if it fails a hard gate.
