BEGIN;

SELECT * FROM jobs ORDER BY priority DESC, id ASC LIMIT 1 FOR UPDATE SKIP LOCKED;
