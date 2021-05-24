-- Inserting 1 value into host_ntn_application
INSERT INTO admin.host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (9780000.0, '2021','01-MAY-2021' ,1 , 1);
commit;
-- To Insert many from diferent nation users
INSERT INTO admin.host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (900000.0, '2021','01-APR-2021' ,1 , 1);
INSERT INTO admin.host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (14000000.0, '2021','10-JAN-2021' ,1 , 1);
INSERT INTO admin.host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (1200000.0, '2021','22-MAR-2021' ,1 , 1);
INSERT INTO admin.host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (800000.0, '2021','04-MAY-2021' ,1 , 1);
INSERT INTO admin.host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (1254899.0, '2021','06-APR-2021' ,1 , 1);
INSERT INTO admin.host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (2015489.0, '2021','05-FEB-2021' ,1 , 1);
select * from admin.host_ntn_application;
commit;



--------------------------------------------------------------------------------------------------------------------
-- For updating Athl_application --

-- Trigger to update timestamp for every insert form athlete user
CREATE OR REPLACE TRIGGER update_timestamp_athlete
  BEFORE INSERT ON admin.athl_application
  FOR EACH ROW
BEGIN
  :NEW.appl_date := systimestamp;
END;
commit;
-- Updation for a single insertion done from athlete_user
update host_ntn_application SET status='Approved' where appl_date  BETWEEN SYSDATE - (1 / 24) AND SYSDATE;
commit;
select * from admin.athl_application order by athl_appl_id;



-- Procedure to update
CREATE OR REPLACE Procedure athlete_application_status
IS
    athl_record admin.athl_application%ROWTYPE;
    l_weight NUMBER(38,20);
    l_height NUMBER(38,20);
    l_gender VARCHAR(20);
    l_bmi NUMBER(38, 20);
    appl_status VARCHAR2(100);
    CURSOR c_athl_app IS
        select * from admin.athl_application where status is null and appl_date  BETWEEN SYSDATE - (1 / 24) AND SYSDATE;
BEGIN
    open c_athl_app;
    LOOP
        FETCH c_athl_app INTO athl_record;
        EXIT WHEN c_athl_app%NOTFOUND;
        SELECT athl_weight, athl_height, athl_gender INTO l_weight, l_height, l_gender FROM admin.athlete WHERE athl_id = athl_record.athl_id;
        begin
            appl_status:= bmi_check(l_weight, l_height, l_gender, athl_record.athl_appl_id);
        end;
        if appl_status = 'Approved' then
                UPDATE admin.athl_application SET status = 'Approved' WHERE athl_appl_id = athl_record.athl_appl_id;
                commit;
        else
                UPDATE admin.athl_application SET status = 'Rejected' WHERE athl_appl_id = athl_record.athl_appl_id;
                commit;
        end if;
    END LOOP;
    EXCEPTION
        WHEN OTHERS then
            rollback;
END;
/

CREATE OR REPLACE FUNCTION bmi_check(weight NUMBER, height NUMBER, gender VARCHAR, appl_id NUMBER ) return VARCHAR2
as
status VARCHAR2(100):= '';
bmi NUMBER(38,2);
BEGIN
    bmi := (weight / height / height) * 10000;
        IF gender = 'Male' THEN
            IF bmi > 5 AND bmi < 13 THEN
                status:= 'Approved';
            ELSE
                status:= 'Rejected';
            END IF;
        ELSE
            IF bmi > 12 AND bmi < 22 THEN
                status:= 'Approved';
            ELSE
                status:= 'Rejected';
            END IF;
        END IF;
RETURN status;
exception
when others then
rollback;
END;
/



set serveroutput on;
exec athlete_application_status;
