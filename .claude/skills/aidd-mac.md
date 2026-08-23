# /aidd-mac

Autonomous native Apple UI. No humans in routine frontend testing.

1. Read `plugins/mac-desktop/README.md`.
2. Confirm the app is testable: identifiers, launch arguments, mocks, deep links, resettable state. If not, stop and add them. Do not poke pixels.
3. Mechanical gates first (`gates/mechanical.yaml`). No model.
4. Run the deterministic XCTest / test-plan suite. That is the release gate.
5. Run the explorer under `explorer/mission.yaml`. Minimize traces. Convert them to fixtures.
6. Run the critic only on evidence packets. Adversarial. Structured verdict. See `critic/adversarial.md`.
7. Fixes are constrained (`templates/constrained-fix.md`). New primitives need a contract update.
8. Humans only for new interaction models, new primitives, new taste, and promotion.

The builder does not approve its own UI.
