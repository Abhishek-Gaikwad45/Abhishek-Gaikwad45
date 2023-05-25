/*
Problem Statement:- Create a trigger and procedure to update rating of a sailor
Name:- Abhishek Gaikwad
Batch:- AS3
Rno:- 45
PRN no. :- UCS21M1045
*/

Delimiter $$
create procedure update_rating(IN x int)
Begin
   update Sailors set
   srating = srating + 1
   where sid = x;
end $$
Delimiter ;

Delimiter $$
create trigger in_reserve
Before Insert
on reserve
for each row
Begin
call update_rating(new.sid);
end $$
Delimiter ;

/*
OUTPUT:
use BRS;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A
Database changed
mysql> show tables;
+---------------+
| Tables_in_BRS |
+---------------+
| Boats         |
| Sailors       |
| reserve       |
+---------------+
3 rows in set (0.00 sec)
mysql> insert into Boats values(1,'pqr','Red');
Query OK, 1 row affected (0.01 sec)
mysql> insert into Boats values(2,'xyz','green');
Query OK, 1 row affected (0.01 sec)
mysql> insert into Boats values(3,'abc','black');
Query OK, 1 row affected (0.01 sec)
mysql> insert into Boats values(4,'hij','orange');
Query OK, 1 row affected (0.01 sec)
mysql> select *from Boats;
+------+-------+--------+
| bid  | bname | bcolor |
+------+-------+--------+
|    1 | pqr   | Red    |
|    2 | xyz   | green  |
|    3 | abc   | black  |
|    4 | hij   | orange |
+------+-------+--------+
4 rows in set (0.00 sec)
mysql> insert into Sailors values(101,'Abhishek',6);
Query OK, 1 row affected (0.01 sec)
mysql> insert into Sailors values(102,'Chetan',9);
Query OK, 1 row affected (0.01 sec)
mysql> insert into Sailors values(103,'Tushar',13);
Query OK, 1 row affected (0.02 sec)
mysql> select *from Sailors;
+------+--------+---------+
| sid  | sname  | srating |
+------+--------+---------+
|  101 |abhishek|       6 |
|  102 | Chetan |       9 |
|  103 | Tushar |      13 |
+------+--------+---------+
3 rows in set (0.00 sec)
mysql> source /home/kaushal/trigger.sql
Query OK, 0 rows affected (0.03 sec)
Query OK, 0 rows affected (0.03 sec)
mysql> insert into reserve values(1,101,'2020-10-23');
Query OK, 1 row affected (0.04 sec)
mysql> insert into reserve values(2,102,'2021-04-13');
Query OK, 1 row affected (0.01 sec)
mysql> insert into reserve values(3,103,'2022-11-26');
Query OK, 1 row affected (0.01 sec)
mysql> select *from Sailors;
+------+--------+---------+
| sid  | sname  | srating |
+------+--------+---------+
|  101 |abhishek|       7 |
|  102 | chetan |       10|
|  103 | tushar |      14 |
+------+--------+---------+
3 rows in set (0.00 sec)
mysql> 
*/