# /aidd-ipad

Autonomous iPad UI. Regular width. Split View. Not a stretched iPhone.

1. Read `plugins/ipad/README.md` and `doctrine/regular-width.md`.
2. Confirm identifiers, mocks, deep links, resettable state. Do not poke pixels.
3. Mechanical gates first. Include not-phone-on-tablet, regular-width-home, split-view-reflow, stage-manager-window, multi-window-integrity, pointer-and-touch, hardware-keyboard.
4. Run XCTest on mini, Pro 11, and Pro 13. An iPhone destination does not count. Full-screen launch size is not the suite.
5. Explorer under `explorer/mission.yaml`. Resize. Split. Second window. Convert traces to fixtures.
6. Critic on iPad evidence packets only. An iPhone pass is inadmissible.
7. Constrained fixes. Do not ship the iPhone layout larger.
8. Humans only for new interaction models, primitives, taste, and promotion.

The builder does not approve its own UI.
