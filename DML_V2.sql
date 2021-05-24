/* Inserting into OLYMPICS table */
INSERT INTO olympics (olym_year) VALUES ('2021');
INSERT INTO olympics (olym_year) VALUES ('2016');
INSERT INTO olympics (olym_year) VALUES ('2012');
INSERT INTO olympics (olym_year) VALUES ('2008');
INSERT INTO olympics (olym_year) VALUES ('2004');
--select * from olympics;
commit;





/* Inserting into NATION table */
INSERT INTO NATION (ntn_name, ntn_continent) VALUES ('Greece', 'Europe');
INSERT INTO NATION (ntn_name, ntn_continent) VALUES ('USA', 'North America');
INSERT INTO NATION (ntn_name, ntn_continent) VALUES ('England', 'Europe');
INSERT INTO NATION (ntn_name, ntn_continent) VALUES ('Brazil', 'South America');
INSERT INTO NATION (ntn_name, ntn_continent) VALUES ('Japan', 'Asia');
INSERT INTO NATION (ntn_name, ntn_continent) VALUES ('Argentina', 'South America');
INSERT INTO NATION (ntn_name, ntn_continent) VALUES ('Mexico', 'North America');
INSERT INTO NATION (ntn_name, ntn_continent) VALUES ('India', 'Asia');
INSERT INTO NATION (ntn_name, ntn_continent) VALUES ('South Africa', 'Africa');
INSERT INTO NATION (ntn_name, ntn_continent) VALUES ('Zimbawe', 'Africa');
INSERT INTO NATION (ntn_name, ntn_continent) VALUES ('Kenya', 'Africa');
INSERT INTO NATION (ntn_name, ntn_continent) VALUES ('China', 'Asia');
INSERT INTO NATION (ntn_name, ntn_continent) VALUES ('Germany', 'Europe');
INSERT INTO NATION (ntn_name, ntn_continent) VALUES ('Jamaica', 'North America');
INSERT INTO NATION (ntn_name, ntn_continent) VALUES ('Colombia', 'South America');
--select * from nation order by ntn_id;
commit;






