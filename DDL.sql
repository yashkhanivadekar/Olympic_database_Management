set serveroutput on;
--Procedure to create NATION table if not exists 
DECLARE
table_name_of VARCHAR(20):='';
BEGIN
  SELECT table_name INTO table_name_of FROM dba_tables where table_name = 'NATION' and OWNER ='ADMIN';
  dbms_output.put_line('Skipped creating the table ' || table_name_of || ' as it already exists');
 EXCEPTION WHEN NO_DATA_FOUND then
     EXECUTE IMMEDIATE 'CREATE TABLE NATION( 
        ntn_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
        ntn_name VARCHAR(100) NOT NULL,
        ntn_continent VARCHAR(100) NOT NULL
        )';
    dbms_output.put_line('Table NATION created');
END;
/

--Procedure to create OLYMPICS table if not exists 
DECLARE
table_name_of VARCHAR(20):='';
BEGIN
  SELECT table_name INTO table_name_of FROM dba_tables where table_name = 'OLYMPICS' and OWNER ='ADMIN';
  dbms_output.put_line('Skipped creating the table ' || table_name_of || ' as it already exists');
 EXCEPTION WHEN NO_DATA_FOUND then
     EXECUTE IMMEDIATE 'create table olympics (     
        olym_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
        olym_year INTEGER NOT NULL,
        ntn_id INTEGER,
        CONSTRAINT Olympics_FK FOREIGN KEY (ntn_id) REFERENCES NATION(ntn_id)
        )';
    dbms_output.put_line('Table OLYMPICS created');
END;
/

--Procedure to create ATHLETE table if not exists 
DECLARE
table_name_of VARCHAR(20):='';
BEGIN
  SELECT table_name INTO table_name_of FROM dba_tables where table_name = 'ATHLETE' and OWNER ='ADMIN'; 
  dbms_output.put_line('Skipped creating the table ' || table_name_of || ' as it already exists');
 EXCEPTION WHEN NO_DATA_FOUND then
     EXECUTE IMMEDIATE 'CREATE TABLE ATHLETE(
        athl_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
        athl_name VARCHAR(100) NOT NULL,
        athl_dob DATE NOT NULL,
        athl_gender VARCHAR(6) NOT NULL,
        athl_height DECIMAL(38,20) NOT NULL,
        athl_weight DECIMAL(38,20) NOT NULL,
        ntn_id INTEGER NOT NULL,
        CONSTRAINT Athlete_FK FOREIGN KEY (ntn_id) REFERENCES NATION(ntn_id),
        CHECK (athl_gender in (''Male'', ''Female''))
        )';
    dbms_output.put_line('Table ATHLETE created');
END;
/

--Procedure to create HOST_NTN_APPLICATION table if not exists 
DECLARE
table_name_of VARCHAR(20):='';
BEGIN
  SELECT table_name INTO table_name_of FROM dba_tables where table_name = 'HOST_NTN_APPLICATION' and OWNER ='ADMIN';
  dbms_output.put_line('Skipped creating the table ' || table_name_of || ' as it already exists');
 EXCEPTION WHEN NO_DATA_FOUND then
     EXECUTE IMMEDIATE 'CREATE TABLE HOST_NTN_APPLICATION( 
        host_appl_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
        bid_amount DECIMAL(38,20) NOT NULL,
        bid_year INTEGER NOT NULL,
        appl_date Timestamp NOT NULL,
        status VARCHAR(20),
        ntn_id INTEGER NOT NULL,
        olym_id INTEGER NOT NULL,
        CONSTRAINT Host_Ntn_Appl_FK1 FOREIGN KEY (ntn_id) REFERENCES NATION(ntn_id),
        CONSTRAINT Host_Ntn_Appl_FK2 FOREIGN KEY (olym_id) REFERENCES OLYMPICS(OLYM_ID),
        CONSTRAINT Host_Appl_Status CHECK (status in (''Approved'', ''Rejected''))
        )';
    dbms_output.put_line('Table HOST_NTN_APPLICATION created');
END;
/

--Procedure to create SPORT table if not exists 
DECLARE
table_name_of VARCHAR(20):='';
BEGIN
  SELECT table_name INTO table_name_of FROM dba_tables where table_name = 'SPORT' and OWNER ='ADMIN';
  dbms_output.put_line('Skipped creating the table ' || table_name_of || ' as it already exists');
 EXCEPTION WHEN NO_DATA_FOUND then
     EXECUTE IMMEDIATE 'CREATE TABLE SPORT( 
        sport_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
        sport_name VARCHAR(100) NOT NULL
        )';
    dbms_output.put_line('Table SPORT created');
END;
/

