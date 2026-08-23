# FIXTURE known-burden / silent-contract

gates:
  - no-silent-contract
must_fail:
  - remaining-jobs may pass
  - no-silent-contract must not

Candidate deletes `GET /exports` because the UI button is gone.
A paying integration still calls it.

Expected catch: UI absence is not contract absence. Sunset or keep.
