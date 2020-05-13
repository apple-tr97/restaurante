drop database restaurante;
create database restaurante;
use restaurante;

CREATE TABLE Usuario
(
 id_usuario Int NOT NULL AUTO_INCREMENT,
 name    Varchar(45) NOT NULL ,
 mail     Varchar(45) NOT NULL ,
 password Varchar(45) NOT NULL ,
 type Varchar(45) NOT NULL ,

PRIMARY KEY (id_usuario)
);


CREATE TABLE Reservacion
(
  id_reservacion Int NOT NULL AUTO_INCREMENT,
 id_usuario   Int NOT NULL ,
 id_mesa   Int NOT NULL ,
 fecha   date  NOT NULL,
 horario time NOT NULL ,
 npersonas     Int NOT NULL ,

PRIMARY KEY (id_reservacion)

);

CREATE TABLE Feedback
(
  id_feedback Int NOT NULL AUTO_INCREMENT,
 id_usuario   Int NOT NULL ,
comentario Varchar(120) NOT NULL ,
 star Int NOT NULL ,
 date  datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,

PRIMARY KEY (id_feedback)
);
CREATE TABLE Mesa
(
  id_mesa Int NOT NULL AUTO_INCREMENT,
 capacidad Int   NOT NULL ,

PRIMARY KEY (id_mesa)
);






Alter table Reservacion add Foreign Key (id_usuario) references Usuario (id_usuario);
Alter table Reservacion add Foreign Key (id_mesa) references Mesa (id_mesa);
Alter table Feedback add Foreign Key (id_usuario) references Usuario (id_usuario);


