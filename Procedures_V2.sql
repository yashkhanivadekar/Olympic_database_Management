/* Inserts into 3 tables:
    1. group_match
    2. athlete_event;
    3. group_athlete;
*/
CREATE OR REPLACE PROCEDURE ntn_admin_inserts(g_type IN VARCHAR, e_id IN INTEGER, a_id_1 IN INTEGER, a_id_2 IN INTEGER DEFAULT -1)
IS
    g_id INTEGER := group_match_id.NEXTVAL;
BEGIN
    dbms_output.put_line('---- Procedure ntn_admin_inserts started ----');
    INSERT INTO group_match VALUES (g_id, g_type);
    INSERT INTO athlete_event (athl_id, event_id) VALUES (a_id_1, e_id);
    INSERT INTO group_athlete (athl_id, group_match_id) VALUES (a_id_1, g_id);
    IF (a_id_2 != -1) THEN
        dbms_output.put_line('Team Group');
        INSERT INTO athlete_event (athl_id, event_id) VALUES (a_id_2, e_id);
        INSERT INTO group_athlete (athl_id, group_match_id) VALUES (a_id_2, g_id);
    ELSE 
        dbms_output.put_line('Single Group');
    END IF;
    commit;
    dbms_output.put_line('---- Procedure ntn_admin_inserts completed ----');
EXCEPTION
    WHEN OTHERS THEN
        rollback;
        dbms_output.put_line('Exception --> || ' || sqlerrm);
END;
/



/* Inserts into event_match */
CREATE OR REPLACE PROCEDURE olym_admin_match_inserts(p_olym_year IN INTEGER DEFAULT -1)
IS
    olym_year_not_found EXCEPTION;
    match_date DATE;
    l_venue_id venue.venue_id%TYPE;
    l_olym_id INTEGER;
    r_event_id athlete_event.event_id%TYPE;
    CURSOR c_athl_event IS
        SELECT DISTINCT event_id FROM athlete_event
            WHERE event_id IN (SELECT event_id FROM event WHERE sport_id NOT IN (4, 5))
        ORDER BY event_id;
BEGIN
    IF (p_olym_year = -1) THEN
        RAISE olym_year_not_found;
    END IF;
    
    dbms_output.put_line('----Procedure olym_admin_match_inserts started----');
    
    OPEN c_athl_event;
    LOOP
        FETCH c_athl_event INTO r_event_ID;
        EXIT WHEN c_athl_event%NOTFOUND;
        
        get_random_event_date(p_olym_year, match_date);
        
        SELECT venue_id INTO l_venue_id FROM 
            (SELECT venue_id FROM VENUE 
            WHERE ntn_id = (SELECT ntn_id FROM olympics WHERE olym_year = p_olym_year) 
        ORDER BY dbms_random.VALUE) WHERE ROWNUM = 1;
        
        SELECT olym_id INTO l_olym_id FROM olympics WHERE olym_year = p_olym_year;
        
        INSERT INTO event_match (em_date, event_id, venue_id, olym_id) VALUES (match_date, r_event_id, l_venue_id, l_olym_id);
    
    END LOOP;
    CLOSE c_athl_event;
    commit;
    dbms_output.put_line('----Procedure olym_admin_match_inserts completed----');
EXCEPTION
    WHEN olym_year_not_found THEN
        rollback;
        dbms_output.put_line('----Procedure failed because Olym_year was not found----');
    WHEN OTHERS THEN
        rollback;
        dbms_output.put_line('Exception occured in olym_admin_match_inserts --> ' || sqlerrm);
END;
/






/* Inserts into group_match_result */
CREATE OR REPLACE PROCEDURE olym_admin_match_result_inserts
IS
r_match event_match%ROWTYPE;
r_group_id INTEGER;
group_athl_sql VARCHAR(500);
CURSOR c_match IS
    SELECT * FROM  event_match;
TYPE c_group_id_type IS REF CURSOR;
c_group_id c_group_id_type;
BEGIN
    dbms_output.put_line('----Procedure olym_admin_match_result_inserts started----');
    OPEN c_match;
    LOOP
        FETCH c_match INTO r_match;
            
        EXIT WHEN c_match%NOTFOUND;
        
        group_athl_sql := 
            'SELECT DISTINCT group_match_id FROM group_athlete 
                WHERE athl_id IN (SELECT athl_id FROM athlete_event WHERE event_id = :e_id)
            ORDER BY group_match_id';
        
        OPEN c_group_id FOR group_athl_sql USING r_match.event_id;
        LOOP
            FETCH c_group_id INTO r_group_id;
            EXIT WHEN c_group_id%NOTFOUND;
            INSERT INTO group_match_result (group_match_id, match_id) VALUES (r_group_id, r_match.match_id);
        END LOOP;
        commit;
    END LOOP;
    commit;
    dbms_output.put_line('----Procedure olym_admin_match_result_inserts completed----');
