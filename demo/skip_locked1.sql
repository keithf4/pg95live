\set ECHOL ALL

DROP TABLE IF EXISTS jobs;
CREATE TABLE jobs ( id serial primary key, priority int4 NOT NULL, payload text);
INSERT INTO jobs (priority, payload) SELECT random() * 100, 'payload #' || i FROM generate_series(1,100) i;
SELECT * FROM jobs LIMIT 10;


