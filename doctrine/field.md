# Field

Ideas from outside that are too good to forget. AIDD absorbs them as doctrine, not as decoration.

## Error analysis first

Hamel Husain and Shreya Shankar. Most eval work is looking at traces, not building harnesses. In the projects they studied, 60–80% of development time went to error analysis. Start with failures. Group them. Then write the eval that would have caught them.

AIDD already says: incident → fixture → contract → every future rebuild must pass it. Do that before you add a dashboard.

## Evals are a strategic asset

Anthropic, and the 2026 evaluation-standardization literature. Evaluation is decisional, not diagnostic. The suite, the thresholds, and the grading logic are part of the compliance evidence. Teams with evals iterate. Teams without them freeze or ship on vibes.

This is the same sentence as the forge motto. The evals are the company.

## Goodhart

When a measure becomes a target, it ceases to be a good measure. Split the corpus:

```
public     — candidates may see this. They will Goodhart it. That is fine.
held-out   — locked. Run only at promotion. The builder must not see the cases.
production — shadow traffic. The world the suite did not imagine.
```

A “held-out” set the builder can read is not held-out. A public benchmark that has been on GitHub for three years is not held-out.

## Eval teeth

If a trivial mutation of the candidate does not fail the suite, the suite is theater. Plant bugs. The evals must catch them. Tests that can be rewritten to match the code are not tests.

## EvoScore

SWE-CI (Sun Yat-sen / Alibaba, 2026). Maintainability is not a snapshot. Weight later iterations more than earlier ones. A generation that makes the next generation harder is a failing generation. Fitness that only scores the current bash will accumulate debt the next bash cannot pay.

## pass^k

One lucky green run is not a pass. The candidate must pass k independent draws of the suite. Flakes are rejects.

## Verifiability sets the automation ceiling

Karpathy, Sequoia Ascent 2026. Traditional software automates what you can specify. LLMs automate what you can verify. AIDD’s rebuild loop only goes as far as the oracle. Taste, risk, and anything without a check stay human.

## Shadow before cutover

Champion–challenger from decision management and production ML. The challenger sees production-shaped load while the champion still serves. AIDD promotes on evidence, not on a staging vibe.

## What we already had and must keep

Incident or failed simulation → minimized reproducible fixture → contract or invariant → preserved in the legs → every future rebuild must pass it.

That folder is the long-term memory of the autonomous engineering system. You can throw away `product-vN` implementation choices. You cannot throw away the accumulated truth about correct, safe, recoverable state.
