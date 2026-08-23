# /aidd-validate

Grade an AI-produced artifact with independent reviewers. Not a single judge.

1. Read `product/validation-personas/README.md` and `quality-gates.yaml`.
2. Confirm the product contract. If unknowns remain, stop and ask a human. Do not invent policy.
3. Run hard gates first. Any fail is a reject. Do not average.
4. Run the minimum panel in `coverage.yaml`. Independent reviews. Structured output only. See `templates/review.yaml`.
5. Run the executive reader simulation when the artifact is decision-support.
6. Name the primary constraint. Emit at most five remediations, each with an acceptance test.
7. Convert every novel miss into a minimized fixture before the next generation.
8. Do not edit `validation-personas/` or `product-evals/` in the same run that authors the artifact.

The panel is part of the oracle. The candidate does not choose its judges.
