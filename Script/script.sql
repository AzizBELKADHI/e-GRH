drop table autorisationabsence;
drop table connectionresponsable;
drop table pointage;
drop table conge;
drop table employe;
drop table calendrier;


 create table calendrier ( jour date primary key,
 type_j varchar2(35),
 description_jr varchar2(50));

 create table employe(id_employe number(8) primary key,
  nom_e varchar2(35),
  prenom_e varchar2(35),
  date_ns date,
  sexe char(1),
  departement varchar2(35),
  type_contrat varchar2(35),
  date_debut_contrat date,
  date_fin_contrat date,
  nb_conge number(2),
  photo varchar2(200));

 create table conge(id_employe number(8) references employe(id_employe)ON DELETE CASCADE,
 date_depart date,
 date_reprise date,
 nat_conge varchar2(30)
  );

 create table pointage ( id_employe number(8) references employe(id_employe)ON DELETE CASCADE,
 jour date references calendrier(jour),
  heure_e_machine number(2),
  min_e_machine number(2),
  heure_s_machine number(2),
  min_s_machine number(2),
  heure_e_manuelle number(2),
  min_e_manuelle number(2),
  heure_s_manuelle number(2),
  min_s_manuelle number(2),
  constraint c10 primary key(id_employe,jour,heure_e_manuelle,min_e_manuelle,heure_s_manuelle,min_s_manuelle));


 create table connectionresponsable ( id_employe number(8) references employe(id_employe) ON DELETE CASCADE,
  identifiant varchar2(20) UNIQUE,
  mot_passe varchar2(20),
  mail varchar2(30) unique,
  constraint C9 primary key (id_employe,identifiant,mot_passe));


 create table autorisationabsence(id_employe number(8) references employe(id_employe)ON DELETE CASCADE,
   date_d date,
   date_f date,
   heure_d number(2),
   min_d number(2),
   heure_f number(2),
   min_f number(2),
   type_a varchar2(35),
   motif_a varchar2(35),
   constraint c13 primary key(id_employe,date_d,date_f,heure_d,heure_f));


INSERT INTO calendrier VALUES ('01/01/2017'  ,'Ferie',   'Double Seance');
INSERT INTO calendrier VALUES ('02/01/2017'  ,'Travail', 'Double Seance');
INSERT INTO calendrier VALUES ('03/01/2017'  ,'Travail', 'Double Seance');
INSERT INTO calendrier VALUES ('04/01/2017'  ,'Travail', 'Double Seance');
INSERT INTO calendrier VALUES ('05/01/2017'  ,'Travail', 'Double Seance');
INSERT INTO calendrier VALUES ('06/01/2017'  ,'Travail', 'Double Seance');
INSERT INTO calendrier VALUES ('07/01/2017'  ,'Travail', 'Double Seance');
INSERT INTO calendrier VALUES ('08/01/2017'  ,'Ferie',   'Double Seance');
INSERT INTO calendrier VALUES ('09/01/2017'  ,'Travail', 'Double Seance');
INSERT INTO calendrier VALUES ('10/01/2017'  ,'Travail', 'Double Seance');
INSERT INTO calendrier VALUES ('11/01/2017'  ,'Travail', 'Double Seance');
INSERT INTO calendrier VALUES ('12/01/2017'  ,'Travail', 'Double Seance');
INSERT INTO calendrier VALUES ('13/01/2017'  ,'Travail', 'Double Seance');
INSERT INTO calendrier VALUES ('14/01/2017'  ,'Travail', 'Double Seance');
INSERT INTO calendrier VALUES ('15/01/2017'  ,'Travail', 'Double Seance');
INSERT INTO calendrier VALUES ('16/03/2017'  ,'Travail', 'Double Seance');
INSERT INTO calendrier VALUES ('17/03/2017'  ,'Travail', 'Double Seance');
INSERT INTO calendrier VALUES ('18/03/2017'  ,'Travail', 'Double Seance');
INSERT INTO calendrier VALUES ('19/03/2017'  ,'Ferie',   'Double Seance');
INSERT INTO calendrier VALUES ('20/03/2017'  ,'Travail', 'Double Seance');
INSERT INTO calendrier VALUES ('21/03/2017'  ,'Travail', 'Double Seance');
INSERT INTO calendrier VALUES ('22/03/2017'  ,'Travail', 'Double Seance');
INSERT INTO calendrier VALUES ('23/03/2017'  ,'Travail', 'Double Seance');
INSERT INTO calendrier VALUES ('24/03/2017  ','Travail', 'Double Seance');
INSERT INTO calendrier VALUES ('25/03/2017'  ,'Travail', 'Double Seance');
INSERT INTO calendrier VALUES ('10/04/2017'  ,'Ferie'  , 'Double Seance');
INSERT INTO calendrier VALUES ('15/04/2017'  ,'Travail', 'Double Seance');
INSERT INTO calendrier VALUES ('16/04/2017'  ,'Travail', 'Double Seance');
INSERT INTO calendrier VALUES ('20/04/2017'  ,'Travail', 'Double Seance');
INSERT INTO calendrier VALUES ('21/04/2017'  ,'Travail', 'Double Seance');
INSERT INTO calendrier VALUES ('22/04/2017'  ,'Travail', 'Double Seance');
INSERT INTO calendrier VALUES ('23/04/2017'  ,'Travail', 'Double Seance');
INSERT INTO calendrier VALUES ('24/04/2017'  ,'Travail', 'Double Seance');
INSERT INTO calendrier VALUES ('25/04/2017'  ,'Travail', 'Double Seance');


