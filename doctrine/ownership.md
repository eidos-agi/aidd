# Ownership

| Owner | Owns |
| --- | --- |
| Human | Product. Risk. Promotion. The oracle. |
| AI | Generation. Search. Mechanical execution. |

The evaluator lives in the champion. Preferably the public `product` repo, or a locked `product-evals` sibling. Generation repos (`product-vN`) may read public contracts. They may not edit held-out fixtures, reconciliation totals, cross-tenant probes, critic calibration, or quality thresholds.

If the same agent can change both candidate and acceptance suite in a single run, it can win by weakening tests.

Preserve across every rebuild — in the champion, not in `product-vN`:

- Versioned task and scenario corpus
- Gold outputs and machine-checkable invariants
- Traces, fixtures, and regression cases from every discovered failure
- Benchmark harness and held-out split
- Security and safety policy tests
- Cost, latency, reliability telemetry
- Decision records explaining which candidate won and why
- Validation personas, AI-artifact taxonomy, reader-simulation fixtures, and hard gates
- Plugin contracts, mechanical gates, critic calibration, approved visual corpus, and held-out plugin-evals
- Feature inventory, kill conditions, deletion proposals, and public-contract tombstones

Do not preserve:

- UI structure
- Internal service boundaries
- Framework and language choices
- Orchestrator internals
- Prompts and execution topology
- CI layout and deployment wiring

Those are candidates. They live in `product-vN` until a winner is pushed back to `product`.
