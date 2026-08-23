# ipad

Regular-width Apple tablet. Not iPhone. Not Mac. Not "iOS."

This plugin extends `frontend-testing-standards` for iPad: regular width, sidebar and detail, Split View reflow, Stage Manager windows, pointer and hardware keyboard.

If the product also ships iPhone or Mac, copy those plugins too. Do not reuse this one. A layout that is correct on iPhone and stretched to 13 inches is a fail here.

## Why it is not iphone

| | iPad | iPhone |
| --- | --- | --- |
| Size class | Regular width as the home | Compact width as the home |
| Chrome | Sidebar + detail, unless a utility | Tab bar + stack |
| Input | Touch, pointer, hardware keyboard, Pencil | Thumb |
| Windows | Split View, Slide Over, Stage Manager, multi-window | One |
| Cardinal sin | Stretched iPhone layout | iPad chrome crammed into 390pt |

## The split

Deterministic XCTest is the release gate. Explorer resizes the window. Critic judges regular-width hierarchy and reflow. The builder does not approve its own UI.

## Copy into a product

```
plugins/ipad/
design/
plugin-evals/ipad/
```

Size classes change at runtime. Launch-size is not the test.
