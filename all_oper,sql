/*
Problem Statement: Perform different operations on student and dept table.
Name:- Abhishek Gaikwad
Batch:- AS3
Rno:- 45
PRN no. :- UCS21M1045
*/
mysql> use Operations;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select *from student;
+------+---------+---------+
| rno  | name    | sfees   |
+------+---------+---------+
|    1 | abhishek| 3234.56 |
|    2 | piyush  | 4534.67 |
|    3 | adesh   | 5653.45 |
|    4 | tushar  |  700.00 |
|    5 | om      | 2000.56 |
|    6 | krishna | 2223.67 |
+------+---------+---------+
6 rows in set (0.01 sec)

mysql> insert into student values(8,'chetan',1298.91);
Query OK, 1 row affected (0.05 sec)

mysql> delete from student where rno=3;
Query OK, 1 row affected (0.08 sec)

mysql> update student set sfees=2001.63 where name='om';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from student;
+------+---------+---------+
| rno  | name    | sfees   |
+------+---------+---------+
|    1 | abhishek| 3234.56 |
|    2 | piyush  | 4534.67 |
|    4 | tushar  |  700.00 |
|    5 | om      | 2000.56 |
|    6 | krishna | 2223.67 |
|    7 | chetan  | 1298.91 |
+------+---------+---------+
6 rows in set (0.01 sec)

mysql> select count(rno) from student;
+------------+
| count(rno) |
+------------+
|          6 |
+------------+
1 row in set (0.00 sec)

mysql> select count(*) from student;
+----------+
| count(*) |
+----------+
|        6 |
+----------+
1 row in set (0.05 sec)

mysql> select avg(rno) from student;
+----------+
| avg(rno) |
+----------+
|   4.1667 |
+----------+
1 row in set (0.00 sec)

mysql> select avg(sfees) from student;
+-------------+
| avg(sfees)  |
+-------------+
| 2332.061667 |
+-------------+
1 row in set (0.00 sec)

mysql> select min(sfees) from student;
+------------+
| min(sfees) |
+------------+
|     700.00 |
+------------+
1 row in set (0.00 sec)

mysql> select max(sfees) from student;
+------------+
| max(sfees) |
+------------+
|    4534.67 |
+------------+
1 row in set (0.00 sec)

mysql> select name from student where sfees=(select max(sfees) from student);
+-------+
| name  |
+-------+
| piyush|
+-------+
1 row in set (1.25 sec)

mysql> select name from student where sfees=(select min(sfees) from student);
+--------+
| name   |
+--------+
| tushar |
+--------+
1 row in set (0.00 sec)

mysql> select *from student;
+------+---------+---------+
| rno  | name    | sfees   |
+------+---------+---------+
|    1 | abhishek| 3234.56 |
|    2 | piyush  | 4534.67 |
|    4 | tushar  |  700.00 |
|    5 | om      | 2000.56 |
|    6 | krishna | 2223.67 |
|    7 | chetan  | 1298.91 |
+------+---------+---------+
6 rows in set (0.00 sec)

mysql> create table dept(rno int(3),dno int(3),dname varchar(20));
Query OK, 0 rows affected, 2 warnings (0.38 sec)

mysql> select *from dept;
+------+------+-------+
| rno  | dno  | dname |
+------+------+-------+
|    1 |   10 | comp  |
|    2 |   11 | mech  |
|    3 |   12 | civil |
|    4 |   14 | mtx   |
|    6 |   16 | it    |
|    7 |   17 | str   |
+------+------+-------+
6 rows in set (0.00 sec)

mysql> select student.name, dept.dname from student inner join dept on dept.rno=student.rno;
+---------+-------+
| name    | dname |
+---------+-------+
|abhishek | comp  |
| piyush  | mech  |
| tushar  | mtx   |
| krishna | it    |
| chetan  | str   |
+---------+-------+
5 rows in set (0.00 sec)

mysql> select student.name, dept.dname from student left join dept on dept.rno=student.rno;
+---------+-------+
| name    | dname |
+---------+-------+
| abhishek| comp  |
| piyush  | mech  |
| tushar  | mtx   |
| om      | NULL  |
| krishna | it    |
| chetan  | str   |
+---------+-------+
6 rows in set (0.00 sec)

mysql> select student.name, dept.dname from student right join dept on dept.rno=student.rno;
+---------+-------+
| name    | dname |
+---------+-------+
|abhishek | comp  |
| piyush  | mech  |
| NULL    | civil |
| tushar  | mtx   |
| krishna | it    |
| chetan  | str   |
+---------+-------+
6 rows in set (0.00 sec)

mysql> create view sfees as select *from student where sfees<=1500;
Query OK, 0 rows affected (0.10 sec)

mysql> select *from sfees;
+------+---------+---------+
| rno  | name    | sfees   |
+------+---------+---------+
|    4 | tushar  |  700.00 |
|    7 | chetan  | 1298.91 |
+------+---------+---------+
3 rows in set (0.00 sec)

mysql>
*/
