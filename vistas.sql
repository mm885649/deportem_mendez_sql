/*VISTAS*/

create or replace view clientes as
( select distinct nombre, fecha
	from cliente v join facturacion p on (v.nombre = p.ID_pedido)
	where p.ID_cliente >1);
select * from clientes;

create view facturas as 
select * from facturacion;
SELECT 
    *
FROM
    facturas;

select * from facturacion;


create or replace view venta as
( select  nombre, ID_ticket, precio_total
	from ventas
	where nombre like upper('%Edouard%'));
select * from venta;

create view vista_almacen as 
select * from almacen;
select * from vista_almacen;

select * from almacen;

create or replace view producto as
(select ID_productos from productos);
select * from producto;