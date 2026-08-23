# FIXTURE known-bad / hydration-mismatch

gates:
  - hydration
must_fail:
  - mechanical

A client clock renders `new Date().toLocaleString()` in the page body with no suppressHydrationWarning and no server-stable placeholder.

Expected catch: console hydration mismatch fails the gate. Pretty UI is irrelevant.
