# Ownership

| Owner | Owns |
| --- | --- |
| Human | Product. Risk. Promotion. The oracle. |
| AI | Generation. Search. Mechanical execution. |

The evaluator lives outside the candidate. Preferably a separate repository or a locked CI artifact. If the same agent can change both candidate and acceptance suite in a single run, it can win by weakening tests.

Preserve across every rebuild:

- Versioned task and scenario corpus
- Gold outputs and machine-checkable invariants
- Traces, fixtures, and regression cases from every discovered failure
- Benchmark harness and held-out split
- Security and safety policy tests
- Cost, latency, reliability telemetry
- Decision records explaining which candidate won and why

Do not preserve:

- UI structure
- Internal service boundaries
- Framework and language choices
- Orchestrator internals
- Prompts and execution topology
- CI layout and deployment wiring

Those are candidates.