/* Inserting into ATHLETE table */
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('George Dimitris', '20-feb-1996', 'Male', 182.2, 55.2, 1);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Nicholas Green', '08-nov-1994', 'Male', 190.4, 60.5, 1);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Maria Adamos', '04-nov-1990', 'Female', 170, 45, 1);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Alexios Golemis', '10-mar-1992', 'Male', 184.2, 56.2, 1);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Mirela Maniani', '28-oct-1990', 'Female', 192.4, 63.5, 1);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Kyriaki Adamis', '14-apr-1988', 'Female', 175, 47.6, 1);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Georgios Hoidis', '20-jan-1993', 'Male', 183.5, 54.3, 1);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Dimos Mangos', '18-sep-1991', 'Male', 180.4, 54.6, 1);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Niki Panetta', '14-nov-1995', 'Female', 180, 52.4, 1);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Elleni Paouris', '09-sep-1989', 'Female', 180.2, 53.4, 1);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('James Smith', '09-sep-1992', 'Male', 195.3, 65.2, 2);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Maria Gracia', '05-june-1993', 'Female', 172.9, 50.6, 2);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Mary Smith', '02-oct-1993', 'Female', 175 , 52.3, 2);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Jack Oliver', '18-feb-1998', 'Male', 180.2, 55.1, 3);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Jacob Cullen', '10-dec-1997', 'Male', 185.9, 57.8, 3);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Olivia Smith', '30-sep-1995', 'Female', 183.6, 56, 3);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Nathan Adrian', '22-feb-1994', 'Male', 198.2, 75.8, 2);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Virginia Thrasher', '15-mar-1995', 'Male', 198.3, 70.5, 2);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Lilly Held', '12-apr-1993', 'Female', 175.5, 48.5, 2);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Bryan Murphy', '23-jul-1989', 'Male', 183.8, 63.4, 2);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Laura Pieroni', '20-june-1992', 'Female', 185.2, 60.3, 2);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Michael Phelps', '07-dec-1992', 'Male', 181.5 , 59.8, 2);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Jocelyn Feigen', '17-mar-1996', 'Female', 189.2, 75.1, 2);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('William Jackson', '22-jan-1996', 'Male', 188.2, 67.3, 3);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Rhona Martin', '24-apr-1992', 'Female', 178.3, 50.5, 3);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Janice Rankin', '19-jul-1988', 'Female', 185.5, 57.2, 3);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Laurence Jackson', '30-jul-1987', 'Male', 185.8, 65.4, 3);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Debbie Knox', '31-jan-1995', 'Female', 181.2, 58.4, 3);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Robin Welsh', '19-oct-1990', 'Male', 189.5 , 70.8, 3);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Margaret Morton', '26-aug-1994', 'Female', 179.2, 70.1, 3);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Fabiana Brown', '26-aug-1994', 'Female', 175.2, 68.1, 4);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Sheilla Fabi', '26-aug-1994', 'Female', 189.2, 80.5, 4);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Solonei da Silva', '24-apr-1992', 'Female', 183.3, 52.3, 4);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Geisa Coutinho', '19-jul-1988', 'Female', 181.5, 55.9, 4);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Maila Lopes', '31-jan-1995', 'Female', 188.2, 60.2, 4);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Torben Grael', '30-jul-1987', 'Male', 188.8, 66.4, 4);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Emanuel Ricardo', '19-oct-1990', 'Male', 179.5 , 65.3, 4);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Robert Scheidt', '22-jan-1996', 'Male', 188.2, 70.3, 4);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Lutimar Paes', '26-aug-1994', 'Male', 189.2, 72.5, 4);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Jorge Vides', '26-aug-1994', 'Male', 176.2, 65.7, 4);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Naoki Abe', '16-jan-1996', 'Female', 178.2, 64.4, 5);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Kiyoshi Adachi', '17-jul-1992', 'Female', 182.2, 70.4, 5);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Hirooki Arai', '22-may-1997', 'Female', 173.3, 45.9, 5);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Kumi Araki', '20-aug-1985', 'Female', 179.5, 52.3, 5);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Sumie Awara', '01-sep-1992', 'Female', 183.2, 55.9, 5);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Yuko Arimori', '30-jul-1987', 'Male', 186.8, 63.4, 5);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Shinji Aoto', '29-jan-1990', 'Male', 172.4 , 62.1, 5);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Kumao Aochi', '12-dec-1994', 'Male', 186.2, 65.6, 5);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Toyoji Aihara', '30-jul-1988', 'Male', 179.2, 66.6, 5);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Isao Abe', '01-jan-1995', 'Male', 172.2, 62.7, 5);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Maria Perez', '16-jan-1996', 'Female', 188.2, 74.4, 6);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Sabrina Ameghino', '17-jul-1992', 'Female', 175.2, 67.5, 6);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Jennifer Dahlgren', '22-may-1997', 'Female', 179.3, 52.9, 6);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Rosa Godoy', '20-aug-1985', 'Female', 172.5, 45.7, 6);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Maria Peralta', '01-sep-1992', 'Female', 188.2, 57.2, 6);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Braian Toledo', '30-jul-1987', 'Male', 185.8, 62.1, 6);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('German Lauro', '29-jan-1990', 'Male', 180.4 , 66.7, 6);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Federico Bruno', '12-dec-1994', 'Male', 196.2, 70.3, 6);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Mariano Mastromarino', '30-jul-1988', 'Male', 189.2, 69.2, 6);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Luis Ariel Molina', '01-jan-1995', 'Male', 170.1, 61.3, 6);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Liliana Allen', '21-feb-1993', 'Female', 178.6, 75.4, 7);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Olga Appell', '27-feb-1995', 'Female', 178.2, 69.1, 7);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Miguel Camberos', '12-jan-1993', 'Female', 189.3, 60.1, 7);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Ciro Chapa', '30-nov-1995', 'Female', 175.5, 47.4, 7);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Blanca Jaime', '31-dec-1994', 'Female', 199.6, 67.2, 7);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Enrique Aquino', '02-jul-1988', 'Male', 181.3, 58.6, 7);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Carlos de Anda', '11-sep-1991', 'Male', 178.2 , 63.4, 7);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Alberto Alvarez', '22-may-1992', 'Male', 176.2, 50.2, 7);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Mariano Aguilar', '29-mar-1990', 'Male', 185.2, 65.8, 7);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Herman Adam', '10-apr-1994', 'Male', 170.1, 61.3, 7);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Saina Nehwal', '28-feb-1983', 'Female', 178.6, 75.4, 8);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('P.V. Sindhu', '27-mar-1985', 'Female', 178.2, 69.1, 8);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Mary Kom', '12-apr-1973', 'Female', 189.3, 60.1, 8);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Sakshi Malik', '30-may-1996', 'Female', 175.5, 47.4, 8);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Karnam Malleswari', '30-jun-1990', 'Female', 199.6, 67.2, 8);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Vijay Kumar', '02-jul-1982', 'Male', 181.3, 58.6, 8);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Zafar Iqbal', '11-aug-1981', 'Male', 178.2 , 63.4, 8);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Roop Singh', '22-sep-1980', 'Male', 176.2, 50.2, 8);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Leander Peas', '29-oct-1975', 'Male', 185.2, 65.8, 8);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Abhinav Bindra', '10-nov-1988', 'Male', 170.1, 61.3, 8);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Isabel Roux', '26-dec-1992', 'Female', 188.2, 74.4, 9);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Rene Kalmer', '07-nov-1988', 'Female', 175.2, 67.5, 9);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Alyssa Conley', '12-oct-1993', 'Female', 179.3, 52.9, 9);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Zola Budd', '10-sep-1981', 'Female', 172.5, 45.7, 9);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Willie Bothma', '30-aug-1988', 'Female', 188.2, 57.2, 9);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Werner Botha', '20-jul-1983', 'Male', 185.8, 62.1, 9);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Karen Botha', '19-jun-1986', 'Male', 180.4 , 66.7, 9);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Jan Barnard', '02-may-1992', 'Male', 196.2, 70.3, 9);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Sid Atkinson', '20-apr-1982', 'Male', 189.2, 69.2, 9);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Antonio Alkana', '31-mar-1991', 'Male', 170.1, 61.3, 9);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Gaily Dube', '31-jan-1994', 'Female', 190.1, 75.4, 10);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Fabiana Muyaba', '17-dec-1990', 'Female', 180.6, 69.2, 10);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Crispen Mutakanyi', '22-nov-1995', 'Female', 189.3, 55.3, 10);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Julie Masvanise', '20-oct-1983', 'Female', 182.5, 49.3, 10);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Julia Sakara', '10-sep-1990', 'Female', 190.1, 59.5, 10);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Ken Harnden', '30-aug-1985', 'Male', 189.3, 64.4, 10);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('James Gombedza', '29-jul-1988', 'Male', 185.2 , 62.9, 10);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Mike Fokoroni', '12-jun-1994', 'Male', 192.1, 65.3, 10);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Brian Dzingai', '30-may-1984', 'Male', 179.6, 59.2, 10);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Lewis Banda', '11-apr-1993', 'Male', 170.1, 61.3, 10);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Isabel Kiprop', '21-mar-1995', 'Female', 180.1, 65.4, 11);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Carrie Muneria', '07-feb-1991', 'Female', 198.6, 75.6, 11);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Winnie Chebet', '12-jan-1996', 'Female', 193.3, 59.6, 11);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Alice Aprot', '10-dec-1984', 'Female', 172.5, 49.3, 11);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Betsy Saina', '30-nov-1991', 'Female', 180.1, 65.5, 11);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Alex Sampao', '20-sep-1986', 'Male', 181.3, 59.4, 11);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Alphas Kishoyian', '19-sep-1989', 'Male', 189.2 , 64.9, 11);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Raymond Kibet', '02-aug-1995', 'Male', 193.1, 66.3, 11);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Carvin Nkanata', '10-jul-1985', 'Male', 189.6, 63.2, 11);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Mike Mokamba', '31-may-1994', 'Male', 172.1, 65.3, 11);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Wang Meng', '11-feb-1994', 'Female', 178, 62.2, 12);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Li Nina', '27-jan-1990', 'Female', 194.6, 73.3, 12);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Wang Manli', '02-dec-1995', 'Female', 191.3, 58.6, 12);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Yang Yang', '30-nov-1983', 'Female', 170.5, 47.1, 12);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Sun Linlin', '20-oct-1990', 'Female', 178.3, 63.2, 12);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Li Yuwei', '10-aug-1984', 'Male', 178.3, 55.5, 12);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Luan Jujie', '09-aug-1988', 'Male', 179.2 , 54.5, 12);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Zhou Jihong', '22-jun-1994', 'Male', 173.1, 56.3, 12);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Lou Yun', '20-mar-1985', 'Male', 189.6, 63.2, 12);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Li Ning', '30-apr-1992', 'Male', 172.1, 65.3, 12);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Emmy Albus', '21-mar-1993', 'Female', 175.3, 60.2, 13);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Jirka Arndt', '07-mar-1989', 'Female', 191.6, 70.5, 13);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Alina Astafei', '22-feb-1991', 'Female', 192.4, 59.6, 13);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Kim barth', '21-aug-1986', 'Female', 182.3, 57.5, 13);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Leena Gunther', '12-jun-1993', 'Female', 175.3, 60.5, 13);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Max Gebhardt', '20-feb-1994', 'Male', 188.1, 65.5, 13);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Paul Gessel', '29-nov-1990', 'Male', 199.2 , 72.5, 13);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Carl Dohmann', '20-feb-1984', 'Male', 170.1, 53.6, 13);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Tino Haber', '20-mar-1985', 'Male', 185.2, 62.7, 13);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Arthur Abele', '30-apr-1992', 'Male', 175, 68.3, 13);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Veronica Brown', '01-jan-1991', 'Female', 178.4, 62.2, 14);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Shelly Ann', '17-feb-1983', 'Female', 193.6, 72.5, 14);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Sherone Simpson', '22-feb-1991', 'Female', 193.4, 60.3, 14);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Kerron Stewart', '22-mar-1976', 'Female', 184.5, 59.3, 14);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Christine Day', '23-aug-1983', 'Female', 172.3, 58.5, 14);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Usain Bolt', '30-dec-1991', 'Male', 185.7, 63.5, 14);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Don Quarrie', '19-may-1980', 'Male', 179.2 , 52.1, 14);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Lennox Miller', '10-mar-1984', 'Male', 172.5, 55.4, 14);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('George Rhoden', '03-feb-1985', 'Male', 182.5, 65.2, 14);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Arthur Wint', '30-apr-1992', 'Male', 172, 65.4, 14);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Erika Abril', '10-feb-1991', 'Female', 188.4, 72.5, 15);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Evelis Aguilar', '27-jul-1993', 'Female', 195.6, 74.2, 15);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Sandra Arenas', '21-mar-1990', 'Female', 183.4, 55.3, 15);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Kellys Arias', '12-may-1986', 'Female', 174.5, 51.4, 15);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Mirtha Brock', '13-jan-1993', 'Female', 182.3, 68.2, 15);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Rafael Mora', '20-sep-1995', 'Male', 182.7, 61.5, 15);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Johana Moreno', '01-jun-1984', 'Male', 177.2 , 58.9, 15);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Jimmy Sierra', '10-feb-1994', 'Male', 199.5, 75.4, 15);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Carlos Sierra', '30-jan-1981', 'Male', 184.5, 61.2, 15);
INSERT INTO athlete (athl_name, athl_dob, athl_gender, athl_height, athl_weight, ntn_id) VALUES ('Emilio Torres', '20-mar-1983', 'Male', 176, 63.4, 15);
--select * from athlete order by ntn_id;
commit;