INSERT INTO employe VALUES(1,'AYARI','ANIS','10/11/1995','H','RH','LD','12/01/2014','12/01/2018',30,'C:\photos\AnisAyari.jpg');
INSERT INTO employe VALUES(2,'AMARI','GHASSEN','13/07/1996','H','RH','LD','12/01/2014','12/01/2018 ',30, 'C:\photos\AmariGhassen.jpg');
INSERT INTO employe values(3,'Dahmani','Amani','10/01/1996','F','RH','LD','12/01/2014','12/01/2018',30 ,'C:\photos\DahmaniAmani.jpg');
INSERT INTO employe VALUES(4,'Soussi','LILIA','17/12/1996','F','RH','LD','12/01/2014','12/01/2018',30,'C:\photos\elle.jpg');
INSERT INTO employe VALUES(5,'FKi','Omar','25/06/1995','H','RH','LD','12/01/2016','12/01/2018',30,'C:\photos\FkiOmar.jpg');
INSERT INTO employe VALUES(6,'Gabsi','NAHLA','19/04/1995','F','RH','LD','12/01/2016','12/01/2018',30,'C:\photos\elle.jpg');
INSERT INTO employe VALUES(7,'Gafsi','HEND','09/03/1995','F','RH','LD','12/01/2016','12/01/2018',30,'C:\photos\elle.jpg');
INSERT INTO employe VALUES(8,'Ghazouani','Haythem','17/08/1995','H','RH','LD','12/01/2016','12/01/2018',30,'C:\photos\GhazouaniHaythem.jpg');
INSERT INTO employe VALUES(9,'Sahli','KACEM','15/11/1994','H','MARKETING','LD','12/01/2016','12/01/2018',30,'C:\photos\lui.jpg');
INSERT INTO employe VALUES(10,'Zoueri','Hichem','22/01/1995','H','MARKETING','LD','12/01/2017','12/01/2018',30,'C:\photos\HichemZoueri.jpg');
INSERT INTO employe VALUES(11,'Beji','Ahlem','20/02/1995','F','MARKETING','LD','12/01/2017','12/01/2018',30,'C:\photos\elle.jpg');
INSERT INTO employe VALUES(12,'Kefi','MAHDI','12/05/1995','H','MARKETING','LD','12/01/2015','12/01/2018',30,'C:\photos\lui.jpg');
INSERT INTO employe VALUES(13,'Khmiri','Sinda','09/09/1990','F','MARKETING','LD','12/01/2015','12/01/2018',30,'C:\photos\KhmiriSinda.jpg');
INSERT INTO employe VALUES(14,'Kalii','EMNA','10/03/1995','F','RH','LD','12/01/2015','12/01/2018',30,'C:\photos\elle.jpg');
INSERT INTO employe VALUES(15,'Ksouri','Nesrine','19/04/1995','F','RH','LD','12/01/2015','12/01/2018',30,'C:\photos\KsouriNesrine.jpg');
INSERT INTO employe VALUES(16,'Mestiri','HOUYEM','20/02/1995','F','FINANCIER','LD','12/01/2015','12/01/2018',30,'C:\photos\elle.jpg');
INSERT INTO employe VALUES(17,'Karkeni','Med','19/09/1995','H','FINANCIER','LD','12/01/2015','12/01/2018',30,'C:\photos\lui.jpg');
INSERT INTO employe VALUES(18,'Jabeur','Maisa','29/07/1995','F','FINANCIER','LD','12/01/2015','12/01/2018',30,'C:\photos\MaisaJabeur.jpg');
INSERT INTO employe VALUES(19,'Tounsi','CHAYMA','02/08/1995','F','FINANCIER','LD','12/01/2015','12/01/2018',30,'C:\photos\elle.jpg');
INSERT INTO employe VALUES(20,'Sfaxi','RAYAN','20/10/1995','H','FINANCIER','LD','12/01/2015','12/01/2018',30,'C:\photos\lui.jpg');
INSERT INTO employe VALUES(21,'Soussi','KHALIL','10/11/1995','H','FINANCIER','LD','12/01/2015','12/01/2018',30,'C:\photos\lui.jpg');
INSERT INTO employe VALUES(22,'Hechmi','Med','09/11/1993','H','FINANCIER','LD','12/01/2015','12/01/2018',30,'C:\photos\MohamedHechmi.jpg');
INSERT INTO employe VALUES(23,'Gabsi','SOUHAIL','10/02/1995','H','FINANCIER','LD','12/01/2015','12/01/2018',30,'C:\photos\lui.jpg');
INSERT INTO employe VALUES(24,'Naser','Ichrak','24/08/1992','F','FINANCIER','LD','12/01/2015','12/01/2018',30,'C:\photos\NaserIchrak.jpg');
INSERT INTO employe VALUES(25,'Rjeb','Anis','18/11/1996','H','FINANCIER','LD','12/01/2015','12/01/2018',30,'C:\photos\RjebAnis.jpg');
INSERT INTO employe VALUES(26,'Banzarti','INTISAR','30/06/1997','F','FINANCIER','LD','12/01/2015','12/01/2018',30,'C:\photos\elle.jpg');
INSERT INTO employe VALUES(27,'Beji','MOUFIDA','14/06/1992','F','FINANCIER','LD','12/01/2015','12/01/2018',30,'C:\photos\elle.jpg');
INSERT INTO employe VALUES(28,'Kefi','Med','22/12/1994','H','INFO','LD','12/01/2015','12/01/2018',30,'C:\photos\lui.jpg');
INSERT INTO employe VALUES(29,'Sliman','Wassim','22/11/1998','H','INFO','LD','12/01/2015','12/01/2018',30,'C:\photos\SlimanWassim.jpg');
INSERT INTO employe VALUES(30,'Jamli','Sana','22/06/1995','F','INFO','LD','12/01/2015','12/01/2018',30,'C:\photos\SanaJamli.jpg');
INSERT INTO employe VALUES(31,'Sliman','Anisa','25/08/1995','F','INFO','LD','12/01/2015','12/01/2018',30,'C:\photos\elle.jpg');
INSERT INTO employe VALUES(32,'Karkeni','ALI','08/10/1992','H','INFO','LD','12/01/2015','12/01/2018',30,'C:\photos\lui.jpg');


