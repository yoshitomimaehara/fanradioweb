DROP DATABASE IF EXISTS fanradio ;
CREATE DATABASE fanradio;

USE fanradio;

CREATE TABLE programa(
idprograma char(4) PRIMARY KEY,
titulo varchar(100)
)engine = 'InnoDB';

CREATE TABLE locutor(
idlocutor char(4) PRIMARY KEY,
locutor varchar(100)
)engine = 'InnoDB';

CREATE TABLE horario(
idprograma char(4),
idlocutor char(4), 
dia int,
horainicio time,
horafin time
)engine = 'InnoDB';

ALTER TABLE horario
ADD CONSTRAINT fk_horario_locutor
FOREIGN KEY(idlocutor)
REFERENCES locutor(idlocutor);

ALTER TABLE horario
ADD CONSTRAINT fk_horario_programa
FOREIGN KEY(idprograma)
REFERENCES programa(idprograma);

ALTER TABLE foto
ADD CONSTRAINT fk_foto_programa
FOREIGN KEY(idprograma)
REFERENCES programa(idprograma);

INSERT INTO programa(idprograma,titulo) VALUES('P000','Auto Dj');
INSERT INTO programa(idprograma,titulo) VALUES('P001','X-OVER');
INSERT INTO programa(idprograma,titulo) VALUES('P002','Sonido Oscuro');
INSERT INTO programa(idprograma,titulo) VALUES('P003','Fuera Realidad');
INSERT INTO programa(idprograma,titulo) VALUES('P004','Anime no Hibi');
INSERT INTO programa(idprograma,titulo) VALUES('P005','Crisis de Identidad');
INSERT INTO programa(idprograma,titulo) VALUES('P006','Frikilandia');
INSERT INTO programa(idprograma,titulo) VALUES('P007','[-SERTLAMANIA-]');
INSERT INTO programa(idprograma,titulo) VALUES('P008','20 Canciones de Amor y 1 Poema Desesperado');
INSERT INTO programa(idprograma,titulo) VALUES('P009','WARP ZONE');
INSERT INTO programa(idprograma,titulo) VALUES('P010','Clockwork Raven');
INSERT INTO programa(idprograma,titulo) VALUES('P011','CODE:MANAMI');
INSERT INTO programa(idprograma,titulo) VALUES('P012','Motto Motto Anison');
INSERT INTO programa(idprograma,titulo) VALUES('P013','El Sexto Sentido');
INSERT INTO programa(idprograma,titulo) VALUES('P014','Maldita Realidad');
INSERT INTO programa(idprograma,titulo) VALUES('P015','Ost Sessions');
INSERT INTO programa(idprograma,titulo) VALUES('P016','Los Especiales');
INSERT INTO programa(idprograma,titulo) VALUES('P017','Randomeka');
INSERT INTO programa(idprograma,titulo) VALUES('P018','Area Fan Girls 2.0');

INSERT INTO locutor(idlocutor,locutor) VALUES('L000','V-Chan');
INSERT INTO locutor(idlocutor,locutor) VALUES('L001','Chino Yon');
INSERT INTO locutor(idlocutor,locutor) VALUES('L002','Vickynga');
INSERT INTO locutor(idlocutor,locutor) VALUES('L003','Sapito');
INSERT INTO locutor(idlocutor,locutor) VALUES('L004','Jimbo');
INSERT INTO locutor(idlocutor,locutor) VALUES('L005','Qoki y Demestofenes');
INSERT INTO locutor(idlocutor,locutor) VALUES('L007','The Sertla');
INSERT INTO locutor(idlocutor,locutor) VALUES('L008','Larizzi y El Lovogalds');
INSERT INTO locutor(idlocutor,locutor) VALUES('L009','Shira e Ishka');
INSERT INTO locutor(idlocutor,locutor) VALUES('L010','Manami Iino');
INSERT INTO locutor(idlocutor,locutor) VALUES('L011','Chino Yon');
INSERT INTO locutor(idlocutor,locutor) VALUES('L012','Eka Jaime');
INSERT INTO locutor(idlocutor,locutor) VALUES('L013','Melodys Jeda');
INSERT INTO locutor(idlocutor,locutor) VALUES('L015','El Sexto Prisionero');
INSERT INTO locutor(idlocutor,locutor) VALUES('L016','Jam Project L.A');
INSERT INTO locutor(idlocutor,locutor) VALUES('L017','Faber');
INSERT INTO locutor(idlocutor,locutor) VALUES('L018','Hada Verde');
INSERT INTO locutor(idlocutor,locutor) VALUES('L019','Mel');

INSERT INTO horario(idprograma,idlocutor,dia,horainicio,horafin) VALUE('P002','L002',1,'22:00:00','23:59:00');
INSERT INTO horario(idprograma,idlocutor,dia,horainicio,horafin) VALUE('P008','L015',2,'00:00:00','01:59:00');
INSERT INTO horario(idprograma,idlocutor,dia,horainicio,horafin) VALUE('P004','L004',2,'22:00:00','23:59:00');
INSERT INTO horario(idprograma,idlocutor,dia,horainicio,horafin) VALUE('P009','L017',3,'18:00:00','19:59:00');
INSERT INTO horario(idprograma,idlocutor,dia,horainicio,horafin) VALUE('P005','L005',3,'22:00:00','23:59:00');
INSERT INTO horario(idprograma,idlocutor,dia,horainicio,horafin) VALUE('P010','L018',4,'00:00:00','01:59:00');
INSERT INTO horario(idprograma,idlocutor,dia,horainicio,horafin) VALUE('P018','L009',4,'20:00:00','21:59:00');
INSERT INTO horario(idprograma,idlocutor,dia,horainicio,horafin) VALUE('P007','L007',4,'22:00:00','23:59:00');
INSERT INTO horario(idprograma,idlocutor,dia,horainicio,horafin) VALUE('P011','L010',5,'18:00:00','19:59:00');
INSERT INTO horario(idprograma,idlocutor,dia,horainicio,horafin) VALUE('P012','L016',5,'20:00:00','21:59:00');
INSERT INTO horario(idprograma,idlocutor,dia,horainicio,horafin) VALUE('P013','L002',5,'22:00:00','23:59:00');
INSERT INTO horario(idprograma,idlocutor,dia,horainicio,horafin) VALUE('P014','L008',6,'18:00:00','19:59:00');
INSERT INTO horario(idprograma,idlocutor,dia,horainicio,horafin) VALUE('P015','L013',6,'22:00:00','23:59:00');
INSERT INTO horario(idprograma,idlocutor,dia,horainicio,horafin) VALUE('P016','L019',0,'20:00:00','21:59:00');
INSERT INTO horario(idprograma,idlocutor,dia,horainicio,horafin) VALUE('P017','L012',0,'22:00:00','23:59:00');
