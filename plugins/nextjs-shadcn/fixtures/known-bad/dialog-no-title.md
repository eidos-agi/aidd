# FIXTURE known-bad / dialog-no-title

gates:
  - radix-dialog
  - axe-critical
must_fail:
  - mechanical

A shadcn Dialog omits DialogTitle (or visually-hides none). Focus lands inside. Screen reader announces "dialog" with no name. Escape is swallowed by a parent handler.

Expected catch: Radix contracts are hard gates, not suggestions.
