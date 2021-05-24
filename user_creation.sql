-- Procedure to grant access to nation users
create or replace procedure nation_user_creation (username VARCHAR)
IS
    tmp_query varchar(150);
    user_name_upper varchar(30) := UPPER(username) ;
BEGIN
    tmp_query:= ' GRANT CONNECT TO ' || user_name_upper;
    EXECUTE IMMEDIATE ( tmp_query );
    tmp_query:= ' GRANT CREATE SESSION TO ' || user_name_upper;
    EXECUTE IMMEDIATE ( tmp_query );
    tmp_query:= ' GRANT UNLIMITED TABLESPACE TO ' || user_name_upper;
    EXECUTE IMMEDIATE ( tmp_query );
    tmp_query:= 'GRANT INSERT, UPDATE, DELETE ON  host_ntn_application  TO ' ||user_name_upper;
    EXECUTE IMMEDIATE ( tmp_query );
    tmp_query:= 'GRANT UPDATE(status) ON  athl_application  TO ' ||user_name_upper;
    EXECUTE IMMEDIATE ( tmp_query );
    tmp_query:= 'GRANT CREATE PROCEDURE  TO ' ||user_name_upper;
    EXECUTE IMMEDIATE ( tmp_query );
    FOR r IN (
        SELECT table_name 
        FROM dba_tables 
        WHERE owner = 'ADMIN'
    )
    LOOP
        EXECUTE IMMEDIATE 
            'GRANT SELECT ON ' ||r.table_name||' to ' || user_name_upper;
    END LOOP;
END;
/

create user nation_user_2 identified by Nation_6210_2;
exec nation_user_creation('nation_user_2')
commit;

-- Procedure to grant access to nation users
create or replace procedure athlete_user (username VARCHAR)
IS
    tmp_query varchar(150);
    user_name_upper varchar(30) := UPPER(username) ;
BEGIN
    
    tmp_query:= ' GRANT CONNECT TO ' || user_name_upper;
    EXECUTE IMMEDIATE ( tmp_query );
    tmp_query:= ' GRANT CREATE SESSION TO ' || user_name_upper;
    EXECUTE IMMEDIATE ( tmp_query );
    tmp_query:= ' GRANT UNLIMITED TABLESPACE TO ' || user_name_upper;
    EXECUTE IMMEDIATE ( tmp_query );
    tmp_query:= 'GRANT SELECT, INSERT, UPDATE, DELETE ON  athl_application  TO ' ||user_name_upper;
    EXECUTE IMMEDIATE ( tmp_query );
    tmp_query:= 'GRANT CREATE ANY PROCEDURE  TO ' ||user_name_upper;
    EXECUTE IMMEDIATE ( tmp_query );
    tmp_query:= 'GRANT CREATE ANY TRIGGER  TO ' ||user_name_upper;
    EXECUTE IMMEDIATE ( tmp_query );
    dbms_output.put_line('here');
    FOR r IN (
        SELECT table_name 
        FROM dba_tables 
        WHERE owner = 'ADMIN'
    )
    LOOP
        EXECUTE IMMEDIATE 
            'GRANT SELECT ON ' ||r.table_name||' to ' || user_name_upper;
    END LOOP;
END;
/
set serveroutput on;
create user athlete_user_2 identified by Athlete_6210_2;
exec athlete_user('athlete_user_2');
commit;

