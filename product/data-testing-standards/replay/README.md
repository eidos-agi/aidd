# Replay

Same inputs through champion and challenger.

Compare:

- response codes and payloads
- durable side effects
- authorization decisions
- latency and cost
- traces that a later audit can reconstruct

Do not compare:

- internal table names
- log line wording
- framework-specific error objects

Shadow mode is allowed: production hits the champion authoritatively; the challenger executes non-authoritatively and diffs.

A deterministic replay from the same input, snapshot, configuration, and seed must produce equivalent authorized state. If it does not, that is a gate fail, not a “known flake.”
