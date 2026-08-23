# FIXTURE known-bad / cta-under-home-indicator

gates:
  - safe-area
  - thumb-reach
must_fail:
  - mechanical

Pay Now is pinned to y = maxY with no home-indicator inset. On Pro Max it sits under the home indicator. Taps miss.

Expected catch: safe area is a hard gate, not a visual preference.
