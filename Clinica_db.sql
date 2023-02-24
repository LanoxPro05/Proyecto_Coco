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

--CREAMOS LA TABLA Empleados
CREATE TABLE tblEmpleados(
Id int identity(1,1) Primary key,
Apellido Varchar(100),
Nombre Varchar(100),
Telefono Varchar(9),
Cargo Varchar(50),
)

Insert into tblEmpleados Values('Castro Martinez','Josue Maldini','8932-0121','Veterinario')

Select * from tblEmpleados

--Creamos los procedimientos a utilizar en el sistema
Create procedure sp_Agregar
@Apellido Varchar(50),
@Nombre Varchar(50),
@Telefono Varchar(9),
@Cargo Varchar(50)
as
begin
	Insert into tblEmpleados Values(@Apellido,@Nombre,@Telefono,@Cargo)
	print 'DATOS INGRESADOS CORRECTAMENTE!!'
End

Create procedure sp_Actualizar
@Id Int,
@Apellido Varchar(50),
@Nombre Varchar(50),
@Telefono Varchar(9),
@Cargo Varchar(50)
as
begin
Update tblEmpleados set Apellido = @Apellido, Nombre = @Nombre, Telefono = @Telefono, Cargo = @Cargo
Where Id = @Id
print 'DATOS MODIFICADOS CORRECTAMENTE!!!'
End

Drop procedure sp_Eliminar
exec sp_Actualizar 1 ,'Emerson Humberto','Carpaño Granados','7402-0085','Programador'

Create procedure sp_Eliminar
@Id int
as begin
 Delete from tblEmpleados where Id = @Id
 print 'DATOS ELIMINADOS CORRECTAMENTE!!'
 End
