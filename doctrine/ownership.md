# Ownership

| Owner | Owns |
| --- | --- |
| Human | Product. Risk. Promotion. The oracle. |
| AI | Generation. Search. Mechanical execution. |

`product` is a published snapshot. It does not own the grader in any privileged way. The grader lives in the generation, copies forward, and lands in `product` only as part of a promote.

Generation repos (`product-vN`) may add fixtures. They may not delete or weaken fixtures that arrived from the previous winner.

If the same agent can change both candidate and acceptance suite in a single run, it can win by weakening tests.

Preserve across every rebuild — copy forward, do not leave only in `product`:

- Versioned task and scenario corpus
- Gold outputs and machine-checkable invariants
- Traces, fixtures, and regression cases from every discovered failure
- Held-out split the builder cannot see
- Security and safety policy tests
- Cost, latency, reliability telemetry
- Decision records explaining which generation was copied back, and why
- Validation personas, plugin contracts, feature inventory, kill conditions

Do not preserve as sacred:

- UI structure
- Internal service boundaries
- Framework and language choices
- Prompts and execution topology

Those are candidates. They live in `product-vN` until a winner is copied onto `product`.