/* Inserting into SPORT table */
INSERT INTO sport (sport_name) VALUES ('Aquatics');
INSERT INTO sport (sport_name) VALUES ('Athletics');
INSERT INTO sport (sport_name) VALUES ('Gymnastics');
INSERT INTO sport (sport_name) VALUES ('Badminton');
INSERT INTO sport (sport_name) VALUES ('Tennis');
INSERT INTO sport (sport_name) VALUES ('Archery');
INSERT INTO sport (sport_name) VALUES ('Boxing');
INSERT INTO sport (sport_name) VALUES ('Weightlifting');
INSERT INTO sport (sport_name) VALUES ('Freestyle');
INSERT INTO sport (sport_name) VALUES ('Shooting');
--select * from sport;
commit;






/* Inserting into EVENT table */
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Swimming', 'Single', 'Female', 1);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Water Polo', 'Team', 'Female', 1);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Diving', 'Single', 'Male', 1);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('100M Race', 'Single', 'Female', 2);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('400M Race', 'Single', 'Female', 2);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Shot Put', 'Single', 'Male', 2);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('100M Race', 'Single', 'Male', 2);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('400M Race', 'Single', 'Male', 2);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Shot Put', 'Single', 'Female', 2);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Floor Exercises', 'Single', 'Female', 3);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Rings', 'Single', 'Male', 3);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Vault', 'Single', 'Male', 3);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Women''s Singles', 'Single', 'Female', 4);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Men''s Singles', 'Single', 'Male', 4);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Men''s Doubles', 'Team', 'Male', 4);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Women''s Doubles', 'Team', 'Female', 4);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Women''s Singles', 'Single', 'Female', 5);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Men''s Singles', 'Single', 'Male', 5);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Men''s Doubles', 'Team', 'Male', 5);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Women''s Doubles', 'Team', 'Female', 5);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Women''s Individual', 'Single', 'Female', 6);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Men''s Individual', 'Single', 'Male', 6);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Men''s Team', 'Team', 'Male', 6);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Women''s Team', 'Team', 'Female', 6);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Women''s Fly (48-51kg)', 'Single', 'Female', 7);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Women''s Light (57-60kg)', 'Single', 'Female', 7);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Women''s Middle (69-75kg)', 'Single', 'Female', 7);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Men''s Fly (52kg)', 'Single', 'Male', 7);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Men''s Light (60kg)', 'Single', 'Male', 7);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Men''s Middle (75kg)', 'Single', 'Male', 7);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Women''s +75kg', 'Single', 'Female', 8);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Women''s 69kg', 'Single', 'Female', 8);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Women''s 63kg', 'Single', 'Female', 8);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Women''s 58kg', 'Single', 'Female', 8);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Men''s +105kg', 'Single', 'Male', 8);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Men''s 94kg', 'Single', 'Male', 8);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Men''s 85kg', 'Single', 'Male', 8);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Men''s 77kg', 'Single', 'Male', 8);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Women''s 4 x 100m Freestyle Relay', 'Team', 'Female', 9);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Women''s 4 x 200m Freestyle Relay', 'Team', 'Female', 9);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Men''s 4 x 100m Freestyle Relay', 'Team', 'Male', 9);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('Men''s 4 x 200m Freestyle Relay', 'Team', 'Male', 9);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('10m Air Pistol Women', 'Single', 'Female', 10);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('10m Air Rifle Women', 'Single', 'Female', 10);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('25m Pistol Women', 'Single', 'Female', 10);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('50m Rifle 3 Positions Women', 'Single', 'Female', 10);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('10m Air Pistol Women', 'Single', 'Male', 10);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('10m Air Rifle Women', 'Single', 'Male', 10);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('25m Pistol Women', 'Single', 'Male', 10);
INSERT INTO event (event_name, event_type, event_gender, sport_id) VALUES ('50m Rifle 3 Positions Women', 'Single', 'Male', 10);
--select * from event order by sport_id;
commit;





