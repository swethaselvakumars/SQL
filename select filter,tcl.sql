SET SQL_SAFE_UPDATES = 0;
use account;
show tables;
select * from tcltransaction;
select * from tcltransaction where balance=(select max(balance) from tcltransaction);
select * from tcltransaction order by balance desc limit 1 offset 1;
select account_no,balance from tcltransaction limit 3;
start transaction;
update tcltransaction  
set balance=balance-2000 
where account_no=144 ;

savepoint sal;

update tcltransaction  
set balance=balance-2000 
where account_no=144 ;

update tcltransaction  
set balance=balance-2000 
where account_no=144 ;


rollback to sal;