--Procedure to create ATHL_APPLICATION table if not exists 
DECLARE
table_name_of VARCHAR(20):='';
BEGIN
  SELECT table_name INTO table_name_of FROM dba_tables where table_name = 'ATHL_APPLICATION' and OWNER ='ADMIN';
  dbms_output.put_line('Skipped creating the table ' || table_name_of || ' as it already exists');
 EXCEPTION WHEN NO_DATA_FOUND then
     EXECUTE IMMEDIATE 'CREATE TABLE ATHL_APPLICATION( 
        athl_appl_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
        appl_date Timestamp NOT NULL,
        status VARCHAR(20),
        athl_id INTEGER NOT NULL,
        sport_id INTEGER NOT NULL,
        ntn_id INTEGER NOT NULL,
        CONSTRAINT Athl_Appl_FK1 FOREIGN KEY (athl_id) REFERENCES ATHLETE(athl_id),
        CONSTRAINT Athl_Appl_FK2 FOREIGN KEY (sport_id) REFERENCES SPORT(sport_id),
        CONSTRAINT Athl_Appl_FK3 FOREIGN KEY (ntn_id) REFERENCES NATION(ntn_id),
        CONSTRAINT Athl_Appl_Status CHECK (status in (''Approved'', ''Rejected''))
    )';
    dbms_output.put_line('Table ATHL_APPLICATION created');
END;
/

--Procedure to create EVENT table if not exists 
DECLARE
table_name_of VARCHAR(20):='';
BEGIN
  SELECT table_name INTO table_name_of FROM dba_tables where table_name = 'EVENT' and OWNER ='ADMIN';
  dbms_output.put_line('Skipped creating the table ' || table_name_of || ' as it already exists');
 EXCEPTION WHEN NO_DATA_FOUND then
     EXECUTE IMMEDIATE 'CREATE TABLE EVENT( 
        event_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
        event_name VARCHAR(100) NOT NULL,
        event_type VARCHAR(6) NOT NULL,
        event_gender VARCHAR(6) NOT NULL,
        sport_id INTEGER NOT NULL,
        CONSTRAINT Event_FK FOREIGN KEY (sport_id) REFERENCES SPORT(sport_id),
        CONSTRAINT Event_type_Check CHECK (event_type in (''Single'', ''Team'')),
        CONSTRAINT Event_Gender_Check CHECK (event_gender in (''Male'', ''Female''))
    )';
    dbms_output.put_line('Table EVENT created');
END;
/

--Procedure to create VENUE table if not exists 
DECLARE
table_name_of VARCHAR(20):='';
BEGIN
  SELECT table_name INTO table_name_of FROM dba_tables where table_name = 'VENUE' and OWNER ='ADMIN';
  dbms_output.put_line('Skipped creating the table ' || table_name_of || ' as it already exists');
 EXCEPTION WHEN NO_DATA_FOUND then
     EXECUTE IMMEDIATE 'CREATE TABLE VENUE( 
        venue_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
        venue_name VARCHAR(255) NOT NULL,
        venue_capacity INTEGER NOT NULL,
        ntn_id INTEGER NOT NULL,
        CONSTRAINT Venue_FK FOREIGN KEY (ntn_id) REFERENCES NATION(ntn_id)
        )';
    dbms_output.put_line('Table VENUE created');
END;
/

--Procedure to create EVENT_MATCH table if not exists 
DECLARE
table_name_of VARCHAR(20):='';
BEGIN
  SELECT table_name INTO table_name_of FROM dba_tables where table_name = 'EVENT_MATCH' and OWNER ='ADMIN';
  dbms_output.put_line('Skipped creating the table ' || table_name_of || ' as it already exists');
 EXCEPTION WHEN NO_DATA_FOUND then
     EXECUTE IMMEDIATE 'CREATE TABLE EVENT_MATCH( 
        match_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
        em_date DATE NOT NULL,
        event_id INTEGER NOT NULL,
        venue_id INTEGER NOT NULL,
        olym_id INTEGER NOT NULL,
        CONSTRAINT Event_Match_FK1 FOREIGN KEY (event_id) REFERENCES EVENT(event_id),
        CONSTRAINT Event_Match_FK2 FOREIGN KEY (venue_id) REFERENCES VENUE(venue_id),
        CONSTRAINT Event_Match_FK3 FOREIGN KEY (olym_id) REFERENCES OLYMPICS(olym_id)
        )';
    dbms_output.put_line('Table EVENT_MATCH created');
END;
/

--Procedure to create GROUP_MATCH table if not exists 
DECLARE
table_name_of VARCHAR(20):='';
BEGIN
  SELECT table_name INTO table_name_of FROM dba_tables where table_name = 'GROUP_MATCH' and OWNER ='ADMIN';
  dbms_output.put_line('Skipped creating the table ' || table_name_of || ' as it already exists');
 EXCEPTION WHEN NO_DATA_FOUND then
     EXECUTE IMMEDIATE 'CREATE TABLE GROUP_MATCH( 
        group_match_id INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
        group_type VARCHAR(6) NOT NULL,
        CONSTRAINT Group_Match_Type_Check CHECK (group_type in (''Single'', ''Team''))
        )';
    dbms_output.put_line('Table GROUP_MATCH created');
