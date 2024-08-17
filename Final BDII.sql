create database Produccion;

use Produccion;

CREATE TABLE `Produccion`.`Lotes` (
  `IdLote` INT NOT NULL,
  `Fecha_de_registro` DATE NULL,
  `Cantidad_Piezas_Lote` INT NULL,
  `Cantidad_Piezas_OK` INT NULL,
  PRIMARY KEY (`IdLote`));
  
  CREATE TABLE `Produccion`.`Log` (
  `IdMovimiento` INT NOT NULL AUTO_INCREMENT,
  `Fecha` DATE NULL,
  `IdLote` INT NULL,
  `Porcentaje` FLOAT NULL,
  PRIMARY KEY (`IdMovimiento`));
  
  ALTER TABLE `Produccion`.`Log` 
ADD INDEX `IdLote_idx` (`IdLote` ASC) VISIBLE;
;
ALTER TABLE `Produccion`.`Log` 
ADD CONSTRAINT `IdLote`
  FOREIGN KEY (`IdLote`)
  REFERENCES `Produccion`.`Lotes` (`IdLote`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
  delimiter //
  create procedure pa_nuevo_registro(_id integer, _cantidadpiezas integer, _cantidadok integer)
  begin
  insert into Lotes (IdLote, Fecha_de_registro, Cantidad_Piezas_Lote, Cantidad_Piezas_OK) values (_id, curdate(), _cantidadpiezas, _cantidadok);
  end
  //
  delimiter ;
  
  call pa_nuevo_registro(5, 100, 3);
  
  delimiter //
  create trigger tr_registro_log
  after insert on Lotes
  for each row
  if((((new.Cantidad_Piezas_Lote - new.Cantidad_Piezas_OK)*100)/ new.Cantidad_Piezas_Lote)>20) then
  insert into Log (Fecha, IdLote, Porcentaje) values (new.Fecha_de_registro, new.IdLote, (((new.Cantidad_Piezas_Lote - new.Cantidad_Piezas_OK)*100)/ new.Cantidad_Piezas_Lote));
  end if;
  end
  //
  delimiter ;
  
  --  delimiter //
--   create trigger tr_registro_log2
--   after insert on Lotes
--   for each row
--   begin
--   DECLARE _Porcentaje INT;
--   Select (((new.Cantidad_Piezas_Lote - new.Cantidad_Piezas_OK)*100)/ new.Cantidad_Piezas_Lote) as _Porcentaje;
--   if(_Porcentaje >20) then
--   insert into Log (Fecha, IdLote, Porcentaje) values (new.Fecha_de_registro, new.IdLote, _Porcentaje);
--   end if;
--   end
--   //
--   delimiter ;
  
  