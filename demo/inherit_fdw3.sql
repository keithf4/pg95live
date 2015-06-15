\set ECHO ALL

DROP FOREIGN TABLE IF EXISTS log_entry_y2014_f;
DROP FOREIGN TABLE IF EXISTS log_entry_y2015_f;
DROP TABLE IF EXISTS log_entries;

CREATE TABLE log_entries(log_time timestamp, entry text);

CREATE FOREIGN TABLE log_entry_y2014_f (log_time timestamp, entry text)
   INHERITS (log_entries) SERVER myfdw OPTIONS (table_name 'log_entry_y2014');

CREATE FOREIGN TABLE log_entry_y2015_f (log_time timestamp, entry text)
   INHERITS (log_entries) SERVER myfdw OPTIONS (table_name 'log_entry_y2015');

\d+ log_entries

\d+ log_entry_y2014_f