/* Inserting into VENUE table */
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Marathon City Stadium', 72000, 1);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Aquatics Centre', 52000, 1);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Francis Field', 67000, 1);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Regal City Stadium', 85000, 2);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Olympisch Stadium', 72000, 2);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Stade de Stadium', 92000, 2);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('White City Stadium', 80000, 3);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Riverside Stadium', 55000, 3);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Lebron Stadium', 66000, 3);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Lebron Aquatics Stadium', 17500, 4);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Amazonia Arena', 40549, 4);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Fonte Nova Arena', 51700, 4);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Maracana Stadium', 120000, 4);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Riverside Drive', 120000, 5);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('National Stadium', 80016, 5);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Nissan Stadium', 72327, 5);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Saitama Stadium', 63700, 6);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Dome Stadium', 55000, 6);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Estadio Stadium', 60000, 6);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Zetca Stadium', 87573, 7);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Olimpico Stadium', 48297, 7);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('University Stadium', 48297, 7);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('White Field Stadium', 48297, 8);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Francis Stadium', 58000, 8);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Commonwealth Fields', 58000, 8);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Fenway Lands', 58000, 9);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Broadway Stadium', 58000, 9);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Motorways Stadium', 58000, 9);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Homesland Field', 58000, 10);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Blue Empire Stadium', 58000, 10);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Belentic Stadium', 58000, 10);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Rosewood Fields', 58000, 11);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Zocala Stadium', 58000, 11);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Botanical Fields', 58000, 11);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Montriac Stadium', 58000, 12);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Walking Course', 58000, 12);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Marathon Course', 58000, 12);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('North Sydney Stadium', 58000, 13);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Pontal Fields', 58000, 13);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Radison Stadium', 58000, 13);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Bluecross Stadium', 58000, 14);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Greensland Fields', 58000, 14);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('University City Stadium', 58000, 14);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Aquatics Fields', 58000, 15);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Munchen Stadium', 58000, 15);
INSERT INTO venue (venue_name, venue_capacity, ntn_id) VALUES ('Dora Fields', 58000, 15);
--select * from venue;
commit;





/* Inserting into NATION_LIST table */
BEGIN
    INSERT ALL
        INTO nation_list (olym_id, ntn_id) VALUES (1, 1)
        INTO nation_list (olym_id, ntn_id) VALUES (1, 2)
        INTO nation_list (olym_id, ntn_id) VALUES (1, 3)
        INTO nation_list (olym_id, ntn_id) VALUES (1, 4)
        INTO nation_list (olym_id, ntn_id) VALUES (1, 5)
        INTO nation_list (olym_id, ntn_id) VALUES (1, 6)
        INTO nation_list (olym_id, ntn_id) VALUES (1, 7)
        INTO nation_list (olym_id, ntn_id) VALUES (1, 8)
        INTO nation_list (olym_id, ntn_id) VALUES (1, 9)
        INTO nation_list (olym_id, ntn_id) VALUES (1, 10)
        INTO nation_list (olym_id, ntn_id) VALUES (1, 11)
        INTO nation_list (olym_id, ntn_id) VALUES (1, 12)
        INTO nation_list (olym_id, ntn_id) VALUES (1, 13)
        INTO nation_list (olym_id, ntn_id) VALUES (1, 14)
        INTO nation_list (olym_id, ntn_id) VALUES (1, 15)
        INTO nation_list (olym_id, ntn_id) VALUES (2, 1)
        INTO nation_list (olym_id, ntn_id) VALUES (2, 2)
        INTO nation_list (olym_id, ntn_id) VALUES (2, 3)
        INTO nation_list (olym_id, ntn_id) VALUES (2, 4)
        INTO nation_list (olym_id, ntn_id) VALUES (2, 5)
        INTO nation_list (olym_id, ntn_id) VALUES (2, 6)
        INTO nation_list (olym_id, ntn_id) VALUES (3, 7)
        INTO nation_list (olym_id, ntn_id) VALUES (3, 8)
        INTO nation_list (olym_id, ntn_id) VALUES (3, 9)
        INTO nation_list (olym_id, ntn_id) VALUES (3, 10)
        INTO nation_list (olym_id, ntn_id) VALUES (3, 11)
        INTO nation_list (olym_id, ntn_id) VALUES (3, 12)
        INTO nation_list (olym_id, ntn_id) VALUES (4, 13)
        INTO nation_list (olym_id, ntn_id) VALUES (4, 14)
        INTO nation_list (olym_id, ntn_id) VALUES (4, 15)
        INTO nation_list (olym_id, ntn_id) VALUES (4, 1)
        INTO nation_list (olym_id, ntn_id) VALUES (4, 2)
        INTO nation_list (olym_id, ntn_id) VALUES (4, 3)
        INTO nation_list (olym_id, ntn_id) VALUES (5, 4)
        INTO nation_list (olym_id, ntn_id) VALUES (5, 5)
        INTO nation_list (olym_id, ntn_id) VALUES (5, 6)
        INTO nation_list (olym_id, ntn_id) VALUES (5, 7)
        INTO nation_list (olym_id, ntn_id) VALUES (5, 8)
        INTO nation_list (olym_id, ntn_id) VALUES (5, 9)
    SELECT 1 FROM dual
    ;
    commit;
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        dbms_output.put_line('Values already added');
    WHEN OTHERS THEN
        dbms_output.put_line('Exception occured while adding nation_list --> ' || sqlerrm);
