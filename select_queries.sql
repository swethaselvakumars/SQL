mysql> desc city;
+-------------+----------+------+-----+---------+----------------+
| Field       | Type     | Null | Key | Default | Extra          |
+-------------+----------+------+-----+---------+----------------+
| ID          | int      | NO   | PRI | NULL    | auto_increment |
| Name        | char(35) | NO   |     |         |                |
| CountryCode | char(3)  | NO   | MUL |         |                |
| District    | char(20) | NO   |     |         |                |
| Population  | int      | NO   |     | 0       |                |
+-------------+----------+------+-----+---------+----------------+
5 rows in set (0.07 sec)

mysql> select * from city
    -> limit 5;
+----+----------------+-------------+---------------+------------+
| ID | Name           | CountryCode | District      | Population |
+----+----------------+-------------+---------------+------------+
|  1 | Kabul          | AFG         | Kabol         |    1780000 |
|  2 | Qandahar       | AFG         | Qandahar      |     237500 |
|  3 | Herat          | AFG         | Herat         |     186800 |
|  4 | Mazar-e-Sharif | AFG         | Balkh         |     127800 |
|  5 | Amsterdam      | NLD         | Noord-Holland |     731200 |
+----+----------------+-------------+---------------+------------+
5 rows in set (0.00 sec)

