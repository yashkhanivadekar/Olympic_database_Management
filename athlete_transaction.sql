INSERT INTO admin.athl_application (appl_date, athl_id,sport_id, ntn_id) VALUES ('01-MAR-2021', 1, 2, 1);
INSERT INTO admin.athl_application (appl_date, athl_id,sport_id, ntn_id) VALUES ('01-MAR-2021', 2, 5, 1);
INSERT INTO admin.athl_application (appl_date, athl_id,sport_id, ntn_id) VALUES ('01-MAR-2021', 3, 9, 1);
commit;
select * from admin.athl_application order by athl_appl_id desc;
commit;