END;
/
--select * from nation_list order by olym_id, ntn_id;
commit;





/* Inserting Generated Data into Athl_Application */
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('24-JAN-21', 11, 2, 4);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('09-FEB-21', 12, 2, 7);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('25-FEB-21', 13, 2, 3);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('20-JAN-21', 14, 3, 8);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('14-APR-21', 15, 3, 5);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('13-MAR-21', 16, 3, 7);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('03-APR-21', 17, 2, 6);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('11-MAR-21', 18, 2, 2);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('26-FEB-21', 19, 2, 7);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('04-FEB-21', 20, 2, 8);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('11-APR-21', 21, 2, 4);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('21-APR-21', 22, 2, 4);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('27-MAR-21', 23, 2, 3);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('24-APR-21', 24, 3, 7);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('04-JAN-21', 25, 3, 9);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('12-APR-21', 26, 3, 5);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('02-MAR-21', 27, 3, 8);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('27-FEB-21', 28, 3, 10);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('10-FEB-21', 29, 3, 3);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('07-APR-21', 30, 3, 5);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('14-APR-21', 31, 4, 6);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('25-APR-21', 32, 4, 4);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('31-JAN-21', 33, 4, 3);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('20-FEB-21', 34, 4, 3);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('25-FEB-21', 35, 4, 3);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('28-MAR-21', 36, 4, 8);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('29-APR-21', 37, 4, 6);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('20-APR-21', 38, 4, 6);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('13-MAR-21', 39, 4, 6);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('21-MAR-21', 40, 4, 5);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('19-MAR-21', 41, 5, 3);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('25-MAR-21', 42, 5, 9);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('17-FEB-21', 43, 5, 10);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('19-JAN-21', 44, 5, 9);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('11-APR-21', 45, 5, 9);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('26-FEB-21', 46, 5, 10);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('10-MAR-21', 47, 5, 5);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('11-APR-21', 48, 5, 2);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('09-JAN-21', 49, 5, 9);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('15-FEB-21', 50, 5, 2);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('13-APR-21', 51, 6, 1);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('23-MAR-21', 52, 6, 6);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('16-MAR-21', 53, 6, 8);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('02-MAR-21', 54, 6, 1);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('07-JAN-21', 55, 6, 5);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('04-MAR-21', 56, 6, 8);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('13-FEB-21', 57, 6, 4);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('28-JAN-21', 58, 6, 1);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('18-FEB-21', 59, 6, 3);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('21-APR-21', 60, 6, 2);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('30-JAN-21', 61, 7, 5);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('22-FEB-21', 62, 7, 10);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('12-APR-21', 63, 7, 1);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('02-MAR-21', 64, 7, 10);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('27-JAN-21', 65, 7, 9);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('19-FEB-21', 66, 7, 6);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('19-MAR-21', 67, 7, 9);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('09-JAN-21', 68, 7, 1);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('01-FEB-21', 69, 7, 2);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('02-FEB-21', 70, 7, 5);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('02-APR-21', 71, 8, 8);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('12-JAN-21', 72, 8, 3);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('02-FEB-21', 73, 8, 9);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('02-MAR-21', 74, 8, 2);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('14-APR-21', 75, 8, 6);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('10-MAR-21', 76, 8, 2);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('30-MAR-21', 77, 8, 1);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('19-MAR-21', 78, 8, 7);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('24-MAR-21', 79, 8, 9);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('16-JAN-21', 80, 8, 4);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('07-FEB-21', 81, 9, 5);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('07-FEB-21', 82, 9, 8);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('11-MAR-21', 83, 9, 7);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('20-FEB-21', 84, 9, 2);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('03-MAR-21', 85, 9, 10);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('28-APR-21', 86, 9, 1);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('03-APR-21', 87, 9, 1);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('07-MAR-21', 88, 9, 10);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('16-JAN-21', 89, 9, 6);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('12-JAN-21', 90, 9, 1);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('04-APR-21', 91, 10, 2);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('17-FEB-21', 92, 10, 4);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('27-MAR-21', 93, 10, 2);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('01-APR-21', 94, 10, 1);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('17-APR-21', 95, 10, 5);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('22-APR-21', 96, 10, 4);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('16-JAN-21', 97, 10, 8);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('06-JAN-21', 98, 10, 2);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('14-JAN-21', 99, 10, 4);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('16-MAR-21', 100, 10, 8);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('17-MAR-21', 101, 11, 10);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('18-JAN-21', 102, 11, 7);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('29-APR-21', 103, 11, 9);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('29-APR-21', 104, 11, 7);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('13-FEB-21', 105, 11, 9);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('01-MAR-21', 106, 11, 9);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('06-JAN-21', 107, 11, 9);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('30-APR-21', 108, 11, 8);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('17-MAR-21', 109, 11, 10);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('21-MAR-21', 110, 11, 10);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('27-FEB-21', 111, 12, 10);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('04-MAR-21', 112, 12, 7);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('18-MAR-21', 113, 12, 3);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('05-APR-21', 114, 12, 1);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('26-MAR-21', 115, 12, 3);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('09-FEB-21', 116, 12, 1);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('12-MAR-21', 117, 12, 4);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('25-JAN-21', 118, 12, 9);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('12-JAN-21', 119, 12, 10);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('18-FEB-21', 120, 12, 9);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('24-APR-21', 121, 13, 8);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('22-APR-21', 122, 13, 1);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('03-JAN-21', 123, 13, 6);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('23-FEB-21', 124, 13, 8);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('28-APR-21', 125, 13, 9);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('28-JAN-21', 126, 13, 1);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('23-JAN-21', 127, 13, 1);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('05-JAN-21', 128, 13, 3);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('18-FEB-21', 129, 13, 6);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('28-MAR-21', 130, 13, 5);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('13-MAR-21', 131, 14, 9);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('20-FEB-21', 132, 14, 2);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('18-FEB-21', 133, 14, 10);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('02-MAR-21', 134, 14, 3);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('01-APR-21', 135, 14, 3);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('29-JAN-21', 136, 14, 10);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('07-APR-21', 137, 14, 6);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('05-JAN-21', 138, 14, 4);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('09-FEB-21', 139, 14, 6);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('16-JAN-21', 140, 14, 5);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('01-MAR-21', 141, 15, 9);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('17-FEB-21', 142, 15, 3);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('18-FEB-21', 143, 15, 10);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('05-APR-21', 144, 15, 8);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('13-FEB-21', 145, 15, 7);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('10-FEB-21', 146, 15, 3);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('23-APR-21', 147, 15, 7);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('03-MAR-21', 148, 15, 6);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('19-JAN-21', 149, 15, 1);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('26-FEB-21', 150, 15, 6);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('28-APR-21', 1, 1, 5);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('08-FEB-21', 2, 1, 9);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('12-MAR-21', 3, 1, 10);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('29-JAN-21', 4, 1, 4);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('07-MAR-21', 5, 1, 1);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('03-JAN-21', 6, 1, 3);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('06-APR-21', 7, 1, 8);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('12-MAR-21', 8, 1, 9);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('10-JAN-21', 9, 1, 10);
INSERT INTO athl_application (appl_date, athl_id, ntn_id, sport_id) VALUES ('07-APR-21', 10, 1, 1);
commit;


