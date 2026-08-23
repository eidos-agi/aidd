# Taste

Do not hire an AI to possess taste. Build a design judge whose constitution is yours.

Apple HIG is a floor. Your product character is the gate.

## Three tiers

**Tier 1 — mechanical.** Fail CI with no model. Touch targets, clipping, contrast, appearance, Dynamic Type, required states, destructive confirm/undo, keyboard vs primary action.

**Tier 2 — product design.** Your taste, still mostly enforceable. One dominant primary action. Clear first-view task. Color never carries meaning alone. One alignment grid. Empty states mean something. Errors near the field. New primitives need a contract entry.

**Tier 3 — calibrated judgment.** Hierarchy vs task. Density. Motion as causality. Copy. "Generic AI SaaS" vs this product. Same-app coherence. Evidence required. Comment-only until false-positive rate is known.

## Constitution

Keep it in the product repo:

```
design/
  principles.md
  voice-and-copy.md
  tokens.json
  components/
  contracts/
  references/approved/
  references/anti-patterns/
  evaluations/calibration-set.jsonl
```

A screen without a declared job cannot be judged for hierarchy.

## Constrained fixes

The Builder may reorder, retoken, swap an existing primitive, add an existing state, or fix copy under the voice guide.

A new color role, type scale, component, navigation model, or motion language requires a contract update. Otherwise the loop drifts into fashionable incoherence.

## Calibration

Label 30–100 pairs. Measure false positives by class. Promote only high-precision classes to blocking. Recalibrate when the design system shifts.