INSERT INTO CONGE VALUES(2,'10/03/2017','26/03/2017','ANNUEL');
INSERT INTO CONGE VALUES(3,'15/03/2017','20/03/2017','ANNUEL');
INSERT INTO CONGE VALUES(4,'12/01/2017','17/01/2017','ANNUEL');
INSERT INTO CONGE VALUES(5,'01/03/2017','12/03/2017','ANNUEL');
INSERT INTO CONGE VALUES(6,'9/03/2017','12/03/2017','ANNUEL');
INSERT INTO CONGE VALUES(7,'08/02/2017','15/02/2017','ANNUEL');
INSERT INTO CONGE VALUES(10,'15/02/2017','21/02/2017','ANNUEL');
INSERT INTO CONGE VALUES(11,'02/02/2017','12/02/2017','MALADIE');
INSERT INTO CONGE VALUES(12,'09/01/2017','12/01/2017','MALADIE');
INSERT INTO CONGE VALUES(13,'02/01/2017','05/01/2017','MALADIE');
INSERT INTO CONGE VALUES(14,'22/03/2017','24/03/2017','MALADIE');
INSERT INTO CONGE VALUES(15,'24/03/2017','25/03/2017','MALADIE');
INSERT INTO CONGE VALUES(1,'24/04/2017','02/05/2017','ANNUEL');
INSERT INTO CONGE VALUES(29,'23/04/2017','29/04/2017','ANNUEL');
INSERT INTO CONGE VALUES(31,'25/04/2017','27/04/2017','MALADIE');


