\set ECHO ALL

SELECT generate_series('2014-01-01 00:00:00'::timestamp, now(), '65 days 7 hours 13 minutes 2 seconds'::interval);
