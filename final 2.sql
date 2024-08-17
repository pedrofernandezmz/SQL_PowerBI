create database Saldos;

use Saldos;

create table Clientes(
idCliente INTEGER NOT NULL auto_increment,
apellido VARCHAR(100) NOT NULL, 
nombres VARCHAR(100) NOT NULL,
saldo FLOAT NOT NULL,
primary key(idCliente) 
)

create table Movimientos(
idMovimiento INTEGER NOT NULL auto_increment,
fecha DATE NOT NULL,
tipomovimiento VARCHAR(10) NOT NULL, 
monto FLOAT NOT NULL,
primary key(idMovimiento) 
)

ALTER TABLE `Saldos`.`Movimientos` 
ADD COLUMN `idCliente` INT NOT NULL AFTER `monto`;

ALTER TABLE `Saldos`.`Movimientos` 
ADD INDEX `idCliente_idx` (`idCliente` ASC) VISIBLE;
;
ALTER TABLE `Saldos`.`Movimientos` 
ADD CONSTRAINT `idCliente`
  FOREIGN KEY (`idCliente`)
  REFERENCES `Saldos`.`Clientes` (`idCliente`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

delimiter // 
create procedure pa_nuevo_ingreso(_monto float, _idCliente integer)
BEGIN 
insert into movimientos (fecha,tipomovimiento,monto,idCliente) values ("2022-12-01", "I", _monto, _idCliente);
END 
//
delimiter ;

call pa_nuevo_ingreso(50,1);

delimiter // 
create procedure pa_nuevo_egreso(_monto float, _idCliente integer)
BEGIN 
insert into movimientos (fecha,tipomovimiento,monto,idCliente) values ("2022-12-01", "E", _monto, _idCliente);
END 
//
delimiter ;

call pa_nuevo_egreso(10,2);

delimiter //
create trigger tr_actualizar_saldo
after insert on movimientos 
for each row 
if (new.tipomovimiento = "I") then
update clientes set saldo = saldo + new.monto where idCliente = new.idCliente;
else
update clientes set saldo = saldo - new.monto where idCliente = new.idCliente;
end if;
END
// 
delimiter ;

DROP TRIGGER tr_actualizar_saldo;

delimiter //
create trigger tr_actualizar_mov
after delete on movimientos
for each row
if (old.tipomovimiento = "I") then
update clientes set saldo = saldo + 1 where idCliente = old.idCliente;
end if;
end
//
delimiter ;

DROP TRIGGER tr_actualizar_mov;

delimiter // 
create procedure pa_nuevo_egreso22(_monto float, _idCliente integer)
BEGIN
start transaction; 
insert into movimientos (fecha,tipomovimiento,monto,idCliente) values ("2022-12-01", "E", _monto, _idCliente);
if (_monto = 10) then
rollback;
end if;
commit;
END 
//
delimiter ;

call pa_nuevo_egreso22(10,2);