INSERT INTO Pointage VALUES (2,'16/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (3,'16/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (4,'16/03/2017',08,01,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (5,'16/03/2017',08,06,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (6,'16/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (7,'21/04/2017',08,16,NULL,NULL,08,11,16,00);
INSERT INTO Pointage VALUES (8,'21/04/2017',08,16,NULL,NULL,08,11,16,00);
INSERT INTO Pointage VALUES (9,'21/04/2017',08,11,NULL,NULL,08,11,16,00);
INSERT INTO Pointage VALUES (10,'16/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (11,'16/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (12,'21/04/2017',08,16,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (13,'16/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (14,'16/03/2017',08,02,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (15,'21/04/2017',08,17,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (16,'16/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (17,'16/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (18,'16/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (19,'16/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (20,'16/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (21,'16/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (22,'16/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (23,'16/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (24,'16/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (25,'16/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (26,'16/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (27,'16/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (28,'16/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (29,'16/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (30,'16/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (31,'16/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (32,'16/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (2,'18/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (3,'18/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (4,'18/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (5,'18/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (6,'18/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (7,'18/03/2017',08,11,NULL,NULL,08,11,16,00);
INSERT INTO Pointage VALUES (8,'18/03/2017',08,11,NULL,NULL,08,11,16,00);
INSERT INTO Pointage VALUES (9,'18/03/2017',08,11,NULL,NULL,08,11,16,00);
INSERT INTO Pointage VALUES (10,'18/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (11,'18/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (12,'18/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (13,'18/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (14,'18/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (15,'18/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (16,'18/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (17,'18/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (18,'18/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (19,'18/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (20,'18/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (21,'18/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (22,'18/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (23,'18/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (24,'18/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (25,'21/04/2017',NULL,NULL,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (26,'18/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (27,'18/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (28,'18/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (29,'18/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (30,'18/03/2017',08,11,null,null,08,11,16,00);
INSERT INTO Pointage VALUES (31,'18/03/2017',08,11,null,null,08,11,16,00);
INSERT INTO Pointage VALUES (32,'15/04/2017',08,11,NULL,NULL,08,11,16,00);
INSERT INTO Pointage VALUES (2,'20/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (3,'20/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (4,'20/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (5,'20/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (6,'20/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (7,'20/03/2017',08,11,NULL,NULL,08,11,16,00);
INSERT INTO Pointage VALUES (8,'20/03/2017',08,11,NULL,NULL,08,11,16,00);
INSERT INTO Pointage VALUES (9,'20/03/2017',08,11,NULL,NULL,08,11,16,00);
INSERT INTO Pointage VALUES (10,'20/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (11,'20/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (12,'20/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (13,'20/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (14,'20/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (15,'20/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (16,'20/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (17,'20/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (18,'20/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (19,'20/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (20,'20/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (21,'20/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (22,'20/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (23,'20/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (24,'20/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (25,'20/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (26,'20/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (27,'20/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (28,'20/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (29,'20/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (30,'20/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (31,'20/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (32,'20/03/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (2,'23/04/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (3,'23/04/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (4,'23/04/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (5,'23/04/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (6,'23/04/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (7,'23/04/2017',08,11,NULL,NULL,08,11,16,00);
INSERT INTO Pointage VALUES (8,'23/04/2017',08,11,NULL,NULL,08,11,16,00);
INSERT INTO Pointage VALUES (9,'23/04/2017',08,11,NULL,NULL,08,11,16,00);
INSERT INTO Pointage VALUES (2,'25/04/2017',08,08,16,00,08,08,16,00);
INSERT INTO Pointage VALUES (3,'25/04/2017',08,08,16,00,08,08,16,00);
INSERT INTO Pointage VALUES (4,'25/04/2017',NULL,NULL,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (5,'25/04/2017',NULL,NULL,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (6,'25/04/2017',NULL,NULL,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (7,'25/04/2017',08,11,NULL,NULL,08,11,16,00);
INSERT INTO Pointage VALUES (8,'25/04/2017',08,11,NULL,NULL,08,11,16,00);
INSERT INTO Pointage VALUES (9,'25/04/2017',08,11,NULL,NULL,08,11,16,00);
INSERT INTO Pointage VALUES (10,'25/04/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (11,'25/04/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (12,'25/04/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (13,'25/04/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (14,'25/04/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (15,'25/04/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (16,'25/04/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (17,'25/04/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (18,'25/04/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (19,'25/04/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (20,'25/04/2017',08,18,16,00,08,18,16,00);
INSERT INTO Pointage VALUES (21,'25/04/2017',08,19,16,00,08,19,16,00);
INSERT INTO Pointage VALUES (22,'25/04/2017',08,20,16,00,08,20,16,00);
INSERT INTO Pointage VALUES (23,'25/04/2017',08,17,16,00,08,17,16,00);
INSERT INTO Pointage VALUES (24,'25/04/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (25,'25/04/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (26,'25/04/2017',08,02,16,00,08,02,16,00);
INSERT INTO Pointage VALUES (27,'25/04/2017',08,11,16,00,08,11,16,00);
INSERT INTO Pointage VALUES (28,'25/04/2017',08,11,16,00,08,11,16,00);


INSERT INTO  AutorisationAbsence VALUES (2,'23/03/2017','23/03/2017',09,00,16,00,'Autorisation Sortie','Urgence');
INSERT INTO  AutorisationAbsence VALUES (3,'23/03/2017','23/03/2017',09,00,10,00,'Autorisation Sortie','Urgence');
INSERT INTO  AutorisationAbsence VALUES (4,'23/03/2017','23/03/2017',09,00,09,30,'Autorisation Sortie','Urgence');
INSERT INTO  AutorisationAbsence VALUES (5,'23/03/2017','23/03/2017',09,00,11,00,'Autorisation Sortie','Urgence');
INSERT INTO  AutorisationAbsence VALUES (6,'23/03/2017','23/03/2017',09,00,12,00,'Autorisation Sortie','Urgence');
INSERT INTO  AutorisationAbsence VALUES (9,'23/03/2017','23/03/2017',09,00,16,00,'Autorisation Sortie','Urgence');
INSERT INTO  AutorisationAbsence VALUES (10,'23/04/2017','23/04/2017',09,00,10,00,'Autorisation Sortie','Urgence');
INSERT INTO  AutorisationAbsence VALUES (16,'23/04/2017','23/04/2017',09,00,09,30,'Autorisation Sortie','Urgence');
INSERT INTO  AutorisationAbsence VALUES (28,'23/04/2017','23/04/2017',09,00,11,00,'Autorisation Sortie','Urgence');
INSERT INTO  AutorisationAbsence VALUES (29,'23/04/2017','23/04/2017',09,00,12,00,'Autorisation Sortie','Urgence');
INSERT INTO  AutorisationAbsence VALUES (32,'25/04/2017','25/04/2017',09,00,12,00,'Autorisation Sortie','Urgence');

INSERT INTO ConnectionResponsable VALUES(21,'Administrateur','admin123','azizbelkadhi.ab@gmail.com');
INSERT INTO ConnectionResponsable VALUES(22,'Employe','employe123','hatem.belhaj@yahoo.fr');



COMMIT WORK;





/