-- Illegal state transitions are not stored. Tombstones are explicit.

SELECT COUNT(*) AS illegal_paid_from_void
FROM agent_run
WHERE status = 'succeeded'
  AND prior_status = 'canceled';

-- Must be 0 unless an approved repair ticket is attached.

SELECT COUNT(*) AS missing_completion
FROM agent_run
WHERE status IN ('succeeded', 'failed', 'canceled', 'timed_out')
  AND completed_at IS NULL;

-- Must be 0.
