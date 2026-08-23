# nextjs-shadcn

Next.js App Router plus shadcn/ui. Not iPhone. Not iPad. Not Mac.

Playwright is the XCTest analog. Radix is the accessibility constitution. shadcn tokens are the look. `"use client"` is a tax.

If the product also ships native Apple apps, copy those plugins too. A 390px Chrome viewport is not `plugins/iphone/`.

## Why it is its own plugin

| | This plugin | Native Apple plugins |
| --- | --- | --- |
| Runtime | Browser, RSC, hydration | Simulator / macOS |
| Gate | Playwright + axe | XCTest |
| Chrome | App Router layouts, shadcn Sidebar/Dialog/Sheet | Tab bar, split view, menus |
| Cardinal sin | AI dashboard slop, raw controls, hydration mismatch | Phone-on-tablet / tablet-on-phone |

## The split

Deterministic Playwright journeys are the release gate. Explorer finds routes, viewports, and keyboard traps. Critic judges token discipline and slop. The builder does not approve its own UI.

## Copy into a product

```
plugins/nextjs-shadcn/
design/                  # tokens, primitives, voice — maps to shadcn CSS variables
plugin-evals/nextjs-shadcn/
```

Make it testable first: `data-slot` / `data-testid` on asserted controls, MSW or route handlers for mocks, a deterministic clock, resettable state. Without that, the agent is poking CSS classes that shadcn will rename.
