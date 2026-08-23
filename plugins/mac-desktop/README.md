# mac-desktop

No humans in routine frontend testing. Humans author taste. Machines inspect every render.

This plugin extends `frontend-testing-standards` for macOS SwiftUI/AppKit: windows, menus, pointer and keyboard.

If the product also ships iPhone or iPad, copy `plugins/iphone/` and `plugins/ipad/`. Do not reuse this plugin. Those surfaces have different size classes, chrome, and cardinal sins.

## The split

| Loop | Job | Gate quality |
| --- | --- | --- |
| Deterministic | XCTest / XCUIAutomation / test plans / accessibility audit | Release |
| Explorer | Bounded autonomous drive. Novel states. Minimal traces. | Discovery |
| Critic | Taste, hierarchy, coherence, visual inspection | Calibrated, then blocking |

Do not let a vision agent be the release gate. It drafts coverage. XCTest decides go/no-go. The critic decides whether the UI is still the product you meant.

## Three machines

```
Product intent
    -> Builder implements
    -> Explorer probes a state matrix
    -> Hard gates (functional, a11y, layout, tokens)
    -> Independent Critic (hierarchy, taste, visual inspection)
    -> Fixture or constrained fix
    -> Human only for new product direction
```

The Builder is the candidate. The Critic is the oracle. They do not share a prompt.

See `doctrine/three-machines.md`.

## What "great taste" means here

Not a vibe. A constitution:

1. Mechanical invariants — 44pt targets, contrast, clipping, Dynamic Type, required states. No model needed.
2. Product-design invariants — one primary CTA, empty/error craft, token use. Schema + critic.
3. Calibrated judgments — hierarchy, density, platform fit, slop. Evidence required. Comment-only until precision is proven.

See `doctrine/taste.md` and `corpus/`.

## What visual inspection means here

Not "did pixels change?"

Did this screen do its job, remain legible, stay intentional, and stay the same product — across state, device, time, and transition.

Screenshot diffs protect a baseline. Inspection judges the baseline's fitness. You need both.

See `doctrine/visual-inspection.md`.

## Copy into a product

```
plugins/mac-desktop/
design/                  # principles, tokens, components, references
plugin-evals/mac-desktop/
```

Make the app testable first: stable accessibility identifiers, launch arguments, mocked backends, resettable state, deep links. Without that, the agent is poking pixels.

See `templates/` and `contracts/test-control-plane.yaml`.
