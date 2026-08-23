# shadcn

shadcn is copied primitives, not a vendor you can ignore. The copied `components/ui/*` plus `globals.css` tokens are the constitution.

Use them. Wrapping is allowed. Reinventing Button, Dialog, Input, Select, DropdownMenu, Sheet, Tabs, Form, Table, Sidebar, or Command as raw markup is a fail.

Radix behavior is not optional: focus trap, focus restore, Escape, labelled dialog, keyboard menu, disabled states. If a wrapper breaks it, the wrapper fails.

Variants come from `cva` and tokens. Magic hex, ad-hoc shadows, and random radii are undeclared primitives. They need a contract entry or they fail.

Dark mode is a class on a tokenized surface. A popover that stays light in dark mode is a miss.

Default vs New York is a product choice. Mixing both in one candidate is a miss.

AI dashboard slop is in-scope: stacked Cards for no reason, decorative gradients, three equal filled Buttons, badge confetti, oversized tracking-tight heroes. The critic is allowed to fail those against `contracts/global.yaml`.
