# Oracles

Assertions independent of app code. SQL, metric checks, champion diffs.

The current implementation is not the spec. It is a compressed record of production discoveries. Treat it as an oracle until you deliberately decide a quirk is a defect.

An oracle may:

- compare champion and challenger outputs on the same fixture
- assert conservation (cost sums, counts, balances)
- assert authorization on derived data
- fail closed on missing lineage

An oracle may not:

- live inside the candidate repo as the only copy
- be edited by the agent that authored the candidate in the same run
- accept “HTTP 200” as parity
