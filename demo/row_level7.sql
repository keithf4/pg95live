\set ECHO ALL

\c - keith

DROP POLICY just_own_clients ON clients;

CREATE POLICY just_own_clients ON clients
    FOR all
    TO public
    USING ( account_manager = current_user )
    WITH CHECK ( account_manager IN ( 'bill', current_user ) );

\d clients