EXCEPTION
    WHEN OTHERS THEN
        rollback;
        dbms_output.put_line('Exception occured in olym_admin_match_inserts --> ' || sqlerrm);
END;
/



/* Updates status in host_ntn_application */
CREATE OR REPLACE PROCEDURE update_host_ntn_application_status(p_olym_year IN integer)
IS
    l_max_bid host_ntn_application.bid_amount%TYPE := 0;
    l_host_ntn_record host_ntn_application%ROWTYPE;
    CURSOR c_host_ntn_appl IS
        SELECT * FROM host_ntn_application WHERE bid_year = p_olym_year;
BEGIN
    dbms_output.put_line('--Updating status in Host_Ntn_Application for the year ' || p_olym_year || '--');
    
    SELECT max(bid_amount) INTO l_max_bid FROM host_ntn_application WHERE bid_year = p_olym_year;
    dbms_output.put_line('--Max bid for the year ' || p_olym_year || ' is ' || l_max_bid || '--');
    
    OPEN c_host_ntn_appl;
    
    LOOP
        FETCH c_host_ntn_appl into l_host_ntn_record;
        
        IF c_host_ntn_appl%NOTFOUND THEN
            EXIT;
        END IF;
        
        IF l_host_ntn_record.bid_amount >= l_max_bid THEN
            UPDATE host_ntn_application SET status = 'Approved' WHERE host_appl_id = l_host_ntn_record.host_appl_id;
            UPDATE olympics SET ntn_id = l_host_ntn_record.ntn_id WHERE olym_id = l_host_ntn_record.olym_id;
            commit;
        ELSE
            UPDATE host_ntn_application SET status = 'Rejected' WHERE host_appl_id = l_host_ntn_record.host_appl_id;
            commit;
        END IF;
    END LOOP;
    
    dbms_output.put_line('--Updating completed--');
    commit;
    CLOSE c_host_ntn_appl;
    
EXCEPTION
    WHEN OTHERS THEN
        rollback;
        dbms_output.put_line('Found exception while updating status --> ' || sqlerrm);
END;
/





/* Update group_match_result */
CREATE OR REPLACE PROCEDURE olym_admin_generate_res
IS
    r_match_id INTEGER;
    r_match group_match_result%ROWTYPE;
    random_score NUMBER(38, 2);
    match_sql VARCHAR(500);
    medal VARCHAR(10);
    idx INTEGER;
    CURSOR c_match_id IS 
        SELECT match_id FROM group_match_result GROUP BY match_id ORDER BY match_id;
    TYPE c_match_type IS REF CURSOR;
    c_match c_match_type;
BEGIN
    dbms_output.put_line('----Procedure olym_admin_generate_res completed----');
    OPEN c_match_id;
    LOOP
        FETCH c_match_id INTO r_match_id;
        EXIT WHEN c_match_id%NOTFOUND;
        
        match_sql := 'SELECT * FROM group_match_result WHERE match_id = :m_id';
        OPEN c_match FOR match_sql USING r_match_id;
        LOOP
            FETCH c_match INTO r_match;            
            EXIT WHEN c_match%NOTFOUND;
            
            SELECT round(dbms_random.value(0, 100), 2) INTO random_score from dual;
            UPDATE group_match_result SET score = random_score WHERE group_match_id = r_match.group_match_id AND match_id = r_match_id;
            COMMIT;
        END LOOP;
        CLOSE c_match;
        COMMIT;
    END LOOP;
    CLOSE c_match_id;
    COMMIT;
    OPEN c_match_id;
     LOOP
        FETCH c_match_id INTO r_match_id;
        EXIT WHEN c_match_id%NOTFOUND;
        
        match_sql := 'SELECT * FROM group_match_result WHERE match_id = :m_id ORDER BY score DESC';
        OPEN c_match FOR match_sql USING r_match_id;
        LOOP
            FETCH c_match INTO r_match;            
            EXIT WHEN c_match%NOTFOUND;
            
            medal := 'None';
            IF (c_match%ROWCOUNT = 1) THEN
                medal := 'Gold';
            END IF;
            IF (c_match%ROWCOUNT = 2) THEN
                medal := 'Silver';
            END IF;
            IF (c_match%ROWCOUNT = 3) THEN
                medal := 'Bronze';
            END IF;
            idx := c_match%ROWCOUNT;
            UPDATE group_match_result 
                SET medal_type = medal, player_position = idx 
            WHERE group_match_id = r_match.group_match_id AND match_id = r_match_id;
            COMMIT;
        END LOOP;
        CLOSE c_match;
        COMMIT;
    END LOOP;
    CLOSE c_match_id;
    COMMIT;
    dbms_output.put_line('----Procedure olym_admin_generate_res completed----');
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        dbms_output.put_line('Found exception while updating status --> ' || sqlerrm);
END;
/












