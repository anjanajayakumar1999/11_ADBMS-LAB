mysql> use company;
Database changed
mysql> create table department(dept_no int primary key not null,d_name varchar(50) not null,mgr_id int not null,mgr_strtdate date not null);
Query OK, 0 rows affected (1.71 sec)


mysql> insert into department(dept_no,d_name,mgr_id,mgr_strtdate) values(2111,'SALES',1456,'2005-01-02');
Query OK, 1 row affected (0.08 sec)

mysql> select * from department;
+---------+--------+--------+--------------+
| dept_no | d_name | mgr_id | mgr_strtdate |
+---------+--------+--------+--------------+
|    2111 | SALES  |   1456 | 2005-01-02   |
+---------+--------+--------+--------------+
1 row in set (0.00 sec)

mysql> insert into department(dept_no,d_name,mgr_id,mgr_strtdate) values(2112,'REVENUE',1457,'2012-12-12');
Query OK, 1 row affected (1.33 sec)

mysql> insert into department(dept_no,d_name,mgr_id,mgr_strtdate) values(2113,'MARKETING',1458,'2013-05-06');
Query OK, 1 row affected (0.82 sec)

mysql> insert into department(dept_no,d_name,mgr_id,mgr_strtdate) values(2116,'ADMINISTRATION',1459,'2014-01-07');
Query OK, 1 row affected (0.43 sec)

mysql> select * from department;
+---------+----------------+--------+--------------+
| dept_no | d_name         | mgr_id | mgr_strtdate |
+---------+----------------+--------+--------------+
|    2111 | SALES          |   1456 | 2005-01-02   |
|    2112 | REVENUE        |   1457 | 2012-12-12   |
|    2113 | MARKETING      |   1458 | 2013-05-06   |
|    2116 | ADMINISTRATION |   1459 | 2014-01-07   |
+---------+----------------+--------+--------------+
4 rows in set (0.00 sec)

mysql> alter table department rename to dept;
Query OK, 0 rows affected (1.77 sec)

mysql> select * from dept;
+---------+----------------+--------+--------------+
| dept_no | d_name         | mgr_id | mgr_strtdate |
+---------+----------------+--------+--------------+
|    2111 | SALES          |   1456 | 2005-01-02   |
|    2112 | REVENUE        |   1457 | 2012-12-12   |
|    2113 | MARKETING      |   1458 | 2013-05-06   |
|    2116 | ADMINISTRATION |   1459 | 2014-01-07   |
+---------+----------------+--------+--------------+
4 rows in set (0.00 sec)

mysql> alter table dept add phone int not null;
Query OK, 0 rows affected (1.63 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from dept;
+---------+----------------+--------+--------------+-------+
| dept_no | d_name         | mgr_id | mgr_strtdate | phone |
+---------+----------------+--------+--------------+-------+
|    2111 | SALES          |   1456 | 2005-01-02   |     0 |
|    2112 | REVENUE        |   1457 | 2012-12-12   |     0 |
|    2113 | MARKETING      |   1458 | 2013-05-06   |     0 |
|    2116 | ADMINISTRATION |   1459 | 2014-01-07   |     0 |
+---------+----------------+--------+--------------+-------+
4 rows in set (0.00 sec)


mysql> alter table dept drop column phone;
Query OK, 0 rows affected (1.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from dept;
+---------+----------------+--------+--------------+----------+
| dept_no | d_name         | mgr_id | mgr_strtdate | phone_no |
+---------+----------------+--------+--------------+----------+
|    2111 | SALES          |   1456 | 2005-01-02   |          |
|    2112 | REVENUE        |   1457 | 2012-12-12   |          |
|    2113 | MARKETING      |   1458 | 2013-05-06   |          |
|    2116 | ADMINISTRATION |   1459 | 2014-01-07   |          |
+---------+----------------+--------+--------------+----------+
4 rows in set (0.00 sec)

mysql> update dept set phone='9947799216' where dept_no=2111;
Query OK, 1 row affected (0.11 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update dept set phone_no='8154786258' where dept_no=2112;
Query OK, 1 row affected (0.11 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update dept set phone_no='7025148936' where dept_no=2113;
Query OK, 1 row affected (0.11 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update dept set phone_no='3365588126' where dept_no=2116;
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from dept;
+---------+----------------+--------+--------------+------------+
| dept_no | d_name         | mgr_id | mgr_strtdate | phone_no   |
+---------+----------------+--------+--------------+------------+
|    2111 | SALES          |   1456 | 2005-01-02   | 9947799216 |
|    2112 | REVENUE        |   1457 | 2012-12-12   | 8154786258 |
|    2113 | MARKETING      |   1458 | 2013-05-06   | 7025148936 |
|    2116 | ADMINISTRATION |   1459 | 2014-01-07   | 3365588126 |
+---------+----------------+--------+--------------+------------+
4 rows in set (0.00 sec)


mysql> select * from dept;
+---------+----------------+--------+--------------+------------+
| dept_no | d_name         | mgr_id | mgr_strtdate | phone_no   |
+---------+----------------+--------+--------------+------------+
|    2111 | SALES          |   1456 | 2005-01-02   | 9947799216 |
|    2112 | REVENUE        |   1457 | 2012-12-12   | 8154786258 |
|    2113 | MARKETING      |   1458 | 2013-05-06   | 7025148936 |
|    2116 | ADMINISTRATION |   1459 | 2014-01-07   | 3365588126 |
+---------+----------------+--------+--------------+------------+
4 rows in set (0.00 sec)

mysql> alter table dept rename column d_name to dept_name;
Query OK, 0 rows affected (1.69 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from dept;
+---------+----------------+--------+--------------+------------+
| dept_no | dept_name      | mgr_id | mgr_strtdate | phone_no   |
+---------+----------------+--------+--------------+------------+
|    2111 | SALES          |   1456 | 2005-01-02   | 9947799216 |
|    2112 | REVENUE        |   1457 | 2012-12-12   | 8154786258 |
|    2113 | MARKETING      |   1458 | 2013-05-06   | 7025148936 |
|    2116 | ADMINISTRATION |   1459 | 2014-01-07   | 3365588126 |
+---------+----------------+--------+--------------+------------+
4 rows in set (0.00 sec)
