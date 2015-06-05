\c - keith

CREATE POLICY just_own_clients ON clients
    FOR all
    TO public
    USING ( account_manager = current_user );
 
ALTER TABLE clients ENABLE ROW LEVEL SECURITY;
