--Base de datos del Sistema de la clinica veterinaria---
--Programador: Emerson Humberto Carpaño ----------------
--------------------------------------------------------

Create database Clinica_Veterinaria

Use Clinica_Veterinaria

--CREAMOS LA TABLA USARIO
Create table USUARIO(
Id int identity(1,1) constraint pk_id Primary key,
Nombre Varchar(50),
Apellido Varchar(50),
Usuario Varchar(50),
Contraseña Varchar(200),
)
Select * from USUARIO

INSERT INTO USUARIO VALUES('jose Alberto','Martinez Rosales','jose005@gmail.com','1ec4ed037766aa181d8840ad04b9fc6e195fd37dedc04c98a5767a67d3758ece')
INSERT INTO USUARIO VALUES('Jessica Miranda','Ortiz Melendez','Jessi02@gmail.com','5b267491984d39182cc4338cab202144cbc4099f87d89a2345eee582b55b6c99')
DROP TABLE USUARIO