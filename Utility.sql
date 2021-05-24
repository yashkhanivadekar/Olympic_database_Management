/* 
Utility procedure for getting random date (starting from 01-Jan). Arguments descriptions as follows:
    1. p_year INPUT -> The year for which random date needs to be generated
    2. p_days -> Number of days to consider from 01 Jan to create a random date
    
    For e.g. --> If p_year = 2021 and p_days = 120 then, a random date will be generated between 01-Jan-2021 and 31-Apr-2021
*/
CREATE OR REPLACE PROCEDURE get_random_date(p_year IN integer, p_days IN integer, p_date OUT date)
IS
v_char_date varchar(100);
v_out_date date;
BEGIN
    SELECT TO_CHAR(TO_DATE('01/01/' || p_year,'mm/dd/yyyy'),'J') INTO v_char_date FROM DUAL;
    SELECT TO_DATE(TRUNC(DBMS_RANDOM.VALUE(v_char_date, v_char_date + p_days)),'J') INTO v_out_date FROM DUAL;
    p_date := v_out_date;
END;
/

create or replace PROCEDURE get_random_event_date(event_year IN integer, date_output OUT date)
IS
start_date_char varchar(100);
end_date_char varchar(100);
output_date date;
BEGIN
    SELECT TO_CHAR(TO_DATE('07/01/' || event_year,'mm/dd/yyyy'),'J') INTO start_date_char FROM DUAL;
    SELECT TO_CHAR(TO_DATE('09/30/' || event_year,'mm/dd/yyyy'),'J') INTO end_date_char FROM DUAL;
    SELECT TO_DATE(TRUNC(DBMS_RANDOM.VALUE(start_date_char, end_date_char)),'J') INTO output_date FROM DUAL;
    date_output := output_date;
END;
/

/* Utility statements to get random generated sql queries for athl_application and host_ntn_application */
--select 'INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES (''' || trunc(appl_date) || ''', ' || athl_id || ', ' || ntn_id || ', '|| sport_id || ');'from athl_application;
--select 'INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (' || bid_amount || ', ' || bid_year || ', ''' || trunc(appl_date) || ''', ' ||  ntn_id || ', ' || olym_id || ');' from host_ntn_application;
--SELECT 'DROP TABLE "' || TABLE_NAME || '" CASCADE CONSTRAINTS;' FROM user_tables;