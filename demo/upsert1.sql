\set ECHO ALL

DROP TABLE IF EXISTS upsert_table;

CREATE TABLE IF NOT EXISTS upsert_table (
    id serial primary key,
    some_key text not null unique,
    some_val int not null default 0
);

INSERT INTO upsert_table (some_key) VALUES ('a'), ('b');

SELECT * FROM upsert_table;
