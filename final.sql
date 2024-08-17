delimiter //
CREATE PROCEDURE pa_celulares()
BEGIN
 SELECT *
 FROM celular;
END
//
delimiter ;

call pa_celulares();

delimiter //
create procedure pa_marcas()
BEGIN
select *
from marca;
END
//
delimiter ;

call pa_marcas();

delimiter //
create procedure pa_samsung()
begin
select celular.descripcion
from celular
inner join marca on celular.idmarca = marca.idmarca
where marca.nombre = 'samsung';
end
//
delimiter ;

call pa_samsung();

delimiter //
create procedure pa_tabla()
begin
CREATE TABLE `final`.`prueba` (
  `idprueba` INT NOT NULL,
  `pruebacol` VARCHAR(45) NULL,
  PRIMARY KEY (`idprueba`));
end
//
delimiter ;

call pa_tabla();

delimiter //
create procedure pa_agregar_marca(idmarca integer, nombre char(45))
begin
INSERT INTO `final`.`marca` (`idmarca`, `nombre`) VALUES (idmarca, nombre);
end
//
delimiter ;

call pa_agregar_marca(4,'google')

delimiter //
create function fa_contar_celulares()
returns int
begin
declare cantidad int;
select count(*)
into cantidad
from celular;
return cantidad;
end
//
delimiter ;

select idcelular, descripcion, fa_contar_celulares()
from celular;

delimiter //
create procedure pa_test(id integer, idc integer, descripcion char(45))
begin
select marca.*, celular.*
from celular, marca
where celular.idmarca = id
and celular.idcelular = idc;
end
//
delimiter ;

call pa_test(3,3,'samsung')

DELIMITER //
CREATE FUNCTION fa_programas_cantidad()
RETURNS INT
BEGIN
DECLARE vcantidad INT;
SELECT COUNT(*)
INTO vcantidad
FROM programas;
RETURN vcantidad;
END
//
DELIMITER ;
