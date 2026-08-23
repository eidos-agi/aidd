-- No row, event, cache key, or derived record may be visible across tenant_id.
-- Run against champion and challenger with the same adversarial fixture.

SELECT COUNT(*) AS cross_tenant_hits
FROM agent_run r
JOIN agent_run other
  ON other.run_id = r.run_id
 AND other.tenant_id <> r.tenant_id;

-- Must be 0.

SELECT COUNT(*) AS leaked_traces
FROM tool_trace t
WHERE t.tenant_id <> (
  SELECT r.tenant_id FROM agent_run r WHERE r.run_id = t.run_id
);

-- Must be 0.
