# data-testing-standards

Whether the system’s state, events, pipelines, and derived outputs are trustworthy.

Five layers:

1. **Policy** — freshness, lineage, PII, required grain, pass/fail.
2. **Contracts** — schema + grain + invariants. Not just “has a table.”
3. **Fixtures** — golden cases. Nulls, late events, duplicates, timezone, PII, bad IDs.
4. **Oracles** — SQL and metric assertions independent of app code.
5. **Replay** — same data through champion and challenger.

At-least-once delivery. Exactly-once business effect. Do not require magical exactly-once transport.

For every newly discovered failure:

```
incident or failed simulation
  → minimized reproducible fixture
  → contract / invariant or regression test
  → preserved here
  → every future rebuild must pass it
```

This folder is the long-term memory of the autonomous engineering system.
