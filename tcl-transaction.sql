create database account;
SET SQL_SAFE_UPDATES = 0;

use account;
create table tcltransaction(
Account_No int,
Balance bigint,
Account_holder varchar(25));
insert into tcltransaction values(144,50000,"muruga"),(139,45000,"paruvathi"),(155,40000,"jeyam"),(135,30000,"krishna");
select * from tcltransaction;
start transaction;
update tcltransaction 
set balance=balance+500
 where account_no=139;
commit;
select * from tcltransaction;
SET SQL_SAFE_UPDATES = 0;
delimiter \\
start transaction;

begin
if (select balance from tcltransaction where account_no=139)>0 then
rollback;
else 
update tcltransaction 
set balance=balance-500
 where account_no=139;
 end if \\
 delimiter ;

select * from tcltransaction;
update tcltransaction
set balance=-234
where account_no=139;