/* Updating the status of athl_application after executing above procedures */
--update athl_application set status = 'Approved' where athl_id in (select distinct athl_id from athlete_event);
--update athl_application set status = 'Rejected' where status is null;









/* Inserting Generated Data into Host_Ntn_Application */
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (412767.92, 2021, '18-MAR-21', 1, 1);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (782394.03, 2021, '08-MAR-21', 2, 1);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (453410.21, 2021, '07-MAR-21', 3, 1);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (523761.61, 2021, '18-FEB-21', 4, 1);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (601372.83, 2021, '26-FEB-21', 5, 1);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (434300.57, 2021, '21-APR-21', 6, 1);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (505375.93, 2021, '25-FEB-21', 7, 1);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (223232.41, 2021, '05-MAR-21', 8, 1);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (232281.94, 2021, '08-FEB-21', 9, 1);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (651995.25, 2021, '06-APR-21', 10, 1);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (177099.75, 2021, '06-FEB-21', 11, 1);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (440204.58, 2021, '12-JAN-21', 12, 1);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (794574.36, 2021, '07-APR-21', 13, 1);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (892762.09, 2021, '08-MAR-21', 14, 1);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (293522, 2021, '04-MAR-21', 15, 1);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (489035.59, 2016, '10-APR-16', 1, 2);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (172081.09, 2016, '03-JAN-16', 2, 2);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (915673.6, 2016, '15-FEB-16', 3, 2);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (975369.63, 2016, '24-FEB-16', 4, 2);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (303947.19, 2016, '25-JAN-16', 5, 2);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (268551.7, 2016, '15-JAN-16', 6, 2);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (767909.23, 2012, '07-FEB-12', 7, 3);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (779946.09, 2012, '18-JAN-12', 8, 3);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (590676.22, 2012, '13-JAN-12', 9, 3);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (867475.59, 2012, '15-FEB-12', 10, 3);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (771674.92, 2012, '05-APR-12', 11, 3);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (221418.28, 2012, '01-FEB-12', 12, 3);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (596182.68, 2008, '15-JAN-08', 13, 4);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (500515.62, 2008, '17-MAR-08', 14, 4);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (194050.9, 2008, '13-MAR-08', 15, 4);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (162110.16, 2008, '18-APR-08', 1, 4);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (316198.27, 2008, '17-MAR-08', 2, 4);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (547432.26, 2008, '03-FEB-08', 3, 4);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (370073.71, 2004, '20-FEB-04', 4, 5);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (925615.06, 2004, '13-FEB-04', 5, 5);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (760635.08, 2004, '10-FEB-04', 6, 5);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (497979.93, 2004, '12-FEB-04', 7, 5);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (201585.96, 2004, '10-APR-04', 8, 5);
INSERT INTO host_ntn_application (bid_amount, bid_year, appl_date, ntn_id, olym_id) VALUES (500373.46, 2004, '20-APR-04', 9, 5);
commit;





