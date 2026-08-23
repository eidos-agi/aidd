# validation-personas

Independent reviewers of AI-produced artifacts. Not product users. Not a single judge model.

`ai-users/` ask: can this person finish the job?
`validation-personas/` ask: would a real reader trust this, understand it in time, and know what to do next?

A candidate that is fluent, structured, and still useless to a senior reader does not promote.

## Why this exists

Ordinary AI testing optimizes easy proxies: JSON shape, required headings, a judge saying "good." Those miss the actual question:

> Would an intelligent, time-constrained human trust this, find the decision, and know the next action?

Decision usefulness is not an average.

```
Decision usefulness
  = factual integrity
  + analytical rigor
  + reader comprehension
  + credibility
  + actionability
  - AI artifacts
  - unsupported confidence
  - cognitive friction
```

Hard gates first. Then score dimensions separately. Then name the constraint. Then emit the top three remediations. Do not hide a buried recommendation behind an 8.4.

## What it is not

- A catalog of frozen "be a CFO" prompts.
- A replacement for `ai-users/`.
- A runtime. This forge is knowledge. Copy the templates. Fill them. Version them in the product repo. Keep held-out copies in `product-evals/`.

## Four layers

| Layer | Question | Typical miss |
| --- | --- | --- |
| Truth | Is each material claim supported, qualified, consistent? | Growth number, wrong window, weak source |
| Analysis | Does the reasoning actually do financial or strategic work? | Narrative that only sounds like a thesis |
| Decision | Can a reader name the action, tradeoffs, and reversal? | Twenty pages, no recommendation |
| Human experience | Does the artifact earn attention and feel authored? | AI voice, heading soup, buried lead |

## Minimum panel

Coverage, not aesthetics. Start with five. Add only when a new risk is uncovered.

| Persona | Main question |
| --- | --- |
| Claims and evidence auditor | Does every material assertion trace to evidence? |
| Financial / strategic analyst | Is the reasoning technically defensible? |
| Skeptical investor | Why should I not believe this? |
| Executive reader | Can I decide in three minutes? |
| Human-centered editor | Does this read like strong human work? |

Each persona declares `can_block`, `cannot_block`, and `blind_spots`. Disagreement is the point. The editor loving clarity while risk finds unbounded downside is a block, not an 8.4.

See `coverage.yaml` and `personas/`.

## How it is used

```
artifact
  -> deterministic hard gates
  -> independent panel
  -> reader-experience + AI-artifact review
  -> scorecard + dissent
  -> top remediations with acceptance tests
  -> novel failures become fixtures
```

A candidate must not edit this folder in the same run that authors the artifact. If it can weaken the panel, it will.

For every newly discovered failure:

```
validation miss
  -> minimized fixture
  -> rubric, gate, or taxonomy rule
  -> preserved here (and in product-evals if held-out)
  -> every future generation must pass it
```

## Copy into a product

```
product/
  validation-personas/
    policy.yaml
    quality-gates.yaml
    coverage.yaml
    personas/
    taxonomies/
    fixtures/
    scoring/
```

Fill `templates/product-contract.yaml` for the artifact type. Ground personas with `templates/research-packet.yaml` when the domain is not already in the repo. Human approves the panel before it grades anything that ships.
