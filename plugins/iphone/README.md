# iphone

Compact Apple phone. Not iPad. Not Mac. Not "iOS."

This plugin extends `frontend-testing-standards` for iPhone: compact width, thumb reach, tab bar and navigation stack, interruption, Dynamic Island and home-indicator safe area.

If the product also ships iPad or Mac, copy those plugins too. Do not reuse this one. A layout that is correct on a 13-inch iPad and dropped onto a phone is a fail here.

## Why it is not ipad

| | iPhone | iPad |
| --- | --- | --- |
| Size class | Compact width as the home | Regular width as the home |
| Chrome | Tab bar + stack | Sidebar + detail, unless a utility |
| Primary reach | Thumb zone, lower third | Whole canvas, pointer and keyboard |
| Windows | One | Split View, Slide Over, Stage Manager |
| Cardinal sin | iPad chrome crammed into 390pt | Stretched iPhone layout |

## The split

Deterministic XCTest is the release gate. Explorer discovers compact states. Critic judges reach, hierarchy, and interruption recovery. The builder does not approve its own UI.

## Copy into a product

```
plugins/iphone/
design/
plugin-evals/iphone/
```

Make it testable first: identifiers, launch arguments, mocks, deep links, resettable state. Then run `/aidd-iphone`.
