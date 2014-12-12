CREATE DATABASE fanradio;

USE fanradio;

CREATE TABLE programa(
idprograma char(4) PRIMARY KEY,
titulo varchar(30)
)engine = 'InnoDB';

CREATE TABLE locutor(
idlocutor char(4) PRIMARY KEY,
locutor varchar(30)
)engine = 'InnoDB';

CREATE TABLE horario(
idprograma char(4) PRIMARY KEY,
idlocutor char(4), 
dia int,
horanicio time,
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

INSERT INTO programa(idprograma,titulo) VALUES('P001','X-OVER');
INSERT INTO programa(idprograma,titulo) VALUES('P002','Sonido Oscuro');
INSERT INTO programa(idprograma,titulo) VALUES('P003','Fuera Realidad');
INSERT INTO programa(idprograma,titulo) VALUES('P004','Anime no Hibi');
INSERT INTO programa(idprograma,titulo) VALUES('P005','Crisis de Identidad');
INSERT INTO programa(idprograma,titulo) VALUES('P006','Frikilandia');
INSERT INTO programa(idprograma,titulo) VALUES('P007','[-SERTLAMANIA-]');