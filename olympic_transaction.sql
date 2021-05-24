--olympic_admin - Olympic_Olym_6240


set serveroutput on;
-- Trigger to update timestamp for every insert form nation user
CREATE OR REPLACE TRIGGER update_timestamp_olym
  BEFORE INSERT ON host_ntn_application
  FOR EACH ROW
BEGIN
    dbms_output.put_line('--timestamp trigger--');
  :NEW.appl_date := systimestamp;
END;
--------------------------------------------------------------------------------------------------------------------------------
-- Transaction to update 1 application for host_nation
update host_ntn_application SET status='Approved' where appl_date  BETWEEN SYSDATE - (1 / 24) AND SYSDATE;
commit;


CREATE OR REPLACE PACKAGE olym_cursors AS
   CURSOR c_host_ntn_appl RETURN host_ntn_application%ROWTYPE;  -- declare cursor spec
END olym_cursors;
/
CREATE OR REPLACE PACKAGE BODY olym_cursors AS
   CURSOR c_host_ntn_appl RETURN host_ntn_application%ROWTYPE IS
            select * from host_ntn_application where status is null and appl_date BETWEEN SYSDATE - (1 / 24) AND SYSDATE;
END olym_cursors;
/


set serveroutput on;


create or replace procedure update_status(p_olym_year IN NUMBER)
is
--    host_appl host_ntn_application%ROWTYPE;
--    l_max_bid NUMBER(38,2);
    selected_host_id INTEGER;
BEGIN
    SELECT host_appl_id INTO selected_host_id FROM host_ntn_application 
        WHERE bid_amount = (SELECT max(bid_amount) FROM host_ntn_application
        WHERE bid_year=p_olym_year AND appl_date BETWEEN (SYSDATE - (1 / 24)) AND SYSDATE)
        AND status IS NULL AND ROWNUM = 1;
         
    UPDATE host_ntn_application SET status = 'Approved' WHERE host_appl_id = host_appl_id;
    
    UPDATE host_ntn_application SET status = 'Rejected' 
        WHERE bid_year=p_olym_year AND host_appl_id NOT IN (selected_host_id)
        AND appl_date BETWEEN (SYSDATE - (1 / 24)) AND SYSDATE;
        
    COMMIT;
--    OPEN olym_cursors.c_host_ntn_appl;
--    LOOP
--        FETCH olym_cursors.c_host_ntn_appl INTO host_appl;
--        EXIT WHEN olym_cursors.c_host_ntn_appl%NOTFOUND;
--        SELECT max(bid_amount) into l_max_bid  FROM host_ntn_application 
--            WHERE bid_year = p_olym_year;
--        if (host_appl.bid_amount >= l_max_bid) then
--            UPDATE host_ntn_application SET status = 'Approved' WHERE host_appl_id = host_appl.host_appl_id;
----            UPDATE olympics SET ntn_id = host_appl.ntn_id WHERE olym_id = host_appl.olym_id;
--            commit;
--        else
--            UPDATE host_ntn_application SET status = 'Rejected' WHERE host_appl_id = host_appl.host_appl_id;
--            commit;
--        end if;
--    END LOOP;
--    
--    CLOSE olym_cursors.c_host_ntn_appl;
--    commit;
    dbms_output.put_line('--Updating completed--');
EXCEPTION
    WHEN OTHERS THEN
        rollback;
        dbms_output.put_line('Found exception while updating status --> ' || sqlerrm);
end;
/

exec update_status(2021);
            
            
--------------------------------------------------------------------------------------------------------------------------------
-- Transaction Package to approve multiple application at once for host)nation


-- Executing the package
exec update_host_app.to_update(2021);



