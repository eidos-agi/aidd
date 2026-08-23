# Fixtures

Give every candidate difficult data. Pristine seeds are not a suite.

```
fixtures/
  minimal/        # Fast, readable happy-path cases
  realistic/      # Representative multi-tenant working state
  dirty-legacy/   # Nulls, old enums, duplicate historical events
  adversarial/    # Cross-tenant IDs, malformed payloads, poison messages
  lifecycle/      # Deleted, expired, revoked, migrated, partial
  replay/         # Duplicates, reordering, delays, retries, clock skew
  scale/          # High cardinality, deep histories, large blobs
```

Replay fixtures should inject:

- duplicated command IDs and webhook IDs
- out-of-order events
- partial failure between local persistence and an external tool call
- worker crash and redelivery
- expired credentials
- backfills applied twice
- permission revocation halfway through a long-running task
- deletion followed by a delayed event or index update
