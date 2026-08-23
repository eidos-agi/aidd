# Three machines

Do not ask one agent to build, explore, and bless its own UI.

| Machine | Job | Input | Output |
| --- | --- | --- | --- |
| Builder | Implement | Requirement, design system, app | SwiftUI/AppKit diff |
| Explorer | Drive | Built app, simulator, task graph | Novel paths, packets, traces |
| Critic | Judge | Packets, contract, corpus, diff | Scores, violations, smallest fix |

The Critic receives only evidence: rendered UI, interaction traces, accessibility semantics, declared spec. Not the Builder's self-description of how good it is.

Explorer is not a release gate. It produces candidate tests.

Critic is not a decorator. High-confidence contract violations block.
