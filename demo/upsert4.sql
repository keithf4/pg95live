\set ECHO ALL

insert into upsert_table (some_key) values ('a')
    ON CONFLICT DO update SET some_val = some_val + 1;
