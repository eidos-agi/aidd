# FIXTURE known-bad / second-window-double-submit

gates:
  - multi-window-integrity
must_fail:
  - mechanical

Document-based app. Two windows on the same record. Submit in both. Two charges.

Expected catch: iPad multi-window is a data gate, not a layout preference.