/* Procedure calls to generate table data for the following tables:
    1. group_match
    2. athlete_event;
    3. group_athlete;
*/
set serveroutput on;
/* Nation 1 */
exec ntn_admin_inserts('Single', 18, 1);
exec ntn_admin_inserts('Team', 42, 2, 8);
exec ntn_admin_inserts('Team', 41, 2, 8);
exec ntn_admin_inserts('Single', 43, 43);
exec ntn_admin_inserts('Single', 45, 3);
exec ntn_admin_inserts('Single', 14, 4);
exec ntn_admin_inserts('Team', 1, 5, 10);
/* Nation 2 */
exec ntn_admin_inserts('Single', 14, 11);
exec ntn_admin_inserts('Team', 15, 11, 22);
exec ntn_admin_inserts('Single', 25, 19);
exec ntn_admin_inserts('Single', 26, 19);
exec ntn_admin_inserts('Single', 14, 13);
exec ntn_admin_inserts('Single', 10, 13);
exec ntn_admin_inserts('Single', 22, 17);
/* Nation 3 */
exec ntn_admin_inserts('Single', 35, 14);
exec ntn_admin_inserts('Single', 36, 14);
exec ntn_admin_inserts('Single', 37, 27);
exec ntn_admin_inserts('Single', 38, 27);
exec ntn_admin_inserts('Team', 20, 26, 30);
exec ntn_admin_inserts('Team', 18, 15);
exec ntn_admin_inserts('Single', 25, 16);
exec ntn_admin_inserts('Single', 26, 16);
/* Nation 4 */
exec ntn_admin_inserts('Team', 23, 37, 38);
exec ntn_admin_inserts('Single', 21, 31);
exec ntn_admin_inserts('Single', 13, 32);
exec ntn_admin_inserts('Single', 10, 33);
exec ntn_admin_inserts('Single', 35, 38);
exec ntn_admin_inserts('Single', 36, 38);
/* Nation 5 */
exec ntn_admin_inserts('Single', 10, 41);
exec ntn_admin_inserts('Team', 39, 44, 45);
exec ntn_admin_inserts('Team', 40, 44, 45);
exec ntn_admin_inserts('Team', 40, 44, 45);
exec ntn_admin_inserts('Single', 44, 43);
exec ntn_admin_inserts('Single', 48, 49);
exec ntn_admin_inserts('Single', 47, 49);
exec ntn_admin_inserts('Single', 7, 48);
exec ntn_admin_inserts('Single', 8, 48);
exec ntn_admin_inserts('Single', 6, 48);
/* Nation 6 */
exec ntn_admin_inserts('Team', 2, 54, 51);
exec ntn_admin_inserts('Single', 1, 54);
exec ntn_admin_inserts('Single', 3, 58);
exec ntn_admin_inserts('Single', 21, 52);
exec ntn_admin_inserts('Single', 34, 53);
exec ntn_admin_inserts('Single', 33, 53);
exec ntn_admin_inserts('Single', 36, 56);
exec ntn_admin_inserts('Single', 37, 56);
exec ntn_admin_inserts('Single', 17, 55);
exec ntn_admin_inserts('Single', 14, 57);
/* Nation 7 */
exec ntn_admin_inserts('Single', 16, 61);
exec ntn_admin_inserts('Single', 18, 70);
exec ntn_admin_inserts('Single', 44, 62);
exec ntn_admin_inserts('Single', 43, 64);
exec ntn_admin_inserts('Single', 1, 63);
exec ntn_admin_inserts('Single', 3, 68);
exec ntn_admin_inserts('Single', 22, 66);
/* Nation 8 */
exec ntn_admin_inserts('Single', 31, 71);
exec ntn_admin_inserts('Single', 32, 71);
exec ntn_admin_inserts('Single', 33, 71);
exec ntn_admin_inserts('Single', 10, 72);
exec ntn_admin_inserts('Single', 9, 74);
exec ntn_admin_inserts('Single', 10, 74);
exec ntn_admin_inserts('Single', 8, 74);
exec ntn_admin_inserts('Single', 6, 76);
exec ntn_admin_inserts('Single', 21, 75);
exec ntn_admin_inserts('Single', 3, 77);
exec ntn_admin_inserts('Single', 30, 78);
exec ntn_admin_inserts('Single', 29, 78);
/* Nation 9 */
exec ntn_admin_inserts('Single', 17, 81);
exec ntn_admin_inserts('Single', 32, 82);
exec ntn_admin_inserts('Single', 33, 82);
exec ntn_admin_inserts('Single', 26, 83);
exec ntn_admin_inserts('Single', 27, 83);
exec ntn_admin_inserts('Single', 9, 84);
exec ntn_admin_inserts('Single', 4, 84);
exec ntn_admin_inserts('Single', 5, 84);
exec ntn_admin_inserts('Single', 48, 88);
exec ntn_admin_inserts('Single', 49, 88);
exec ntn_admin_inserts('Single', 3, 86);
/* Nation 10 */
exec ntn_admin_inserts('Single', 9, 91);
exec ntn_admin_inserts('Single', 4, 93);
exec ntn_admin_inserts('Single', 6, 98);
exec ntn_admin_inserts('Team', 15, 96, 99);
exec ntn_admin_inserts('Single', 6, 94);
exec ntn_admin_inserts('Single', 17, 95);
exec ntn_admin_inserts('Single', 38, 100);
exec ntn_admin_inserts('Single', 37, 100);
exec ntn_admin_inserts('Single', 35, 97);
exec ntn_admin_inserts('Single', 36, 97);
/* Nation 11 */
exec ntn_admin_inserts('Single', 43, 101);
exec ntn_admin_inserts('Single', 44, 101);
exec ntn_admin_inserts('Single', 47, 109);
exec ntn_admin_inserts('Single', 48, 109);
exec ntn_admin_inserts('Single', 49, 109);
exec ntn_admin_inserts('Single', 25, 102);
exec ntn_admin_inserts('Single', 27, 102);
exec ntn_admin_inserts('Single', 26, 104);
exec ntn_admin_inserts('Team', 39, 103, 105);
exec ntn_admin_inserts('Team', 40, 103, 105);
exec ntn_admin_inserts('Team', 41, 106, 107);
exec ntn_admin_inserts('Team', 42, 106, 107);
/* Nation 12 */
exec ntn_admin_inserts('Single', 44, 111);
exec ntn_admin_inserts('Single', 43, 111);
exec ntn_admin_inserts('Single', 49, 119);
exec ntn_admin_inserts('Single', 48, 119);
exec ntn_admin_inserts('Single', 27, 112);
exec ntn_admin_inserts('Single', 27, 112);
exec ntn_admin_inserts('Single', 10, 113);
exec ntn_admin_inserts('Single', 1, 114);
exec ntn_admin_inserts('Single', 3, 116);
exec ntn_admin_inserts('Team', 41, 118, 120);
exec ntn_admin_inserts('Team', 42, 118, 120);
/* Nation 13 */
exec ntn_admin_inserts('Single', 31, 121);
exec ntn_admin_inserts('Single', 32, 121);
exec ntn_admin_inserts('Single', 33, 124);
exec ntn_admin_inserts('Single', 34, 124);
exec ntn_admin_inserts('Single', 1, 122);
exec ntn_admin_inserts('Single', 3, 127);
exec ntn_admin_inserts('Single', 21, 123);
exec ntn_admin_inserts('Single', 22, 129);
exec ntn_admin_inserts('Single', 11, 128);
exec ntn_admin_inserts('Single', 11, 130);
/* Nation 14 */
exec ntn_admin_inserts('Single', 9, 132);
exec ntn_admin_inserts('Single', 4, 132);
exec ntn_admin_inserts('Single', 5, 132);
exec ntn_admin_inserts('Single', 43, 133);
exec ntn_admin_inserts('Single', 44, 133);
exec ntn_admin_inserts('Single', 48, 136);
exec ntn_admin_inserts('Single', 49, 136);
exec ntn_admin_inserts('Single', 10, 134);
exec ntn_admin_inserts('Team', 23, 137, 139);
exec ntn_admin_inserts('Single', 22, 137);
exec ntn_admin_inserts('Single', 14, 138);
exec ntn_admin_inserts('Single', 18, 140);
/* Nation 15 */
exec ntn_admin_inserts('Single', 11, 146);
exec ntn_admin_inserts('Single', 10, 142);
exec ntn_admin_inserts('Single', 43, 143);
exec ntn_admin_inserts('Single', 44, 143);
exec ntn_admin_inserts('Single', 31, 144);
exec ntn_admin_inserts('Single', 32, 144);
exec ntn_admin_inserts('Single', 29, 147);
exec ntn_admin_inserts('Single', 30, 147);
exec ntn_admin_inserts('Single', 27, 145);
exec ntn_admin_inserts('Single', 26, 145);
exec ntn_admin_inserts('Single', 22, 148);
exec ntn_admin_inserts('Team', 23, 148, 150);






