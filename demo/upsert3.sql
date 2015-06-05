\set ECHO ALL

insert into upsert_table (some_key) values ('a')
    ON CONFLICT DO NOTHING;

select * from upsert_table;
