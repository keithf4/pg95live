\set ECHO ALL

DROP DATABASE IF EXISTS foreign_db;
CREATE DATABASE foreign_db;

\c foreign_db

DROP TABLE IF EXISTS log_entry_y2014;
DROP TABLE IF EXISTS log_entry_y2015;

CREATE TABLE log_entry_y2014(log_time timestamp,
       entry text,
       check (date(log_time) >= '2014-01-01' AND
              date(log_time) < '2015-01-01'));

CREATE TABLE log_entry_y2015(log_time timestamp,
       entry text,
       check (date(log_time) >= '2015-01-01' AND
              date(log_time) < '2016-01-01'));

\c keith
