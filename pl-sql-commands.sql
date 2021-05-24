-- --SELECT * FROM host_ntn_application s INNER JOIN status h ON s.host_appl_id = h.host_appl_id;
-- --select * from (select * from nation order by dbms_random.random) where ROWNUM=1;
-- --select * from (select * from host_ntn_application order by dbms_random.random) where bid_year=2021 and rownum=1;

set serveroutput on;
/* Stored procedure to insert tuples in GROUP_ATHLERE Table */
CREATE OR REPLACE PROCEDURE add_athlete_event
IS
    v_athl_appl_record athl_application%ROWTYPE;
    v_event_record event%ROWTYPE;
    v_athl_gender athlete.athl_gender%TYPE;
    v_event_sql VARCHAR(500);
    CURSOR c_athl_appl IS
        SELECT * FROM athl_application WHERE status='Approved';
    TYPE c_event_type IS REF CURSOR;
    c_event c_event_type;
BEGIN
    dbms_output.put_line('--Process started for creating Athlete_Event--');
    OPEN c_athl_appl;
    LOOP
        FETCH c_athl_appl INTO v_athl_appl_record;
        
        IF c_athl_appl%NOTFOUND THEN
            EXIT;
        END IF;
        
        SELECT athl_gender INTO v_athl_gender FROM athlete WHERE athl_id = v_athl_appl_record.athl_id;
        
        v_event_sql := 'SELECT * FROM event WHERE sport_id = :sport_id AND event_gender = :gender';
        OPEN c_event FOR v_event_sql USING v_athl_appl_record.sport_id, v_athl_gender;
        
        LOOP
            FETCH c_event INTO v_event_record;
            
            IF c_event%NOTFOUND THEN
                EXIT;
            END IF;
            
            INSERT INTO athlete_event (athl_id, event_id) VALUES (v_athl_appl_record.athl_id, v_event_record.event_id);
        END LOOP;
        commit;
        CLOSE c_event;
        
    END LOOP;
    commit;
    CLOSE c_athl_appl;
    dbms_output.put_line('--Process completed--');
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
    dbms_output.put_line('Values Already Present');
    WHEN OTHERS THEN
    dbms_output.put_line('Error in add_athlete_event --> ' || sqlerrm);
END;
/

exec add_athlete_event;

/* Compound Trigger to update the status of athl_application */
CREATE OR REPLACE TRIGGER athl_appl_status_trigger
FOR INSERT ON athl_application
COMPOUND TRIGGER
TYPE r_athl_appl_type IS RECORD (
    athl_appl_id athl_application.athl_appl_id%TYPE,
    athl_id athlete.athl_id%TYPE
);

TYPE t_athl_appl_type IS TABLE OF r_athl_appl_type
INDEX BY PLS_INTEGER;

t_athl_appl t_athl_appl_type;

AFTER EACH ROW IS
BEGIN
    t_athl_appl (t_athl_appl.COUNT + 1).athl_appl_id := :NEW.athl_appl_id;
    t_athl_appl (t_athl_appl.COUNT).athl_id := :NEW.athl_id;
END AFTER EACH ROW;

AFTER STATEMENT IS
    l_weight athlete.athl_weight%TYPE;
    l_height athlete.athl_height%TYPE;
    l_gender athlete.athl_gender%TYPE;
    l_bmi NUMBER(38, 20);
BEGIN
    FOR idx IN 1 .. t_athl_appl.COUNT
    LOOP
        SELECT athl_weight, athl_height, athl_gender INTO l_weight, l_height, l_gender FROM athlete WHERE athl_id = t_athl_appl (idx).athl_id;
        l_bmi := (l_weight / l_height / l_height) * 10000;
        IF l_gender = 'Male' THEN
            IF l_bmi > 5 AND l_bmi < 13 THEN
                UPDATE athl_application SET status = 'Approved' WHERE athl_appl_id = t_athl_appl (idx).athl_appl_id;
            ELSE
                UPDATE athl_application SET status = 'Rejected' WHERE athl_appl_id = t_athl_appl (idx).athl_appl_id;
            END IF;
        ELSE
            IF l_bmi > 12 AND l_bmi < 22 THEN
                UPDATE athl_application SET status = 'Approved' WHERE athl_appl_id = t_athl_appl (idx).athl_appl_id;
            ELSE
                UPDATE athl_application SET status = 'Rejected' WHERE athl_appl_id = t_athl_appl (idx).athl_appl_id;
            END IF;
        END IF;
    END LOOP;
END AFTER STATEMENT;
END;
/

set serveroutput on;
--exec generate_athl_application;
alter trigger athl_appl_status_trigger disable;


--select * from event;
--select * from athlete_event;
-- procedure to add values into event_match
CREATE OR REPLACE PROCEDURE insert_event_match ( year_of_bid IN INTEGER)
IS
    event_record event%ROWTYPE;
    v_capacity NUMBER;
    v_id NUMBER;
    nation_id NUMBER;
    olympics_id NUMBER;
    date_out DATE;
    CURSOR event_match_cursor IS
        select * from event;
--    TYPE ref_cur IS REF CURSOR;
--    c_event ref_cur;
BEGIN
    select venue_id, venue_capacity, ntn_id into v_id, v_capacity, nation_id from
          (select b.* from host_ntn_application a 
            inner join venue b on a.ntn_id=b.ntn_id where a.bid_year=year_of_bid 
              and a.status='Approved' order by b.venue_capacity DESC)where rownum=1;
    select olym_id into olympics_id from olympics where olym_year=year_of_bid;
    open event_match_cursor;
    loop
        fetch event_match_cursor into event_record;
        if event_match_cursor%NOTFOUND then
            EXIT;
        END IF;
        BEGIN
        get_random_event_date(year_of_bid, date_out); 
        END;
        INSERT INTO event_match (em_date, event_id, venue_id, olym_id)VALUES (date_out, event_record.event_id, v_id, olympics_id); 
    end loop;
EXCEPTION 
    WHEN NO_DATA_FOUND THEN
    dbms_output.put_line('No Olympics this year');
END;
/

exec insert_event_match(2021);
exec insert_event_match(2016);
exec insert_event_match(2012);

