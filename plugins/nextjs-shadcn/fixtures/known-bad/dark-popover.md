# FIXTURE known-bad / dark-popover

gates:
  - appearance
must_fail:
  - mechanical

`html.dark` is set. DropdownMenu content portal renders with light tokens because the portal unmounted outside the themed node without `bg-popover text-popover-foreground`.

Expected catch: portals are part of appearance. A correct page background is not enough.
