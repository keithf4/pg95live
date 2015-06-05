\set ECHO ALL

INSERT INTO upsert_table AS u (some_key) VALUES ('a')
    ON CONFLICT (some_key) DO UPDATE SET some_val = u.some_val + 1;

SELECT * FROM upsert_table;
