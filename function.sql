/*
Problem Statement: Create a function to determine user level using if_else statement
Name:- Abhishek Gaikwad
Batch:- AS3
Rno:- 45
PRN no. :- UCS21M1045
*/

Delimiter $$
create function display(userexp decimal(10,2)) Returns int(3) Deterministic
Begin
Declare x int(3);
if userexp > 30000 Then
set x = 200;
elseif (userexp <= 30000 and userexp > 15000) Then
set x = 60;
elseif userexp <=15000 Then
set x = 20;
end if;
Return (x);
end $$
Delimiter ;

/*
OUTPUT:
create database user;
Query OK, 1 row affected (0.07 sec)
mysql> use user;
Database changed
mysql> create database EMS;
Query OK, 1 row affected (0.03 sec)
mysql> use EMS;
Database changed
mysql> create table users(uid int(4), uname varchar(20), uexp decimal(10,2), ulevel int(3));
Query OK, 0 rows affected, 2 warnings (0.07 sec)
mysql> insert into users(uid,uname,uexp) values(101,'tom',10000.40);
Query OK, 1 row affected (0.05 sec)
mysql> insert into users(uid,uname,uexp) values(102,'jerry',20000.60);
Query OK, 1 row affected (0.06 sec)
mysql> insert into users(uid,uname,uexp) values(103,'jack',31000.23);
Query OK, 1 row affected (0.01 sec)
mysql> select *from users;
+------+-------+----------+--------+
| uid  | uname | uexp     | ulevel |
+------+-------+----------+--------+
|  101 | tom   | 10000.40 |   NULL |
|  102 | jerry | 20000.60 |   NULL |
|  103 | jack  | 31000.23 |   NULL |
+------+-------+----------+--------+
3 rows in set (0.00 sec)
mysql> source /home/abhishek/function.sql;
Query OK, 0 rows affected, 2 warnings (0.05 sec)
mysql> create view users_view(uid,uname,uexp,ulevel) as select uid,uname,uexp,display(uexp) from users;
Query OK, 0 rows affected (0.12 sec)
mysql> select *from users_view;
+------+-------+----------+--------+
| uid  | uname | uexp     | ulevel |
+------+-------+----------+--------+
|  101 | tom   | 10000.40 |     20 |
|  102 | jerry | 20000.60 |     60 |
|  103 | jack  | 31000.23 |    200 |
+------+-------+----------+--------+
3 rows in set (0.07 sec)
mysql> 
*/