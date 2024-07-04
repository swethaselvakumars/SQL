create database stationary;
use stationary;
create table purchase(
id int,
object varchar(20),
price bigint);
insert into purchase values(1,"pencil",200),(2,"ballpoint",120),(3,"notebook",320);
select * from purchase;

 
SET SQL_safe_updates=0;
start transaction;
update purchase 
set PRICE=PRICE-20
where id=1;
commit;
rollback;

start transaction;
update purchase 
set price=price+70
where id=3;
commit;

savepoint solditem;
start transaction;
update purchase 
set price=price+25
where id=2;
commit;
rollback;
rollback to solditem;


