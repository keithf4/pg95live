\set ECHO ALL

INSERT INTO upsert_table AS u (some_key, some_val) VALUES ('b', 10)
    ON CONFLICT ON CONSTRAINT upsert_table_some_key_key DO UPDATE SET some_val = excluded.some_val;

SELECT * FROM upsert_table;

