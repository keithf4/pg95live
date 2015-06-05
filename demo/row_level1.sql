\set ECHO ALL

DROP TABLE IF EXISTS clients;
DROP ROLE IF EXISTS peter;
DROP ROLE IF EXISTS joanna;
DROP ROLE IF EXISTS bill;

CREATE TABLE clients (
    id serial primary key,
    account_name text not null unique,
    account_manager text not null
);
 
CREATE USER peter;
 
CREATE USER joanna;
 
CREATE USER bill;
 
GRANT ALL ON TABLE clients TO peter, joanna, bill;
 
GRANT ALL ON SEQUENCE clients_id_seq TO peter, joanna, bill;
 
INSERT INTO clients (account_name, account_manager)
    VALUES ('initrode', 'peter'), ('initech', 'bill'), ('chotchkie''s', 'joanna');
