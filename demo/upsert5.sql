\set ECHO ALL

insert into upsert_table (some_key) values ('a')
    ON CONFLICT (some_key) DO update SET some_val = some_val + 1;