-- function /* Inserting into GROUP_MATCH_RESULT table */
--INSERT INTO group_match_result (group_match_id, match_id, score, player_position, medal_type) VALUES (1 , 1, 99.5, 1 , 'Gold');
--INSERT INTO group_match_result (group_match_id, match_id, score, player_position, medal_type) VALUES (2 , 1, 95.4, 2, 'Silver');
--INSERT INTO group_match_result (group_match_id, match_id, score, player_position, medal_type) VALUES (3 , 1, 92.2, 3, 'Bronze');
--INSERT INTO group_match_result (group_match_id, match_id, score, player_position, medal_type) VALUES (4 , 3, 98.2, 1 , 'Gold');
--INSERT INTO group_match_result (group_match_id, match_id, score, player_position, medal_type) VALUES (5 , 3, 97.9, 2, 'Silver');
--INSERT INTO group_match_result (group_match_id, match_id, score, player_position, medal_type) VALUES (6 , 3, 94.5, 3, 'Bronze');
--INSERT INTO group_match_result (group_match_id, match_id, score, player_position, medal_type) VALUES (7 , 4, 97.1, 1 , 'Gold');
--INSERT INTO group_match_result (group_match_id, match_id, score, player_position, medal_type) VALUES (8 , 4, 92.4, 2, 'Silver');
--INSERT INTO group_match_result (group_match_id, match_id, score, player_position, medal_type) VALUES (9 , 4, 92.1, 3, 'Bronze');
--commit;
--select * from group_match_result;


-- function /* Inserting into EVENT_MATCH table */
--INSERT INTO event_match (em_date, event_id, venue_id, olym_id) VALUES ('01-may-2021', 1, 1, 1);
--INSERT INTO event_match (em_date, event_id, venue_id, olym_id) VALUES ('10-may-2021', 2, 1, 1);
--INSERT INTO event_match (em_date, event_id, venue_id, olym_id) VALUES ('15-may-2021', 2, 1, 1);
--INSERT INTO event_match (em_date, event_id, venue_id, olym_id) VALUES ('25-may-2021', 4, 1, 1);
--INSERT INTO event_match (em_date, event_id, venue_id, olym_id) VALUES ('01-feb-2016', 1, 2, 2);
--INSERT INTO event_match (em_date, event_id, venue_id, olym_id) VALUES ('15-feb-2016', 3, 2, 2);
--INSERT INTO event_match (em_date, event_id, venue_id, olym_id) VALUES ('03-mar-2016', 3, 2, 2);
--INSERT INTO event_match (em_date, event_id, venue_id, olym_id) VALUES ('10-aug-2012', 8, 3, 3);
--INSERT INTO event_match (em_date, event_id, venue_id, olym_id) VALUES ('25-aug-2012', 2, 3, 3);
--INSERT INTO event_match (em_date, event_id, venue_id, olym_id) VALUES ('01-sep-2012', 2, 3, 3);
--select * from event_match;
--commit;













/* 
@NotUsed -  Inserting generated values instead
Inserting into Athl_Application -- */
--exec generate_athl_application;
--select * from athl_application;
--delete from athl_application;


/* 
@NotUsed - 
Inserting into Host_Ntn_Application */
--exec generate_host_ntn_application(2021);
--exec generate_host_ntn_application(2016);
--exec generate_host_ntn_application(2012);
--exec generate_host_ntn_application(2008);
--exec generate_host_ntn_application(2004);
--select * from host_ntn_application where status='Approved';
