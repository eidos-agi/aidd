# simplicity-standards

The feature is a candidate. Unused surface is a failed generation.

`ai-users/` ask: can this person finish the job?
`frontend-testing-standards/` ask: does the surface still work?
`data-testing-standards/` ask: is the state trustworthy?
`validation-personas/` ask: is the artifact fit for a reader?
`simplicity-standards/` ask: should this still exist?

Those are different questions. Do not fold this into a rebuild trigger or a cost footnote. Rebuilds are rare. Pruning is continuous.

## Why this is a new stool

The other legs are conservative. They protect behavior. They cannot prefer absence. A passing suite will carry a zombie flag, a second settings page, and a noun nobody can define until the next generation is afraid to touch them.

Agents systematically add. Without a stool whose job is subtraction, champion-challenger only searches the additive half of the space.

## What it measures

Not lines of code. LOC is a smell.

Burden, in order:

| Dimension | Question |
| --- | --- |
| Jobs | Which `ai-users` job does this feature earn? None = undeclared. |
| Nouns | Did we add a durable domain concept? |
| Paths | Did we add a user-visible journey? |
| Flags | Did we add a permanent fork in behavior? |
| State | Did we add a durable shape, event, or field? |
| Contracts | Did we add a public API, file format, or event others depend on? |
| Dependencies | Did we take a new runtime or vendor into the champion? |
| Incidents | Does this surface attract failures, support, or exception paths? |

A feature that cannot name its job and its kill condition is undeclared surface. Undeclared surface fails this leg.

## Two taxes

**To add:** write the feature into the inventory with a job, a burden, and a kill condition. No kill condition, no merge.

**To remove:** write a deletion proposal with evidence. Run every remaining job and every other-leg hard gate. Public contracts need a sunset and a human signature.

The Pruner is not the Builder. The Builder does not grade its own deletions.

## How it is used

```
inventory
  -> map each feature to a job
  -> undeclared surface is a fail
  -> propose deletions with evidence
  -> run remaining jobs + frozen gates
  -> smaller and holding promotes
  -> human signs public sunsets
```

See `templates/feature.yaml` and `templates/deletion-proposal.yaml`.
