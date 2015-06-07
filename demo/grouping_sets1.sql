\set ECHO ALL

DROP SEQUENCE IF EXISTS x;
DROP TABLE IF EXISTS db_details;

CREATE TABLE db_details (
    appnumber int4,
    day date,
    inserts int8,
    updates int8,
    deletes int8,
    transactions int8,
    PRIMARY KEY (appnumber, day)
);

CREATE SEQUENCE x INCREMENT BY 7;

INSERT INTO db_details
SELECT
    i,
    j,
    nextval('x'),
    nextval('x'),
    nextval('x'),
    nextval('x')
FROM
    generate_series(1,3) i,
    generate_series(now() - '2 days'::interval, now(), '1 day'::interval) j;

DROP SEQUENCE x;

SELECT * FROM db_details;