END;
/

--Procedure to create GROUP_ATHLETE table if not exists 
DECLARE
table_name_of VARCHAR(20):='';
BEGIN
  SELECT table_name INTO table_name_of FROM dba_tables where table_name = 'GROUP_ATHLETE' and OWNER ='ADMIN'; 
  dbms_output.put_line('Skipped creating the table ' || table_name_of || ' as it already exists');
 EXCEPTION WHEN NO_DATA_FOUND then
     EXECUTE IMMEDIATE 'CREATE TABLE GROUP_ATHLETE( 
        athl_id INTEGER NOT NULL,
        group_match_id INTEGER NOT NULL,
        CONSTRAINT Group_Athl_FK1 FOREIGN KEY(athl_id) REFERENCES ATHLETE(athl_id),
        CONSTRAINT Group_Athl_FK2 FOREIGN KEY(group_match_id) REFERENCES GROUP_MATCH(group_match_id),
        CONSTRAINT Group_Athl_PK PRIMARY KEY (athl_id, group_match_id)
        )';
    dbms_output.put_line('Table GROUP_ATHLETE created');
END;
/

--Procedure to create ATHLETE_EVENT table if not exists 
DECLARE
table_name_of VARCHAR(20):='';
BEGIN
  SELECT table_name INTO table_name_of FROM dba_tables where table_name = 'ATHLETE_EVENT' and OWNER ='ADMIN';
  dbms_output.put_line('Skipped creating the table ' || table_name_of || ' as it already exists');
 EXCEPTION WHEN NO_DATA_FOUND then
     EXECUTE IMMEDIATE 'CREATE TABLE ATHLETE_EVENT( 
        athl_id INTEGER NOT NULL,
        event_id INTEGER NOT NULL,
        CONSTRAINT Athl_Event_FK1 FOREIGN KEY(athl_id) REFERENCES ATHLETE(athl_id),
        CONSTRAINT Athl_Event_FK2 FOREIGN KEY(event_id) REFERENCES EVENT(event_id),
        CONSTRAINT Athl_Event_PK PRIMARY KEY (athl_id, event_id)
        )';
    dbms_output.put_line('Table ATHLETE_EVENT created');
END;
/

--Procedure to create NATION_LIST table if not exists 
DECLARE
table_name_of VARCHAR(20):='';
BEGIN
  SELECT table_name INTO table_name_of FROM dba_tables where table_name = 'NATION_LIST' and OWNER ='ADMIN';
  dbms_output.put_line('Skipped creating the table ' || table_name_of || ' as it already exists');
 EXCEPTION WHEN NO_DATA_FOUND then
     EXECUTE IMMEDIATE 'CREATE TABLE NATION_LIST( 
        ntn_id INTEGER NOT NULL,
        olym_id INTEGER NOT NULL,
        CONSTRAINT Nation_List_FK1 FOREIGN KEY(ntn_id) REFERENCES NATION(ntn_id),
        CONSTRAINT Nation_List_FK2 FOREIGN KEY(olym_id) REFERENCES OLYMPICS(olym_id),
        CONSTRAINT Nation_List_PK PRIMARY KEY (ntn_id, olym_id)
        )';
    dbms_output.put_line('Table NATION_LIST created');
END;
/

--Procedure to create GROUP_MATCH_RESULT table if not exists 
DECLARE
table_name_of VARCHAR(20):='';
BEGIN
  SELECT table_name INTO table_name_of FROM dba_tables where table_name = 'GROUP_MATCH_RESULT' and OWNER ='ADMIN';
  dbms_output.put_line('Skipped creating the table ' || table_name_of || ' as it already exists');
 EXCEPTION WHEN NO_DATA_FOUND then
     EXECUTE IMMEDIATE 'CREATE TABLE GROUP_MATCH_RESULT( 
        group_match_id INTEGER NOT NULL,
        match_id INTEGER NOT NULL,
        score decimal(38,20),
        player_position INTEGER,
        medal_type VARCHAR(20),
        CONSTRAINT Grp_Match_Res_FK1 FOREIGN KEY(group_match_id) REFERENCES GROUP_MATCH(group_match_id),
        CONSTRAINT Grp_Match_Res_FK2 FOREIGN KEY(match_id) REFERENCES EVENT_MATCH(match_id),
        CONSTRAINT Grp_Match_Res_PK PRIMARY KEY (group_match_id, match_id)
        )';
    dbms_output.put_line('Table GROUP_MATCH_RESULT created');
END;
/