mysql> create database employe_details;
Query OK, 1 row affected (0.24 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| employe_details    |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
7 rows in set (0.00 sec)

mysql> use employe_details;
Database changed
mysql> show tables;
Empty set (0.00 sec)

mysql> create table employe;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> create table employe(
    -> id int,
    -> name varchar(20),
    -> salary int,
    -> phone bigint);
Query OK, 0 rows affected (1.11 sec)

mysql> describe employe;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int         | YES  |     | NULL    |       |
| name   | varchar(20) | YES  |     | NULL    |       |
| salary | int         | YES  |     | NULL    |       |
| phone  | bigint      | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> insert into employe values(1,"goddie",678,46672238683);
Query OK, 1 row affected (0.16 sec)

mysql> select * from employe;
+------+--------+--------+-------------+
| id   | name   | salary | phone       |
+------+--------+--------+-------------+
|    1 | goddie |    678 | 46672238683 |
+------+--------+--------+-------------+
1 row in set (0.00 sec)

mysql> insert into employe values(
    -> 2,"adhesth",748,84729374990);
Query OK, 1 row affected (0.16 sec)

mysql> describe employe;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int         | YES  |     | NULL    |       |
| name   | varchar(20) | YES  |     | NULL    |       |
| salary | int         | YES  |     | NULL    |       |
| phone  | bigint      | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> select * from employe;
+------+---------+--------+-------------+
| id   | name    | salary | phone       |
+------+---------+--------+-------------+
|    1 | goddie  |    678 | 46672238683 |
|    2 | adhesth |    748 | 84729374990 |
+------+---------+--------+-------------+
2 rows in set (0.00 sec)

mysql> insert into employe values(
    -> 2,"adhesth",748,84729374990),(3,"buji",839,788324303);
Query OK, 2 rows affected (0.09 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from employe;
+------+---------+--------+-------------+
| id   | name    | salary | phone       |
+------+---------+--------+-------------+
|    1 | goddie  |    678 | 46672238683 |
|    2 | adhesth |    748 | 84729374990 |
|    2 | adhesth |    748 | 84729374990 |
|    3 | buji    |    839 |   788324303 |
+------+---------+--------+-------------+
4 rows in set (0.00 sec)

mysql> insert into employe(id,name) values(
    -> 1,"sweetha");
Query OK, 1 row affected (0.12 sec)

mysql> select * from employe;
+------+---------+--------+-------------+
| id   | name    | salary | phone       |
+------+---------+--------+-------------+
|    1 | goddie  |    678 | 46672238683 |
|    2 | adhesth |    748 | 84729374990 |
|    2 | adhesth |    748 | 84729374990 |
|    3 | buji    |    839 |   788324303 |
|    1 | sweetha |   NULL |        NULL |
+------+---------+--------+-------------+
5 rows in set (0.00 sec)

mysql> alter table employe
    -> add colum age int;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'age int' at line 2
mysql> alter table employe
    -> add column age int;
Query OK, 0 rows affected (0.74 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> describe employe;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int         | YES  |     | NULL    |       |
| name   | varchar(20) | YES  |     | NULL    |       |
| salary | int         | YES  |     | NULL    |       |
| phone  | bigint      | YES  |     | NULL    |       |
| age    | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> select * from employe;
+------+---------+--------+-------------+------+
| id   | name    | salary | phone       | age  |
+------+---------+--------+-------------+------+
|    1 | goddie  |    678 | 46672238683 | NULL |
|    2 | adhesth |    748 | 84729374990 | NULL |
|    2 | adhesth |    748 | 84729374990 | NULL |
|    3 | buji    |    839 |   788324303 | NULL |
|    1 | sweetha |   NULL |        NULL | NULL |
+------+---------+--------+-------------+------+
5 rows in set (0.00 sec)

mysql> update employe
    -> set age=20;
Query OK, 5 rows affected (0.11 sec)
Rows matched: 5  Changed: 5  Warnings: 0

mysql> update employe set age=20 where name="goddie";
Query OK, 0 rows affected (0.05 sec)
Rows matched: 1  Changed: 0  Warnings: 0

mysql> select name,age from employe;
+---------+------+
| name    | age  |
+---------+------+
| goddie  |   20 |
| adhesth |   20 |
| adhesth |   20 |
| buji    |   20 |
| sweetha |   20 |
+---------+------+
5 rows in set (0.00 sec)

mysql> update employe set age=21 where name="goddie";
Query OK, 1 row affected (0.09 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select name,age from employe;
+---------+------+
| name    | age  |
+---------+------+
| goddie  |   21 |
| adhesth |   20 |
| adhesth |   20 |
| buji    |   20 |
| sweetha |   20 |
+---------+------+
5 rows in set (0.00 sec)

mysql> update employe set name="goddie" where id =3;
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employe;
+------+---------+--------+-------------+------+
| id   | name    | salary | phone       | age  |
+------+---------+--------+-------------+------+
|    1 | goddie  |    678 | 46672238683 |   21 |
|    2 | adhesth |    748 | 84729374990 |   20 |
|    2 | adhesth |    748 | 84729374990 |   20 |
|    3 | goddie  |    839 |   788324303 |   20 |
|    1 | sweetha |   NULL |        NULL |   20 |
+------+---------+--------+-------------+------+
5 rows in set (0.00 sec)

mysql> update employe set age=22 where id=3;
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employe;
+------+---------+--------+-------------+------+
| id   | name    | salary | phone       | age  |
+------+---------+--------+-------------+------+
|    1 | goddie  |    678 | 46672238683 |   21 |
|    2 | adhesth |    748 | 84729374990 |   20 |
|    2 | adhesth |    748 | 84729374990 |   20 |
|    3 | goddie  |    839 |   788324303 |   22 |
|    1 | sweetha |   NULL |        NULL |   20 |
+------+---------+--------+-------------+------+
5 rows in set (0.00 sec)

mysql> truncate table employe;
Query OK, 0 rows affected (0.74 sec)

mysql> select * from employe;
Empty set (0.00 sec)

mysql> describe employe;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int         | YES  |     | NULL    |       |
| name   | varchar(20) | YES  |     | NULL    |       |
| salary | int         | YES  |     | NULL    |       |
| phone  | bigint      | YES  |     | NULL    |       |
| age    | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> drop table employe;
Query OK, 0 rows affected (0.42 sec)

mysql> select * from employe;
ERROR 1146 (42S02): Table 'employe_details.employe' doesn't exist
mysql> show tables;
Empty set (0.00 sec)

mysql> create table employe;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> show database;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'database' at line 1
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| employe_details    |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
7 rows in set (0.00 sec)

mysql> use employe_details;
Database changed
mysql> create table emp;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> create table emp(
    -> id int,
    -> name varchar,
    -> age int,
    -> dob int,
    -> phone bigint,
    -> salary int,
    -> citiy varchar;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',
age int,
dob int,
phone bigint,
salary int,
citiy varchar' at line 3
mysql> create table emp(
    -> id int,
    -> name varchar,
    -> age int,
    -> dob int,
    -> phone bigint,
    -> salary int);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',
age int,
dob int,
phone bigint,
salary int)' at line 3
mysql> create table emp(
    -> id int,
    -> name varchar,
    ->
    -> create table emp;);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',

create table emp' at line 3
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1
mysql> create table emp(
    -> id int,
    -> name varchar(20),
    -> salary int,
    -> phone bigint,
    -> age int);
Query OK, 0 rows affected (0.69 sec)

mysql> describe emp;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int         | YES  |     | NULL    |       |
| name   | varchar(20) | YES  |     | NULL    |       |
| salary | int         | YES  |     | NULL    |       |
| phone  | bigint      | YES  |     | NULL    |       |
| age    | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> insert into emp values(1,"anu",100,8374748,23),(2,"manu",200,8333748,24),(3,"kanu",400,8374722,21),(4,"sonu",600,837332748,23),(5,"paru",100,8374748,23),(5,"liu",100,8374748,21),(6,"jaggu",900,83737848,19),(7,"chukki",700,83788348,23),(8,"kaaliya",100,88374748,22),(9,"bheem",100,83747448,29),(10,"susemaru",100,8334748,10),(11,"hatori",300,8373938,25),(12,"shobi",300,83743948,21),(13,"kenichi",800,837444458,22),(14,"scooby",400,83743448,26),(15,"adhi",100,8374748,22);
Query OK, 16 rows affected (0.13 sec)
Records: 16  Duplicates: 0  Warnings: 0

mysql> select * from emp;
+------+----------+--------+-----------+------+
| id   | name     | salary | phone     | age  |
+------+----------+--------+-----------+------+
|    1 | anu      |    100 |   8374748 |   23 |
|    2 | manu     |    200 |   8333748 |   24 |
|    3 | kanu     |    400 |   8374722 |   21 |
|    4 | sonu     |    600 | 837332748 |   23 |
|    5 | paru     |    100 |   8374748 |   23 |
|    5 | liu      |    100 |   8374748 |   21 |
|    6 | jaggu    |    900 |  83737848 |   19 |
|    7 | chukki   |    700 |  83788348 |   23 |
|    8 | kaaliya  |    100 |  88374748 |   22 |
|    9 | bheem    |    100 |  83747448 |   29 |
|   10 | susemaru |    100 |   8334748 |   10 |
|   11 | hatori   |    300 |   8373938 |   25 |
|   12 | shobi    |    300 |  83743948 |   21 |
|   13 | kenichi  |    800 | 837444458 |   22 |
|   14 | scooby   |    400 |  83743448 |   26 |
|   15 | adhi     |    100 |   8374748 |   22 |
+------+----------+--------+-----------+------+
16 rows in set (0.00 sec)

mysql> update emp set name "soniya" where id 1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '"soniya" where id 1' at line 1
mysql> update emp set name="soniya" where id=1;
Query OK, 1 row affected (0.10 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from emp;
+------+----------+--------+-----------+------+
| id   | name     | salary | phone     | age  |
+------+----------+--------+-----------+------+
|    1 | soniya   |    100 |   8374748 |   23 |
|    2 | manu     |    200 |   8333748 |   24 |
|    3 | kanu     |    400 |   8374722 |   21 |
|    4 | sonu     |    600 | 837332748 |   23 |
|    5 | paru     |    100 |   8374748 |   23 |
|    5 | liu      |    100 |   8374748 |   21 |
|    6 | jaggu    |    900 |  83737848 |   19 |
|    7 | chukki   |    700 |  83788348 |   23 |
|    8 | kaaliya  |    100 |  88374748 |   22 |
|    9 | bheem    |    100 |  83747448 |   29 |
|   10 | susemaru |    100 |   8334748 |   10 |
|   11 | hatori   |    300 |   8373938 |   25 |
|   12 | shobi    |    300 |  83743948 |   21 |
|   13 | kenichi  |    800 | 837444458 |   22 |
|   14 | scooby   |    400 |  83743448 |   26 |
|   15 | adhi     |    100 |   8374748 |   22 |
+------+----------+--------+-----------+------+
16 rows in set (0.00 sec)

mysql> alter emp column dob;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'emp column dob' at line 1
mysql> alter table emp column dob int;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'column dob int' at line 1
mysql> alter table emp( column dob int);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '( column dob int)' at line 1
mysql> alter table emp add column dob int;
Query OK, 0 rows affected (0.33 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from emp;
+------+----------+--------+-----------+------+------+
| id   | name     | salary | phone     | age  | dob  |
+------+----------+--------+-----------+------+------+
|    1 | soniya   |    100 |   8374748 |   23 | NULL |
|    2 | manu     |    200 |   8333748 |   24 | NULL |
|    3 | kanu     |    400 |   8374722 |   21 | NULL |
|    4 | sonu     |    600 | 837332748 |   23 | NULL |
|    5 | paru     |    100 |   8374748 |   23 | NULL |
|    5 | liu      |    100 |   8374748 |   21 | NULL |
|    6 | jaggu    |    900 |  83737848 |   19 | NULL |
|    7 | chukki   |    700 |  83788348 |   23 | NULL |
|    8 | kaaliya  |    100 |  88374748 |   22 | NULL |
|    9 | bheem    |    100 |  83747448 |   29 | NULL |
|   10 | susemaru |    100 |   8334748 |   10 | NULL |
|   11 | hatori   |    300 |   8373938 |   25 | NULL |
|   12 | shobi    |    300 |  83743948 |   21 | NULL |
|   13 | kenichi  |    800 | 837444458 |   22 | NULL |
|   14 | scooby   |    400 |  83743448 |   26 | NULL |
|   15 | adhi     |    100 |   8374748 |   22 | NULL |
+------+----------+--------+-----------+------+------+
16 rows in set (0.00 sec)

mysql> update emp set dob=10.09.2003 where id=1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '.2003 where id=1' at line 1
mysql> update emp set dob="10.09.2003" ;
ERROR 1265 (01000): Data truncated for column 'dob' at row 1
mysql> describe emp;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int         | YES  |     | NULL    |       |
| name   | varchar(20) | YES  |     | NULL    |       |
| salary | int         | YES  |     | NULL    |       |
| phone  | bigint      | YES  |     | NULL    |       |
| age    | int         | YES  |     | NULL    |       |
| dob    | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> alter table emp modify dob date;
Query OK, 16 rows affected (1.41 sec)
Records: 16  Duplicates: 0  Warnings: 0

mysql> describe emp;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int         | YES  |     | NULL    |       |
| name   | varchar(20) | YES  |     | NULL    |       |
| salary | int         | YES  |     | NULL    |       |
| phone  | bigint      | YES  |     | NULL    |       |
| age    | int         | YES  |     | NULL    |       |
| dob    | date        | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> alter table emp rename dob,"DOBS";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '"DOBS"' at line 1
mysql> alter table emp rename dob AS DOBS;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'AS DOBS' at line 1
mysql> alter table emp
    -> RENAME COLUMN DOB ,DOBS;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',DOBS' at line 2
mysql> alter table emp
    -> RENAME COLUMN DOB TO DOBS;
Query OK, 0 rows affected (0.67 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC EMP;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int         | YES  |     | NULL    |       |
| name   | varchar(20) | YES  |     | NULL    |       |
| salary | int         | YES  |     | NULL    |       |
| phone  | bigint      | YES  |     | NULL    |       |
| age    | int         | YES  |     | NULL    |       |
| DOBS   | date        | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> insert into emp (dobs) values(2024/06/12);
ERROR 1292 (22007): Incorrect date value: '28.111111111083333333' for column 'DOBS' at row 1
mysql> insert into emp (dobs) values(2024-06-12);
ERROR 1292 (22007): Incorrect date value: '2006' for column 'DOBS' at row 1
mysql> insert into emp (dobs) values('2024-06-12');
Query OK, 1 row affected (0.09 sec)

mysql> select * from emp;
+------+----------+--------+-----------+------+------------+
| id   | name     | salary | phone     | age  | DOBS       |
+------+----------+--------+-----------+------+------------+
|    1 | soniya   |    100 |   8374748 |   23 | NULL       |
|    2 | manu     |    200 |   8333748 |   24 | NULL       |
|    3 | kanu     |    400 |   8374722 |   21 | NULL       |
|    4 | sonu     |    600 | 837332748 |   23 | NULL       |
|    5 | paru     |    100 |   8374748 |   23 | NULL       |
|    5 | liu      |    100 |   8374748 |   21 | NULL       |
|    6 | jaggu    |    900 |  83737848 |   19 | NULL       |
|    7 | chukki   |    700 |  83788348 |   23 | NULL       |
|    8 | kaaliya  |    100 |  88374748 |   22 | NULL       |
|    9 | bheem    |    100 |  83747448 |   29 | NULL       |
|   10 | susemaru |    100 |   8334748 |   10 | NULL       |
|   11 | hatori   |    300 |   8373938 |   25 | NULL       |
|   12 | shobi    |    300 |  83743948 |   21 | NULL       |
|   13 | kenichi  |    800 | 837444458 |   22 | NULL       |
|   14 | scooby   |    400 |  83743448 |   26 | NULL       |
|   15 | adhi     |    100 |   8374748 |   22 | NULL       |
| NULL | NULL     |   NULL |      NULL | NULL | 2024-06-12 |
+------+----------+--------+-----------+------+------------+
17 rows in set (0.00 sec)

mysql> delete table emp
    -> where dobs='2024-06-12';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table emp
where dobs='2024-06-12'' at line 1
mysql> delete emp
    -> where dobs='2024-06-12';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where dobs='2024-06-12'' at line 2
mysql> update emp
    -> set id=56
    -> where dobs='2024-06-12';
Query OK, 1 row affected (0.09 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from emp;
+------+----------+--------+-----------+------+------------+
| id   | name     | salary | phone     | age  | DOBS       |
+------+----------+--------+-----------+------+------------+
|    1 | soniya   |    100 |   8374748 |   23 | NULL       |
|    2 | manu     |    200 |   8333748 |   24 | NULL       |
|    3 | kanu     |    400 |   8374722 |   21 | NULL       |
|    4 | sonu     |    600 | 837332748 |   23 | NULL       |
|    5 | paru     |    100 |   8374748 |   23 | NULL       |
|    5 | liu      |    100 |   8374748 |   21 | NULL       |
|    6 | jaggu    |    900 |  83737848 |   19 | NULL       |
|    7 | chukki   |    700 |  83788348 |   23 | NULL       |
|    8 | kaaliya  |    100 |  88374748 |   22 | NULL       |
|    9 | bheem    |    100 |  83747448 |   29 | NULL       |
|   10 | susemaru |    100 |   8334748 |   10 | NULL       |
|   11 | hatori   |    300 |   8373938 |   25 | NULL       |
|   12 | shobi    |    300 |  83743948 |   21 | NULL       |
|   13 | kenichi  |    800 | 837444458 |   22 | NULL       |
|   14 | scooby   |    400 |  83743448 |   26 | NULL       |
|   15 | adhi     |    100 |   8374748 |   22 | NULL       |
|   56 | NULL     |   NULL |      NULL | NULL | 2024-06-12 |
+------+----------+--------+-----------+------+------------+
17 rows in set (0.00 sec)

mysql> drop table emp
    -> where id=56;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where id=56' at line 2
mysql> delete table emp
    -> where id=56;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table emp
where id=56' at line 1
mysql> delete from table emp
    -> where id=56;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table emp
where id=56' at line 1
mysql> delete from emp
    -> where id=56;
Query OK, 1 row affected (0.33 sec)

mysql> select * from emp;
+------+----------+--------+-----------+------+------+
| id   | name     | salary | phone     | age  | DOBS |
+------+----------+--------+-----------+------+------+
|    1 | soniya   |    100 |   8374748 |   23 | NULL |
|    2 | manu     |    200 |   8333748 |   24 | NULL |
|    3 | kanu     |    400 |   8374722 |   21 | NULL |
|    4 | sonu     |    600 | 837332748 |   23 | NULL |
|    5 | paru     |    100 |   8374748 |   23 | NULL |
|    5 | liu      |    100 |   8374748 |   21 | NULL |
|    6 | jaggu    |    900 |  83737848 |   19 | NULL |
|    7 | chukki   |    700 |  83788348 |   23 | NULL |
|    8 | kaaliya  |    100 |  88374748 |   22 | NULL |
|    9 | bheem    |    100 |  83747448 |   29 | NULL |
|   10 | susemaru |    100 |   8334748 |   10 | NULL |
|   11 | hatori   |    300 |   8373938 |   25 | NULL |
|   12 | shobi    |    300 |  83743948 |   21 | NULL |
|   13 | kenichi  |    800 | 837444458 |   22 | NULL |
|   14 | scooby   |    400 |  83743448 |   26 | NULL |
|   15 | adhi     |    100 |   8374748 |   22 | NULL |
+------+----------+--------+-----------+------+------+
16 rows in set (0.00 sec)

mysql> update emp set dobs='10.02.2012' where id=1;
Query OK, 1 row affected, 2 warnings (0.09 sec)
Rows matched: 1  Changed: 1  Warnings: 2

mysql> select * from emp;
+------+----------+--------+-----------+------+------------+
| id   | name     | salary | phone     | age  | DOBS       |
+------+----------+--------+-----------+------+------------+
|    1 | soniya   |    100 |   8374748 |   23 | 2010-02-20 |
|    2 | manu     |    200 |   8333748 |   24 | NULL       |
|    3 | kanu     |    400 |   8374722 |   21 | NULL       |
|    4 | sonu     |    600 | 837332748 |   23 | NULL       |
|    5 | paru     |    100 |   8374748 |   23 | NULL       |
|    5 | liu      |    100 |   8374748 |   21 | NULL       |
|    6 | jaggu    |    900 |  83737848 |   19 | NULL       |
|    7 | chukki   |    700 |  83788348 |   23 | NULL       |
|    8 | kaaliya  |    100 |  88374748 |   22 | NULL       |
|    9 | bheem    |    100 |  83747448 |   29 | NULL       |
|   10 | susemaru |    100 |   8334748 |   10 | NULL       |
|   11 | hatori   |    300 |   8373938 |   25 | NULL       |
|   12 | shobi    |    300 |  83743948 |   21 | NULL       |
|   13 | kenichi  |    800 | 837444458 |   22 | NULL       |
|   14 | scooby   |    400 |  83743448 |   26 | NULL       |
|   15 | adhi     |    100 |   8374748 |   22 | NULL       |
+------+----------+--------+-----------+------+------------+
16 rows in set (0.00 sec)

mysql> update emp set dobs='13.12.2013' where id=2;
Query OK, 1 row affected, 2 warnings (0.10 sec)
Rows matched: 1  Changed: 1  Warnings: 2

mysql> update emp set dobs='13.12.2013' where id=3;
Query OK, 1 row affected, 2 warnings (0.15 sec)
Rows matched: 1  Changed: 1  Warnings: 2

mysql> update emp set dobs='13.12.2013' where id=4;
Query OK, 1 row affected, 2 warnings (0.10 sec)
Rows matched: 1  Changed: 1  Warnings: 2

mysql> update emp set dobs='13.12.2013' where id=5;
Query OK, 2 rows affected, 4 warnings (0.10 sec)
Rows matched: 2  Changed: 2  Warnings: 4

mysql> update emp set dobs='13.12.2013' where id=6;
Query OK, 1 row affected, 2 warnings (0.17 sec)
Rows matched: 1  Changed: 1  Warnings: 2

mysql> update emp set dobs='12.12.2012';
Query OK, 16 rows affected, 32 warnings (0.13 sec)
Rows matched: 16  Changed: 16  Warnings: 32

mysql> select * from emp;
+------+----------+--------+-----------+------+------------+
| id   | name     | salary | phone     | age  | DOBS       |
+------+----------+--------+-----------+------+------------+
|    1 | soniya   |    100 |   8374748 |   23 | 2012-12-20 |
|    2 | manu     |    200 |   8333748 |   24 | 2012-12-20 |
|    3 | kanu     |    400 |   8374722 |   21 | 2012-12-20 |
|    4 | sonu     |    600 | 837332748 |   23 | 2012-12-20 |
|    5 | paru     |    100 |   8374748 |   23 | 2012-12-20 |
|    5 | liu      |    100 |   8374748 |   21 | 2012-12-20 |
|    6 | jaggu    |    900 |  83737848 |   19 | 2012-12-20 |
|    7 | chukki   |    700 |  83788348 |   23 | 2012-12-20 |
|    8 | kaaliya  |    100 |  88374748 |   22 | 2012-12-20 |
|    9 | bheem    |    100 |  83747448 |   29 | 2012-12-20 |
|   10 | susemaru |    100 |   8334748 |   10 | 2012-12-20 |
|   11 | hatori   |    300 |   8373938 |   25 | 2012-12-20 |
|   12 | shobi    |    300 |  83743948 |   21 | 2012-12-20 |
|   13 | kenichi  |    800 | 837444458 |   22 | 2012-12-20 |
|   14 | scooby   |    400 |  83743448 |   26 | 2012-12-20 |
|   15 | adhi     |    100 |   8374748 |   22 | 2012-12-20 |
+------+----------+--------+-----------+------+------------+
16 rows in set (0.00 sec)

mysql> select sum(salary) from emp;
+-------------+
| sum(salary) |
+-------------+
|        5300 |
+-------------+
1 row in set (0.06 sec)

mysql> select * from emp;
+------+----------+--------+-----------+------+------------+
| id   | name     | salary | phone     | age  | DOBS       |
+------+----------+--------+-----------+------+------------+
|    1 | soniya   |    100 |   8374748 |   23 | 2012-12-20 |
|    2 | manu     |    200 |   8333748 |   24 | 2012-12-20 |
|    3 | kanu     |    400 |   8374722 |   21 | 2012-12-20 |
|    4 | sonu     |    600 | 837332748 |   23 | 2012-12-20 |
|    5 | paru     |    100 |   8374748 |   23 | 2012-12-20 |
|    5 | liu      |    100 |   8374748 |   21 | 2012-12-20 |
|    6 | jaggu    |    900 |  83737848 |   19 | 2012-12-20 |
|    7 | chukki   |    700 |  83788348 |   23 | 2012-12-20 |
|    8 | kaaliya  |    100 |  88374748 |   22 | 2012-12-20 |
|    9 | bheem    |    100 |  83747448 |   29 | 2012-12-20 |
|   10 | susemaru |    100 |   8334748 |   10 | 2012-12-20 |
|   11 | hatori   |    300 |   8373938 |   25 | 2012-12-20 |
|   12 | shobi    |    300 |  83743948 |   21 | 2012-12-20 |
|   13 | kenichi  |    800 | 837444458 |   22 | 2012-12-20 |
|   14 | scooby   |    400 |  83743448 |   26 | 2012-12-20 |
|   15 | adhi     |    100 |   8374748 |   22 | 2012-12-20 |
+------+----------+--------+-----------+------+------------+
16 rows in set (0.00 sec)

mysql> select id from emp;
+------+
| id   |
+------+
|    1 |
|    2 |
|    3 |
|    4 |
|    5 |
|    5 |
|    6 |
|    7 |
|    8 |
|    9 |
|   10 |
|   11 |
|   12 |
|   13 |
|   14 |
|   15 |
+------+
16 rows in set (0.00 sec)

mysql> select id,sal from emp;
ERROR 1054 (42S22): Unknown column 'sal' in 'field list'
mysql> select id,phone from emp;
+------+-----------+
| id   | phone     |
+------+-----------+
|    1 |   8374748 |
|    2 |   8333748 |
|    3 |   8374722 |
|    4 | 837332748 |
|    5 |   8374748 |
|    5 |   8374748 |
|    6 |  83737848 |
|    7 |  83788348 |
|    8 |  88374748 |
|    9 |  83747448 |
|   10 |   8334748 |
|   11 |   8373938 |
|   12 |  83743948 |
|   13 | 837444458 |
|   14 |  83743448 |
|   15 |   8374748 |
+------+-----------+
16 rows in set (0.00 sec)

mysql> use world;
Database changed
mysql> show tables;
+-----------------+
| Tables_in_world |
+-----------------+
| city            |
| country         |
| countrylanguage |
+-----------------+
3 rows in set (0.00 sec)

mysql> desc city;
+-------------+----------+------+-----+---------+----------------+
| Field       | Type     | Null | Key | Default | Extra          |
+-------------+----------+------+-----+---------+----------------+
| ID          | int      | NO   | PRI | NULL    | auto_increment |
| Name        | char(35) | NO   |     |         |                |
| CountryCode | char(3)  | NO   | MUL |         |                |
| District    | char(20) | NO   |     |         |                |
| Population  | int      | NO   |     | 0       |                |
+-------------+----------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

mysql> select count(*) from city;
+----------+
| count(*) |
+----------+
|     4079 |
+----------+
1 row in set (0.06 sec)

mysql> use employe_details;
Database changed
mysql> show tables;
+---------------------------+
| Tables_in_employe_details |
+---------------------------+
| emp                       |
+---------------------------+
1 row in set (0.00 sec)

mysql> describe emp;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int         | YES  |     | NULL    |       |
| name   | varchar(20) | YES  |     | NULL    |       |
| salary | int         | YES  |     | NULL    |       |
| phone  | bigint      | YES  |     | NULL    |       |
| age    | int         | YES  |     | NULL    |       |
| DOBS   | date        | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> select count(*) from emp;
+----------+
| count(*) |
+----------+
|       16 |
+----------+
1 row in set (0.03 sec)

mysql> select count(*) from id;
ERROR 1146 (42S02): Table 'employe_details.id' doesn't exist
mysql> select count(*) from emp where id;
+----------+
| count(*) |
+----------+
|       16 |
+----------+
1 row in set (0.00 sec)

mysql> select * from emp;
+------+----------+--------+-----------+------+------------+
| id   | name     | salary | phone     | age  | DOBS       |
+------+----------+--------+-----------+------+------------+
|    1 | soniya   |    100 |   8374748 |   23 | 2012-12-20 |
|    2 | manu     |    200 |   8333748 |   24 | 2012-12-20 |
|    3 | kanu     |    400 |   8374722 |   21 | 2012-12-20 |
|    4 | sonu     |    600 | 837332748 |   23 | 2012-12-20 |
|    5 | paru     |    100 |   8374748 |   23 | 2012-12-20 |
|    5 | liu      |    100 |   8374748 |   21 | 2012-12-20 |
|    6 | jaggu    |    900 |  83737848 |   19 | 2012-12-20 |
|    7 | chukki   |    700 |  83788348 |   23 | 2012-12-20 |
|    8 | kaaliya  |    100 |  88374748 |   22 | 2012-12-20 |
|    9 | bheem    |    100 |  83747448 |   29 | 2012-12-20 |
|   10 | susemaru |    100 |   8334748 |   10 | 2012-12-20 |
|   11 | hatori   |    300 |   8373938 |   25 | 2012-12-20 |
|   12 | shobi    |    300 |  83743948 |   21 | 2012-12-20 |
|   13 | kenichi  |    800 | 837444458 |   22 | 2012-12-20 |
|   14 | scooby   |    400 |  83743448 |   26 | 2012-12-20 |
|   15 | adhi     |    100 |   8374748 |   22 | 2012-12-20 |
+------+----------+--------+-----------+------+------------+
16 rows in set (0.00 sec)

mysql> select max(salary) from emp;
+-------------+
| max(salary) |
+-------------+
|         900 |
+-------------+
1 row in set (0.00 sec)

mysql> select id, name, max(salary) from emp;
ERROR 1140 (42000): In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'employe_details.emp.id'; this is incompatible with sql_mode=only_full_group_by
mysql> select name, max(salary) from emp;
ERROR 1140 (42000): In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'employe_details.emp.name'; this is incompatible with sql_mode=only_full_group_by
mysql> select * from emp
    -> where id=("select max(salary) from emp");
Empty set, 1 warning (0.04 sec)

mysql> select * from emp
    -> where salary=("select max(salary) from emp");
Empty set, 1 warning (0.00 sec)

mysql> ^C
mysql> ^C
mysql> select name, max(salary) from emp
    -> group by name;
+----------+-------------+
| name     | max(salary) |
+----------+-------------+
| soniya   |         100 |
| manu     |         200 |
| kanu     |         400 |
| sonu     |         600 |
| paru     |         100 |
| liu      |         100 |
| jaggu    |         900 |
| chukki   |         700 |
| kaaliya  |         100 |
| bheem    |         100 |
| susemaru |         100 |
| hatori   |         300 |
| shobi    |         300 |
| kenichi  |         800 |
| scooby   |         400 |
| adhi     |         100 |
+----------+-------------+
16 rows in set (0.04 sec)

mysql> select name, max(salary) as sal from emp
    -> group by name,sal;
ERROR 1056 (42000): Can't group on 'sal'
mysql> SELECT id, name, MAX(salary) AS max_salary
    -> FROM emp
    -> GROUP BY id, name;
+------+----------+------------+
| id   | name     | max_salary |
+------+----------+------------+
|    1 | soniya   |        100 |
|    2 | manu     |        200 |
|    3 | kanu     |        400 |
|    4 | sonu     |        600 |
|    5 | paru     |        100 |
|    5 | liu      |        100 |
|    6 | jaggu    |        900 |
|    7 | chukki   |        700 |
|    8 | kaaliya  |        100 |
|    9 | bheem    |        100 |
|   10 | susemaru |        100 |
|   11 | hatori   |        300 |
|   12 | shobi    |        300 |
|   13 | kenichi  |        800 |
|   14 | scooby   |        400 |
|   15 | adhi     |        100 |
+------+----------+------------+
16 rows in set (0.00 sec)

mysql> select * from emp
    -> where salary=900;
+------+-------+--------+----------+------+------------+
| id   | name  | salary | phone    | age  | DOBS       |
+------+-------+--------+----------+------+------------+
|    6 | jaggu |    900 | 83737848 |   19 | 2012-12-20 |
+------+-------+--------+----------+------+------------+
1 row in set (0.00 sec)

mysql> select * from emp
    -> where salary=("select max(salary) from emp");
Empty set, 1 warning (0.00 sec)

mysql> select id from emp
    -> where salary=("select max(salary) from emp");
Empty set, 1 warning (0.00 sec)

mysql> SELECT id
    -> FROM emp
    -> WHERE salary = (SELECT MAX(salary) FROM emp);
+------+
| id   |
+------+
|    6 |
+------+
1 row in set (0.05 sec)

mysql> select * from emp
    -> where salary=(select max(salary) from emp);
+------+-------+--------+----------+------+------------+
| id   | name  | salary | phone    | age  | DOBS       |
+------+-------+--------+----------+------+------------+
|    6 | jaggu |    900 | 83737848 |   19 | 2012-12-20 |
+------+-------+--------+----------+------+------------+
1 row in set (0.00 sec)

mysql> select * from emp
    -> where salary=(select min(salary) from emp);
+------+----------+--------+----------+------+------------+
| id   | name     | salary | phone    | age  | DOBS       |
+------+----------+--------+----------+------+------------+
|    1 | soniya   |    100 |  8374748 |   23 | 2012-12-20 |
|    5 | paru     |    100 |  8374748 |   23 | 2012-12-20 |
|    5 | liu      |    100 |  8374748 |   21 | 2012-12-20 |
|    8 | kaaliya  |    100 | 88374748 |   22 | 2012-12-20 |
|    9 | bheem    |    100 | 83747448 |   29 | 2012-12-20 |
|   10 | susemaru |    100 |  8334748 |   10 | 2012-12-20 |
|   15 | adhi     |    100 |  8374748 |   22 | 2012-12-20 |
+------+----------+--------+----------+------+------------+
7 rows in set (0.00 sec)

mysql> select id,salary,age,(salary+age)from emp;
+------+--------+------+--------------+
| id   | salary | age  | (salary+age) |
+------+--------+------+--------------+
|    1 |    100 |   23 |          123 |
|    2 |    200 |   24 |          224 |
|    3 |    400 |   21 |          421 |
|    4 |    600 |   23 |          623 |
|    5 |    100 |   23 |          123 |
|    5 |    100 |   21 |          121 |
|    6 |    900 |   19 |          919 |
|    7 |    700 |   23 |          723 |
|    8 |    100 |   22 |          122 |
|    9 |    100 |   29 |          129 |
|   10 |    100 |   10 |          110 |
|   11 |    300 |   25 |          325 |
|   12 |    300 |   21 |          321 |
|   13 |    800 |   22 |          822 |
|   14 |    400 |   26 |          426 |
|   15 |    100 |   22 |          122 |
+------+--------+------+--------------+
16 rows in set (0.00 sec)

mysql> select id,salary,age,(salary+age) as total from emp;
+------+--------+------+-------+
| id   | salary | age  | total |
+------+--------+------+-------+
|    1 |    100 |   23 |   123 |
|    2 |    200 |   24 |   224 |
|    3 |    400 |   21 |   421 |
|    4 |    600 |   23 |   623 |
|    5 |    100 |   23 |   123 |
|    5 |    100 |   21 |   121 |
|    6 |    900 |   19 |   919 |
|    7 |    700 |   23 |   723 |
|    8 |    100 |   22 |   122 |
|    9 |    100 |   29 |   129 |
|   10 |    100 |   10 |   110 |
|   11 |    300 |   25 |   325 |
|   12 |    300 |   21 |   321 |
|   13 |    800 |   22 |   822 |
|   14 |    400 |   26 |   426 |
|   15 |    100 |   22 |   122 |
+------+--------+------+-------+
16 rows in set (0.00 sec)

mysql> use world;
Database changed
mysql> show tables;
+-----------------+
| Tables_in_world |
+-----------------+
| city            |
| country         |
| countrylanguage |
+-----------------+
3 rows in set (0.00 sec)

mysql> desc country;
+----------------+---------------------------------------------------------------------------------------+------+-----+---------+-------+
| Field          | Type                                                                                  | Null | Key | Default | Extra |
+----------------+---------------------------------------------------------------------------------------+------+-----+---------+-------+
| Code           | char(3)                                                                               | NO   | PRI |         |       |
| Name           | char(52)                                                                              | NO   |     |         |       |
| Continent      | enum('Asia','Europe','North America','Africa','Oceania','Antarctica','South America') | NO   |     | Asia    |       |
| Region         | char(26)                                                                              | NO   |     |         |       |
| SurfaceArea    | decimal(10,2)                                                                         | NO   |     | 0.00    |       |
| IndepYear      | smallint                                                                              | YES  |     | NULL    |       |
| Population     | int                                                                                   | NO   |     | 0       |       |
| LifeExpectancy | decimal(3,1)                                                                          | YES  |     | NULL    |       |
| GNP            | decimal(10,2)                                                                         | YES  |     | NULL    |       |
| GNPOld         | decimal(10,2)                                                                         | YES  |     | NULL    |       |
| LocalName      | char(45)                                                                              | NO   |     |         |       |
| GovernmentForm | char(45)                                                                              | NO   |     |         |       |
| HeadOfState    | char(60)                                                                              | YES  |     | NULL    |       |
| Capital        | int                                                                                   | YES  |     | NULL    |       |
| Code2          | char(2)                                                                               | NO   |     |         |       |
+----------------+---------------------------------------------------------------------------------------+------+-----+---------+-------+
15 rows in set (0.06 sec)

mysql> select count(*)from country;
+----------+
| count(*) |
+----------+
|      239 |
+----------+
1 row in set (0.15 sec)

mysql> select * from country limit 10;
+------+----------------------+---------------+---------------------------+-------------+-----------+------------+----------------+-----------+-----------+------------------------------------+----------------------------------------------+-----------------------------+---------+-------+
| Code | Name                 | Continent     | Region                    | SurfaceArea | IndepYear | Population | LifeExpectancy | GNP       | GNPOld    | LocalName                          | GovernmentForm                               | HeadOfState                 | Capital | Code2 |
+------+----------------------+---------------+---------------------------+-------------+-----------+------------+----------------+-----------+-----------+------------------------------------+----------------------------------------------+-----------------------------+---------+-------+
| ABW  | Aruba                | North America | Caribbean                 |      193.00 |      NULL |     103000 |           78.4 |    828.00 |    793.00 | Aruba                              | Nonmetropolitan Territory of The Netherlands | Beatrix                     |     129 | AW    |
| AFG  | Afghanistan          | Asia          | Southern and Central Asia |   652090.00 |      1919 |   22720000 |           45.9 |   5976.00 |      NULL | Afganistan/Afqanestan              | Islamic Emirate                              | Mohammad Omar               |       1 | AF    |
| AGO  | Angola               | Africa        | Central Africa            |  1246700.00 |      1975 |   12878000 |           38.3 |   6648.00 |   7984.00 | Angola                             | Republic                                     | José Eduardo dos Santos     |      56 | AO    |
| AIA  | Anguilla             | North America | Caribbean                 |       96.00 |      NULL |       8000 |           76.1 |     63.20 |      NULL | Anguilla                           | Dependent Territory of the UK                | Elisabeth II                |      62 | AI    |
| ALB  | Albania              | Europe        | Southern Europe           |    28748.00 |      1912 |    3401200 |           71.6 |   3205.00 |   2500.00 | Shqipëria                          | Republic                                     | Rexhep Mejdani              |      34 | AL    |
| AND  | Andorra              | Europe        | Southern Europe           |      468.00 |      1278 |      78000 |           83.5 |   1630.00 |      NULL | Andorra                            | Parliamentary Coprincipality                 |                             |      55 | AD    |
| ANT  | Netherlands Antilles | North America | Caribbean                 |      800.00 |      NULL |     217000 |           74.7 |   1941.00 |      NULL | Nederlandse Antillen               | Nonmetropolitan Territory of The Netherlands | Beatrix                     |      33 | AN    |
| ARE  | United Arab Emirates | Asia          | Middle East               |    83600.00 |      1971 |    2441000 |           74.1 |  37966.00 |  36846.00 | Al-Imarat al-´Arabiya al-Muttahida | Emirate Federation                           | Zayid bin Sultan al-Nahayan |      65 | AE    |
| ARG  | Argentina            | South America | South America             |  2780400.00 |      1816 |   37032000 |           75.1 | 340238.00 | 323310.00 | Argentina                          | Federal Republic                             | Fernando de la Rúa          |      69 | AR    |
| ARM  | Armenia              | Asia          | Middle East               |    29800.00 |      1991 |    3520000 |           66.4 |   1813.00 |   1627.00 | Hajastan                           | Republic                                     | Robert Kot?arjan            |     126 | AM    |
+------+----------------------+---------------+---------------------------+-------------+-----------+------------+----------------+-----------+-----------+------------------------------------+----------------------------------------------+-----------------------------+---------+-------+
10 rows in set (0.00 sec)

mysql> select code,name,population from country;
+------+----------------------------------------------+------------+
| code | name                                         | population |
+------+----------------------------------------------+------------+
| ABW  | Aruba                                        |     103000 |
| AFG  | Afghanistan                                  |   22720000 |
| AGO  | Angola                                       |   12878000 |
| AIA  | Anguilla                                     |       8000 |
| ALB  | Albania                                      |    3401200 |
| AND  | Andorra                                      |      78000 |
| ANT  | Netherlands Antilles                         |     217000 |
| ARE  | United Arab Emirates                         |    2441000 |
| ARG  | Argentina                                    |   37032000 |
| ARM  | Armenia                                      |    3520000 |
| ASM  | American Samoa                               |      68000 |
| ATA  | Antarctica                                   |          0 |
| ATF  | French Southern territories                  |          0 |
| ATG  | Antigua and Barbuda                          |      68000 |
| AUS  | Australia                                    |   18886000 |
| AUT  | Austria                                      |    8091800 |
| AZE  | Azerbaijan                                   |    7734000 |
| BDI  | Burundi                                      |    6695000 |
| BEL  | Belgium                                      |   10239000 |
| BEN  | Benin                                        |    6097000 |
| BFA  | Burkina Faso                                 |   11937000 |
| BGD  | Bangladesh                                   |  129155000 |
| BGR  | Bulgaria                                     |    8190900 |
| BHR  | Bahrain                                      |     617000 |
| BHS  | Bahamas                                      |     307000 |
| BIH  | Bosnia and Herzegovina                       |    3972000 |
| BLR  | Belarus                                      |   10236000 |
| BLZ  | Belize                                       |     241000 |
| BMU  | Bermuda                                      |      65000 |
| BOL  | Bolivia                                      |    8329000 |
| BRA  | Brazil                                       |  170115000 |
| BRB  | Barbados                                     |     270000 |
| BRN  | Brunei                                       |     328000 |
| BTN  | Bhutan                                       |    2124000 |
| BVT  | Bouvet Island                                |          0 |
| BWA  | Botswana                                     |    1622000 |
| CAF  | Central African Republic                     |    3615000 |
| CAN  | Canada                                       |   31147000 |
| CCK  | Cocos (Keeling) Islands                      |        600 |
| CHE  | Switzerland                                  |    7160400 |
| CHL  | Chile                                        |   15211000 |
| CHN  | China                                        | 1277558000 |
| CIV  | Côte d?Ivoire                                |   14786000 |
| CMR  | Cameroon                                     |   15085000 |
| COD  | Congo, The Democratic Republic of the        |   51654000 |
| COG  | Congo                                        |    2943000 |
| COK  | Cook Islands                                 |      20000 |
| COL  | Colombia                                     |   42321000 |
| COM  | Comoros                                      |     578000 |
| CPV  | Cape Verde                                   |     428000 |
| CRI  | Costa Rica                                   |    4023000 |
| CUB  | Cuba                                         |   11201000 |
| CXR  | Christmas Island                             |       2500 |
| CYM  | Cayman Islands                               |      38000 |
| CYP  | Cyprus                                       |     754700 |
| CZE  | Czech Republic                               |   10278100 |
| DEU  | Germany                                      |   82164700 |
| DJI  | Djibouti                                     |     638000 |
| DMA  | Dominica                                     |      71000 |
| DNK  | Denmark                                      |    5330000 |
| DOM  | Dominican Republic                           |    8495000 |
| DZA  | Algeria                                      |   31471000 |
| ECU  | Ecuador                                      |   12646000 |
| EGY  | Egypt                                        |   68470000 |
| ERI  | Eritrea                                      |    3850000 |
| ESH  | Western Sahara                               |     293000 |
| ESP  | Spain                                        |   39441700 |
| EST  | Estonia                                      |    1439200 |
| ETH  | Ethiopia                                     |   62565000 |
| FIN  | Finland                                      |    5171300 |
| FJI  | Fiji Islands                                 |     817000 |
| FLK  | Falkland Islands                             |       2000 |
| FRA  | France                                       |   59225700 |
| FRO  | Faroe Islands                                |      43000 |
| FSM  | Micronesia, Federated States of              |     119000 |
| GAB  | Gabon                                        |    1226000 |
| GBR  | United Kingdom                               |   59623400 |
| GEO  | Georgia                                      |    4968000 |
| GHA  | Ghana                                        |   20212000 |
| GIB  | Gibraltar                                    |      25000 |
| GIN  | Guinea                                       |    7430000 |
| GLP  | Guadeloupe                                   |     456000 |
| GMB  | Gambia                                       |    1305000 |
| GNB  | Guinea-Bissau                                |    1213000 |
| GNQ  | Equatorial Guinea                            |     453000 |
| GRC  | Greece                                       |   10545700 |
| GRD  | Grenada                                      |      94000 |
| GRL  | Greenland                                    |      56000 |
| GTM  | Guatemala                                    |   11385000 |
| GUF  | French Guiana                                |     181000 |
| GUM  | Guam                                         |     168000 |
| GUY  | Guyana                                       |     861000 |
| HKG  | Hong Kong                                    |    6782000 |
| HMD  | Heard Island and McDonald Islands            |          0 |
| HND  | Honduras                                     |    6485000 |
| HRV  | Croatia                                      |    4473000 |
| HTI  | Haiti                                        |    8222000 |
| HUN  | Hungary                                      |   10043200 |
| IDN  | Indonesia                                    |  212107000 |
| IND  | India                                        | 1013662000 |
| IOT  | British Indian Ocean Territory               |          0 |
| IRL  | Ireland                                      |    3775100 |
| IRN  | Iran                                         |   67702000 |
| IRQ  | Iraq                                         |   23115000 |
| ISL  | Iceland                                      |     279000 |
| ISR  | Israel                                       |    6217000 |
| ITA  | Italy                                        |   57680000 |
| JAM  | Jamaica                                      |    2583000 |
| JOR  | Jordan                                       |    5083000 |
| JPN  | Japan                                        |  126714000 |
| KAZ  | Kazakstan                                    |   16223000 |
| KEN  | Kenya                                        |   30080000 |
| KGZ  | Kyrgyzstan                                   |    4699000 |
| KHM  | Cambodia                                     |   11168000 |
| KIR  | Kiribati                                     |      83000 |
| KNA  | Saint Kitts and Nevis                        |      38000 |
| KOR  | South Korea                                  |   46844000 |
| KWT  | Kuwait                                       |    1972000 |
| LAO  | Laos                                         |    5433000 |
| LBN  | Lebanon                                      |    3282000 |
| LBR  | Liberia                                      |    3154000 |
| LBY  | Libyan Arab Jamahiriya                       |    5605000 |
| LCA  | Saint Lucia                                  |     154000 |
| LIE  | Liechtenstein                                |      32300 |
| LKA  | Sri Lanka                                    |   18827000 |
| LSO  | Lesotho                                      |    2153000 |
| LTU  | Lithuania                                    |    3698500 |
| LUX  | Luxembourg                                   |     435700 |
| LVA  | Latvia                                       |    2424200 |
| MAC  | Macao                                        |     473000 |
| MAR  | Morocco                                      |   28351000 |
| MCO  | Monaco                                       |      34000 |
| MDA  | Moldova                                      |    4380000 |
| MDG  | Madagascar                                   |   15942000 |
| MDV  | Maldives                                     |     286000 |
| MEX  | Mexico                                       |   98881000 |
| MHL  | Marshall Islands                             |      64000 |
| MKD  | Macedonia                                    |    2024000 |
| MLI  | Mali                                         |   11234000 |
| MLT  | Malta                                        |     380200 |
| MMR  | Myanmar                                      |   45611000 |
| MNG  | Mongolia                                     |    2662000 |
| MNP  | Northern Mariana Islands                     |      78000 |
| MOZ  | Mozambique                                   |   19680000 |
| MRT  | Mauritania                                   |    2670000 |
| MSR  | Montserrat                                   |      11000 |
| MTQ  | Martinique                                   |     395000 |
| MUS  | Mauritius                                    |    1158000 |
| MWI  | Malawi                                       |   10925000 |
| MYS  | Malaysia                                     |   22244000 |
| MYT  | Mayotte                                      |     149000 |
| NAM  | Namibia                                      |    1726000 |
| NCL  | New Caledonia                                |     214000 |
| NER  | Niger                                        |   10730000 |
| NFK  | Norfolk Island                               |       2000 |
| NGA  | Nigeria                                      |  111506000 |
| NIC  | Nicaragua                                    |    5074000 |
| NIU  | Niue                                         |       2000 |
| NLD  | Netherlands                                  |   15864000 |
| NOR  | Norway                                       |    4478500 |
| NPL  | Nepal                                        |   23930000 |
| NRU  | Nauru                                        |      12000 |
| NZL  | New Zealand                                  |    3862000 |
| OMN  | Oman                                         |    2542000 |
| PAK  | Pakistan                                     |  156483000 |
| PAN  | Panama                                       |    2856000 |
| PCN  | Pitcairn                                     |         50 |
| PER  | Peru                                         |   25662000 |
| PHL  | Philippines                                  |   75967000 |
| PLW  | Palau                                        |      19000 |
| PNG  | Papua New Guinea                             |    4807000 |
| POL  | Poland                                       |   38653600 |
| PRI  | Puerto Rico                                  |    3869000 |
| PRK  | North Korea                                  |   24039000 |
| PRT  | Portugal                                     |    9997600 |
| PRY  | Paraguay                                     |    5496000 |
| PSE  | Palestine                                    |    3101000 |
| PYF  | French Polynesia                             |     235000 |
| QAT  | Qatar                                        |     599000 |
| REU  | Réunion                                      |     699000 |
| ROM  | Romania                                      |   22455500 |
| RUS  | Russian Federation                           |  146934000 |
| RWA  | Rwanda                                       |    7733000 |
| SAU  | Saudi Arabia                                 |   21607000 |
| SDN  | Sudan                                        |   29490000 |
| SEN  | Senegal                                      |    9481000 |
| SGP  | Singapore                                    |    3567000 |
| SGS  | South Georgia and the South Sandwich Islands |          0 |
| SHN  | Saint Helena                                 |       6000 |
| SJM  | Svalbard and Jan Mayen                       |       3200 |
| SLB  | Solomon Islands                              |     444000 |
| SLE  | Sierra Leone                                 |    4854000 |
| SLV  | El Salvador                                  |    6276000 |
| SMR  | San Marino                                   |      27000 |
| SOM  | Somalia                                      |   10097000 |
| SPM  | Saint Pierre and Miquelon                    |       7000 |
| STP  | Sao Tome and Principe                        |     147000 |
| SUR  | Suriname                                     |     417000 |
| SVK  | Slovakia                                     |    5398700 |
| SVN  | Slovenia                                     |    1987800 |
| SWE  | Sweden                                       |    8861400 |
| SWZ  | Swaziland                                    |    1008000 |
| SYC  | Seychelles                                   |      77000 |
| SYR  | Syria                                        |   16125000 |
| TCA  | Turks and Caicos Islands                     |      17000 |
| TCD  | Chad                                         |    7651000 |
| TGO  | Togo                                         |    4629000 |
| THA  | Thailand                                     |   61399000 |
| TJK  | Tajikistan                                   |    6188000 |
| TKL  | Tokelau                                      |       2000 |
| TKM  | Turkmenistan                                 |    4459000 |
| TMP  | East Timor                                   |     885000 |
| TON  | Tonga                                        |      99000 |
| TTO  | Trinidad and Tobago                          |    1295000 |
| TUN  | Tunisia                                      |    9586000 |
| TUR  | Turkey                                       |   66591000 |
| TUV  | Tuvalu                                       |      12000 |
| TWN  | Taiwan                                       |   22256000 |
| TZA  | Tanzania                                     |   33517000 |
| UGA  | Uganda                                       |   21778000 |
| UKR  | Ukraine                                      |   50456000 |
| UMI  | United States Minor Outlying Islands         |          0 |
| URY  | Uruguay                                      |    3337000 |
| USA  | United States                                |  278357000 |
| UZB  | Uzbekistan                                   |   24318000 |
| VAT  | Holy See (Vatican City State)                |       1000 |
| VCT  | Saint Vincent and the Grenadines             |     114000 |
| VEN  | Venezuela                                    |   24170000 |
| VGB  | Virgin Islands, British                      |      21000 |
| VIR  | Virgin Islands, U.S.                         |      93000 |
| VNM  | Vietnam                                      |   79832000 |
| VUT  | Vanuatu                                      |     190000 |
| WLF  | Wallis and Futuna                            |      15000 |
| WSM  | Samoa                                        |     180000 |
| YEM  | Yemen                                        |   18112000 |
| YUG  | Yugoslavia                                   |   10640000 |
| ZAF  | South Africa                                 |   40377000 |
| ZMB  | Zambia                                       |    9169000 |
| ZWE  | Zimbabwe                                     |   11669000 |
+------+----------------------------------------------+------------+
239 rows in set (0.00 sec)

mysql> select code,name,population from country limit 10 ;
+------+----------------------+------------+
| code | name                 | population |
+------+----------------------+------------+
| ABW  | Aruba                |     103000 |
| AFG  | Afghanistan          |   22720000 |
| AGO  | Angola               |   12878000 |
| AIA  | Anguilla             |       8000 |
| ALB  | Albania              |    3401200 |
| AND  | Andorra              |      78000 |
| ANT  | Netherlands Antilles |     217000 |
| ARE  | United Arab Emirates |    2441000 |
| ARG  | Argentina            |   37032000 |
| ARM  | Armenia              |    3520000 |
+------+----------------------+------------+
10 rows in set (0.00 sec)

mysql> select code,name,population where like'%i';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'like'%i'' at line 1
mysql> select code,name,population where like='%i';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'like='%i'' at line 1
mysql> select code,name,population from country where like='%i';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'like='%i'' at line 1
mysql> select code,name,population from country where code like='%i';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '='%i'' at line 1
mysql> select code,name,population from country where code like'%i';
+------+--------------------------------------+------------+
| code | name                                 | population |
+------+--------------------------------------+------------+
| BDI  | Burundi                              |    6695000 |
| CRI  | Costa Rica                           |    4023000 |
| DJI  | Djibouti                             |     638000 |
| ERI  | Eritrea                              |    3850000 |
| FJI  | Fiji Islands                         |     817000 |
| HTI  | Haiti                                |    8222000 |
| MLI  | Mali                                 |   11234000 |
| MWI  | Malawi                               |   10925000 |
| PRI  | Puerto Rico                          |    3869000 |
| UMI  | United States Minor Outlying Islands |          0 |
+------+--------------------------------------+------------+
10 rows in set (0.03 sec)

mysql> select code,name,population from country where code like'i%';
+------+--------------------------------+------------+
| code | name                           | population |
+------+--------------------------------+------------+
| IDN  | Indonesia                      |  212107000 |
| IND  | India                          | 1013662000 |
| IOT  | British Indian Ocean Territory |          0 |
| IRL  | Ireland                        |    3775100 |
| IRN  | Iran                           |   67702000 |
| IRQ  | Iraq                           |   23115000 |
| ISL  | Iceland                        |     279000 |
| ISR  | Israel                         |    6217000 |
| ITA  | Italy                          |   57680000 |
+------+--------------------------------+------------+
9 rows in set (0.00 sec)

mysql> select name,population from country ;
+----------------------------------------------+------------+
| name                                         | population |
+----------------------------------------------+------------+
| Aruba                                        |     103000 |
| Afghanistan                                  |   22720000 |
| Angola                                       |   12878000 |
| Anguilla                                     |       8000 |
| Albania                                      |    3401200 |
| Andorra                                      |      78000 |
| Netherlands Antilles                         |     217000 |
| United Arab Emirates                         |    2441000 |
| Argentina                                    |   37032000 |
| Armenia                                      |    3520000 |
| American Samoa                               |      68000 |
| Antarctica                                   |          0 |
| French Southern territories                  |          0 |
| Antigua and Barbuda                          |      68000 |
| Australia                                    |   18886000 |
| Austria                                      |    8091800 |
| Azerbaijan                                   |    7734000 |
| Burundi                                      |    6695000 |
| Belgium                                      |   10239000 |
| Benin                                        |    6097000 |
| Burkina Faso                                 |   11937000 |
| Bangladesh                                   |  129155000 |
| Bulgaria                                     |    8190900 |
| Bahrain                                      |     617000 |
| Bahamas                                      |     307000 |
| Bosnia and Herzegovina                       |    3972000 |
| Belarus                                      |   10236000 |
| Belize                                       |     241000 |
| Bermuda                                      |      65000 |
| Bolivia                                      |    8329000 |
| Brazil                                       |  170115000 |
| Barbados                                     |     270000 |
| Brunei                                       |     328000 |
| Bhutan                                       |    2124000 |
| Bouvet Island                                |          0 |
| Botswana                                     |    1622000 |
| Central African Republic                     |    3615000 |
| Canada                                       |   31147000 |
| Cocos (Keeling) Islands                      |        600 |
| Switzerland                                  |    7160400 |
| Chile                                        |   15211000 |
| China                                        | 1277558000 |
| Côte d?Ivoire                                |   14786000 |
| Cameroon                                     |   15085000 |
| Congo, The Democratic Republic of the        |   51654000 |
| Congo                                        |    2943000 |
| Cook Islands                                 |      20000 |
| Colombia                                     |   42321000 |
| Comoros                                      |     578000 |
| Cape Verde                                   |     428000 |
| Costa Rica                                   |    4023000 |
| Cuba                                         |   11201000 |
| Christmas Island                             |       2500 |
| Cayman Islands                               |      38000 |
| Cyprus                                       |     754700 |
| Czech Republic                               |   10278100 |
| Germany                                      |   82164700 |
| Djibouti                                     |     638000 |
| Dominica                                     |      71000 |
| Denmark                                      |    5330000 |
| Dominican Republic                           |    8495000 |
| Algeria                                      |   31471000 |
| Ecuador                                      |   12646000 |
| Egypt                                        |   68470000 |
| Eritrea                                      |    3850000 |
| Western Sahara                               |     293000 |
| Spain                                        |   39441700 |
| Estonia                                      |    1439200 |
| Ethiopia                                     |   62565000 |
| Finland                                      |    5171300 |
| Fiji Islands                                 |     817000 |
| Falkland Islands                             |       2000 |
| France                                       |   59225700 |
| Faroe Islands                                |      43000 |
| Micronesia, Federated States of              |     119000 |
| Gabon                                        |    1226000 |
| United Kingdom                               |   59623400 |
| Georgia                                      |    4968000 |
| Ghana                                        |   20212000 |
| Gibraltar                                    |      25000 |
| Guinea                                       |    7430000 |
| Guadeloupe                                   |     456000 |
| Gambia                                       |    1305000 |
| Guinea-Bissau                                |    1213000 |
| Equatorial Guinea                            |     453000 |
| Greece                                       |   10545700 |
| Grenada                                      |      94000 |
| Greenland                                    |      56000 |
| Guatemala                                    |   11385000 |
| French Guiana                                |     181000 |
| Guam                                         |     168000 |
| Guyana                                       |     861000 |
| Hong Kong                                    |    6782000 |
| Heard Island and McDonald Islands            |          0 |
| Honduras                                     |    6485000 |
| Croatia                                      |    4473000 |
| Haiti                                        |    8222000 |
| Hungary                                      |   10043200 |
| Indonesia                                    |  212107000 |
| India                                        | 1013662000 |
| British Indian Ocean Territory               |          0 |
| Ireland                                      |    3775100 |
| Iran                                         |   67702000 |
| Iraq                                         |   23115000 |
| Iceland                                      |     279000 |
| Israel                                       |    6217000 |
| Italy                                        |   57680000 |
| Jamaica                                      |    2583000 |
| Jordan                                       |    5083000 |
| Japan                                        |  126714000 |
| Kazakstan                                    |   16223000 |
| Kenya                                        |   30080000 |
| Kyrgyzstan                                   |    4699000 |
| Cambodia                                     |   11168000 |
| Kiribati                                     |      83000 |
| Saint Kitts and Nevis                        |      38000 |
| South Korea                                  |   46844000 |
| Kuwait                                       |    1972000 |
| Laos                                         |    5433000 |
| Lebanon                                      |    3282000 |
| Liberia                                      |    3154000 |
| Libyan Arab Jamahiriya                       |    5605000 |
| Saint Lucia                                  |     154000 |
| Liechtenstein                                |      32300 |
| Sri Lanka                                    |   18827000 |
| Lesotho                                      |    2153000 |
| Lithuania                                    |    3698500 |
| Luxembourg                                   |     435700 |
| Latvia                                       |    2424200 |
| Macao                                        |     473000 |
| Morocco                                      |   28351000 |
| Monaco                                       |      34000 |
| Moldova                                      |    4380000 |
| Madagascar                                   |   15942000 |
| Maldives                                     |     286000 |
| Mexico                                       |   98881000 |
| Marshall Islands                             |      64000 |
| Macedonia                                    |    2024000 |
| Mali                                         |   11234000 |
| Malta                                        |     380200 |
| Myanmar                                      |   45611000 |
| Mongolia                                     |    2662000 |
| Northern Mariana Islands                     |      78000 |
| Mozambique                                   |   19680000 |
| Mauritania                                   |    2670000 |
| Montserrat                                   |      11000 |
| Martinique                                   |     395000 |
| Mauritius                                    |    1158000 |
| Malawi                                       |   10925000 |
| Malaysia                                     |   22244000 |
| Mayotte                                      |     149000 |
| Namibia                                      |    1726000 |
| New Caledonia                                |     214000 |
| Niger                                        |   10730000 |
| Norfolk Island                               |       2000 |
| Nigeria                                      |  111506000 |
| Nicaragua                                    |    5074000 |
| Niue                                         |       2000 |
| Netherlands                                  |   15864000 |
| Norway                                       |    4478500 |
| Nepal                                        |   23930000 |
| Nauru                                        |      12000 |
| New Zealand                                  |    3862000 |
| Oman                                         |    2542000 |
| Pakistan                                     |  156483000 |
| Panama                                       |    2856000 |
| Pitcairn                                     |         50 |
| Peru                                         |   25662000 |
| Philippines                                  |   75967000 |
| Palau                                        |      19000 |
| Papua New Guinea                             |    4807000 |
| Poland                                       |   38653600 |
| Puerto Rico                                  |    3869000 |
| North Korea                                  |   24039000 |
| Portugal                                     |    9997600 |
| Paraguay                                     |    5496000 |
| Palestine                                    |    3101000 |
| French Polynesia                             |     235000 |
| Qatar                                        |     599000 |
| Réunion                                      |     699000 |
| Romania                                      |   22455500 |
| Russian Federation                           |  146934000 |
| Rwanda                                       |    7733000 |
| Saudi Arabia                                 |   21607000 |
| Sudan                                        |   29490000 |
| Senegal                                      |    9481000 |
| Singapore                                    |    3567000 |
| South Georgia and the South Sandwich Islands |          0 |
| Saint Helena                                 |       6000 |
| Svalbard and Jan Mayen                       |       3200 |
| Solomon Islands                              |     444000 |
| Sierra Leone                                 |    4854000 |
| El Salvador                                  |    6276000 |
| San Marino                                   |      27000 |
| Somalia                                      |   10097000 |
| Saint Pierre and Miquelon                    |       7000 |
| Sao Tome and Principe                        |     147000 |
| Suriname                                     |     417000 |
| Slovakia                                     |    5398700 |
| Slovenia                                     |    1987800 |
| Sweden                                       |    8861400 |
| Swaziland                                    |    1008000 |
| Seychelles                                   |      77000 |
| Syria                                        |   16125000 |
| Turks and Caicos Islands                     |      17000 |
| Chad                                         |    7651000 |
| Togo                                         |    4629000 |
| Thailand                                     |   61399000 |
| Tajikistan                                   |    6188000 |
| Tokelau                                      |       2000 |
| Turkmenistan                                 |    4459000 |
| East Timor                                   |     885000 |
| Tonga                                        |      99000 |
| Trinidad and Tobago                          |    1295000 |
| Tunisia                                      |    9586000 |
| Turkey                                       |   66591000 |
| Tuvalu                                       |      12000 |
| Taiwan                                       |   22256000 |
| Tanzania                                     |   33517000 |
| Uganda                                       |   21778000 |
| Ukraine                                      |   50456000 |
| United States Minor Outlying Islands         |          0 |
| Uruguay                                      |    3337000 |
| United States                                |  278357000 |
| Uzbekistan                                   |   24318000 |
| Holy See (Vatican City State)                |       1000 |
| Saint Vincent and the Grenadines             |     114000 |
| Venezuela                                    |   24170000 |
| Virgin Islands, British                      |      21000 |
| Virgin Islands, U.S.                         |      93000 |
| Vietnam                                      |   79832000 |
| Vanuatu                                      |     190000 |
| Wallis and Futuna                            |      15000 |
| Samoa                                        |     180000 |
| Yemen                                        |   18112000 |
| Yugoslavia                                   |   10640000 |
| South Africa                                 |   40377000 |
| Zambia                                       |    9169000 |
| Zimbabwe                                     |   11669000 |
+----------------------------------------------+------------+
239 rows in set (0.00 sec)

mysql> select name,population from country limit 10 ;
+----------------------+------------+
| name                 | population |
+----------------------+------------+
| Aruba                |     103000 |
| Afghanistan          |   22720000 |
| Angola               |   12878000 |
| Anguilla             |       8000 |
| Albania              |    3401200 |
| Andorra              |      78000 |
| Netherlands Antilles |     217000 |
| United Arab Emirates |    2441000 |
| Argentina            |   37032000 |
| Armenia              |    3520000 |
+----------------------+------------+
10 rows in set (0.00 sec)

mysql> select name,population from country where name like'z%';
+----------+------------+
| name     | population |
+----------+------------+
| Zambia   |    9169000 |
| Zimbabwe |   11669000 |
+----------+------------+
2 rows in set (0.00 sec)

mysql> select name,population from country where population between 10000 and 20000 ;
+--------------------------+------------+
| name                     | population |
+--------------------------+------------+
| Cook Islands             |      20000 |
| Montserrat               |      11000 |
| Nauru                    |      12000 |
| Palau                    |      19000 |
| Turks and Caicos Islands |      17000 |
| Tuvalu                   |      12000 |
| Wallis and Futuna        |      15000 |
+--------------------------+------------+
7 rows in set (0.00 sec)

mysql> select name,population from country where population min(*);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'min(*)' at line 1
mysql> select name,population from country where population=(select min(population)from country) limit 10;
+----------------------------------------------+------------+
| name                                         | population |
+----------------------------------------------+------------+
| Antarctica                                   |          0 |
| French Southern territories                  |          0 |
| Bouvet Island                                |          0 |
| Heard Island and McDonald Islands            |          0 |
| British Indian Ocean Territory               |          0 |
| South Georgia and the South Sandwich Islands |          0 |
| United States Minor Outlying Islands         |          0 |
+----------------------------------------------+------------+
7 rows in set (0.00 sec)

mysql> select name,population from country where population=(select max(population)from country) limit 10;
+-------+------------+
| name  | population |
+-------+------------+
| China | 1277558000 |
+-------+------------+
1 row in set (0.00 sec)

mysql> use emp;
ERROR 1049 (42000): Unknown database 'emp'
mysql> use employe_details;
Database changed
mysql> desc emp;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int         | YES  |     | NULL    |       |
| name   | varchar(20) | YES  |     | NULL    |       |
| salary | int         | YES  |     | NULL    |       |
| phone  | bigint      | YES  |     | NULL    |       |
| age    | int         | YES  |     | NULL    |       |
| DOBS   | date        | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> select * form emp;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'form emp' at line 1
mysql> select * from emp;
+------+----------+--------+-----------+------+------------+
| id   | name     | salary | phone     | age  | DOBS       |
+------+----------+--------+-----------+------+------------+
|    1 | soniya   |    100 |   8374748 |   23 | 2012-12-20 |
|    2 | manu     |    200 |   8333748 |   24 | 2012-12-20 |
|    3 | kanu     |    400 |   8374722 |   21 | 2012-12-20 |
|    4 | sonu     |    600 | 837332748 |   23 | 2012-12-20 |
|    5 | paru     |    100 |   8374748 |   23 | 2012-12-20 |
|    5 | liu      |    100 |   8374748 |   21 | 2012-12-20 |
|    6 | jaggu    |    900 |  83737848 |   19 | 2012-12-20 |
|    7 | chukki   |    700 |  83788348 |   23 | 2012-12-20 |
|    8 | kaaliya  |    100 |  88374748 |   22 | 2012-12-20 |
|    9 | bheem    |    100 |  83747448 |   29 | 2012-12-20 |
|   10 | susemaru |    100 |   8334748 |   10 | 2012-12-20 |
|   11 | hatori   |    300 |   8373938 |   25 | 2012-12-20 |
|   12 | shobi    |    300 |  83743948 |   21 | 2012-12-20 |
|   13 | kenichi  |    800 | 837444458 |   22 | 2012-12-20 |
|   14 | scooby   |    400 |  83743448 |   26 | 2012-12-20 |
|   15 | adhi     |    100 |   8374748 |   22 | 2012-12-20 |
+------+----------+--------+-----------+------+------------+
16 rows in set (0.00 sec)

mysql> select * from emp;
+------+----------+--------+-----------+------+------------+
| id   | name     | salary | phone     | age  | DOBS       |
+------+----------+--------+-----------+------+------------+
|    1 | soniya   |    100 |   8374748 |   23 | 2012-12-20 |
|    2 | manu     |    200 |   8333748 |   24 | 2012-12-20 |
|    3 | kanu     |    400 |   8374722 |   21 | 2012-12-20 |
|    4 | sonu     |    600 | 837332748 |   23 | 2012-12-20 |
|    5 | paru     |    100 |   8374748 |   23 | 2012-12-20 |
|    5 | liu      |    100 |   8374748 |   21 | 2012-12-20 |
|    6 | jaggu    |    900 |  83737848 |   19 | 2012-12-20 |
|    7 | chukki   |    700 |  83788348 |   23 | 2012-12-20 |
|    8 | kaaliya  |    100 |  88374748 |   22 | 2012-12-20 |
|    9 | bheem    |    100 |  83747448 |   29 | 2012-12-20 |
|   10 | susemaru |    100 |   8334748 |   10 | 2012-12-20 |
|   11 | hatori   |    300 |   8373938 |   25 | 2012-12-20 |
|   12 | shobi    |    300 |  83743948 |   21 | 2012-12-20 |
|   13 | kenichi  |    800 | 837444458 |   22 | 2012-12-20 |
|   14 | scooby   |    400 |  83743448 |   26 | 2012-12-20 |
|   15 | adhi     |    100 |   8374748 |   22 | 2012-12-20 |
+------+----------+--------+-----------+------+------------+
16 rows in set (0.00 sec)

mysql> select * from emp
    -> order by name;
+------+----------+--------+-----------+------+------------+
| id   | name     | salary | phone     | age  | DOBS       |
+------+----------+--------+-----------+------+------------+
|   15 | adhi     |    100 |   8374748 |   22 | 2012-12-20 |
|    9 | bheem    |    100 |  83747448 |   29 | 2012-12-20 |
|    7 | chukki   |    700 |  83788348 |   23 | 2012-12-20 |
|   11 | hatori   |    300 |   8373938 |   25 | 2012-12-20 |
|    6 | jaggu    |    900 |  83737848 |   19 | 2012-12-20 |
|    8 | kaaliya  |    100 |  88374748 |   22 | 2012-12-20 |
|    3 | kanu     |    400 |   8374722 |   21 | 2012-12-20 |
|   13 | kenichi  |    800 | 837444458 |   22 | 2012-12-20 |
|    5 | liu      |    100 |   8374748 |   21 | 2012-12-20 |
|    2 | manu     |    200 |   8333748 |   24 | 2012-12-20 |
|    5 | paru     |    100 |   8374748 |   23 | 2012-12-20 |
|   14 | scooby   |    400 |  83743448 |   26 | 2012-12-20 |
|   12 | shobi    |    300 |  83743948 |   21 | 2012-12-20 |
|    1 | soniya   |    100 |   8374748 |   23 | 2012-12-20 |
|    4 | sonu     |    600 | 837332748 |   23 | 2012-12-20 |
|   10 | susemaru |    100 |   8334748 |   10 | 2012-12-20 |
+------+----------+--------+-----------+------+------------+
16 rows in set (0.04 sec)

mysql> select * from emp
    -> order by age desc;
+------+----------+--------+-----------+------+------------+
| id   | name     | salary | phone     | age  | DOBS       |
+------+----------+--------+-----------+------+------------+
|    9 | bheem    |    100 |  83747448 |   29 | 2012-12-20 |
|   14 | scooby   |    400 |  83743448 |   26 | 2012-12-20 |
|   11 | hatori   |    300 |   8373938 |   25 | 2012-12-20 |
|    2 | manu     |    200 |   8333748 |   24 | 2012-12-20 |
|    1 | soniya   |    100 |   8374748 |   23 | 2012-12-20 |
|    4 | sonu     |    600 | 837332748 |   23 | 2012-12-20 |
|    5 | paru     |    100 |   8374748 |   23 | 2012-12-20 |
|    7 | chukki   |    700 |  83788348 |   23 | 2012-12-20 |
|    8 | kaaliya  |    100 |  88374748 |   22 | 2012-12-20 |
|   13 | kenichi  |    800 | 837444458 |   22 | 2012-12-20 |
|   15 | adhi     |    100 |   8374748 |   22 | 2012-12-20 |
|    3 | kanu     |    400 |   8374722 |   21 | 2012-12-20 |
|    5 | liu      |    100 |   8374748 |   21 | 2012-12-20 |
|   12 | shobi    |    300 |  83743948 |   21 | 2012-12-20 |
|    6 | jaggu    |    900 |  83737848 |   19 | 2012-12-20 |
|   10 | susemaru |    100 |   8334748 |   10 | 2012-12-20 |
+------+----------+--------+-----------+------+------------+
16 rows in set (0.00 sec)

mysql> select * from emp
    -> order by salary ;
+------+----------+--------+-----------+------+------------+
| id   | name     | salary | phone     | age  | DOBS       |
+------+----------+--------+-----------+------+------------+
|    1 | soniya   |    100 |   8374748 |   23 | 2012-12-20 |
|    5 | paru     |    100 |   8374748 |   23 | 2012-12-20 |
|    5 | liu      |    100 |   8374748 |   21 | 2012-12-20 |
|    8 | kaaliya  |    100 |  88374748 |   22 | 2012-12-20 |
|    9 | bheem    |    100 |  83747448 |   29 | 2012-12-20 |
|   10 | susemaru |    100 |   8334748 |   10 | 2012-12-20 |
|   15 | adhi     |    100 |   8374748 |   22 | 2012-12-20 |
|    2 | manu     |    200 |   8333748 |   24 | 2012-12-20 |
|   11 | hatori   |    300 |   8373938 |   25 | 2012-12-20 |
|   12 | shobi    |    300 |  83743948 |   21 | 2012-12-20 |
|    3 | kanu     |    400 |   8374722 |   21 | 2012-12-20 |
|   14 | scooby   |    400 |  83743448 |   26 | 2012-12-20 |
|    4 | sonu     |    600 | 837332748 |   23 | 2012-12-20 |
|    7 | chukki   |    700 |  83788348 |   23 | 2012-12-20 |
|   13 | kenichi  |    800 | 837444458 |   22 | 2012-12-20 |
|    6 | jaggu    |    900 |  83737848 |   19 | 2012-12-20 |
+------+----------+--------+-----------+------+------------+
16 rows in set (0.00 sec)

mysql> select salary from emp
    -> order by salary ;
+--------+
| salary |
+--------+
|    100 |
|    100 |
|    100 |
|    100 |
|    100 |
|    100 |
|    100 |
|    200 |
|    300 |
|    300 |
|    400 |
|    400 |
|    600 |
|    700 |
|    800 |
|    900 |
+--------+
16 rows in set (0.00 sec)

mysql> select distinct(salary) from emp;
+--------+
| salary |
+--------+
|    100 |
|    200 |
|    400 |
|    600 |
|    900 |
|    700 |
|    300 |
|    800 |
+--------+
8 rows in set (0.00 sec)

mysql>


























