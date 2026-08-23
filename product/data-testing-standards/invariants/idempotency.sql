-- Replay of a valid command or webhook does not create duplicate durable side effects.

SELECT command_id, COUNT(*) AS effect_rows
FROM side_effect
GROUP BY command_id
HAVING COUNT(*) > 1;

-- Must return zero rows.

SELECT webhook_id, COUNT(*) AS payments
FROM payment
GROUP BY webhook_id
HAVING COUNT(*) > 1;

-- Must return zero rows.
