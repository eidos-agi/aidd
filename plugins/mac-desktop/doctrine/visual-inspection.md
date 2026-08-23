# Visual inspection

Visual regression asks: did pixels change?
Visual inspection asks: is this screen good, legible, intentional, and appropriate for its job?

A single static screenshot is not inspection.

## Packet

Capture at meaningful moments: launch, content resolved, before/after primary action, loading, validation failure, network/auth failure, success, background/foreground, each navigation.

Each packet is a screen, a state, a task, a screenshot, a previous screenshot, an accessibility tree, view metadata, an interaction trace, device, appearance, content size, locale.

Tests attach screenshots on purpose, not only on failure.

## Senses

1. Rendered appearance
2. Semantic tree (labels, roles, order, hit targets)
3. Behavioral trace (what happened after the action)
4. Change intent (diff + requirement)
5. Historical corpus (approved / anti-pattern / pairwise)

Then three comparisons: pixel/layout, semantic-tree, intent.

## Transitions

Taste lives in change. Inspect short recordings or frame sequences for sheets, push/pop, skeleton-to-content, inline validation, keyboard, deletion/undo.

Ask: feedback in time, spatial continuity, error near cause, no lost input, motion as explanation.

## Contact sheets

Do not dump a thousand unstructured images on the model. One contact sheet per flow and configuration. Judge coherence first. Open full-resolution only where risk appears.

## Programmatic first

Clip, overlap, unauthorized tokens, missing labels, hit targets, contrast, state-matrix completeness — detect without a model. The critic answers which differences matter and the smallest coherent remedy.
