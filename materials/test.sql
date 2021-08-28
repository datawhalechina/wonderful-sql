/* v 2021.8
 * Datawhale组队学习 SQL 编程语言 task06 建表语句汇总
 *
 *
*/

-- task06:
-- 秋招秘籍A
-- 练习一
DROP TABLE if EXISTS Employee;
CREATE TABLE Employee
(id INT,
name VARCHAR(20),
salary INT,
departmentid INT,
PRIMARY KEY (id));

INSERT INTO Employee VALUES(1,'Joe',70000,1);
INSERT INTO Employee VALUES(2,'Henry',80000,2);
INSERT INTO Employee VALUES(3,'Sam',60000,2);
INSERT INTO Employee VALUES(4,'Max',90000,1);


DROP TABLE if EXISTS Department;
CREATE TABLE Department
(id INT,
name VARCHAR(20),
PRIMARY KEY (id));

INSERT INTO Department VALUES(1,'IT');
INSERT INTO Department VALUES(2,'Sales');


-- 练习二
DROP TABLE if exists seat;
CREATE TABLE seat
(id INT,
student VARCHAR(20),
PRIMARY KEY (id));

INSERT INTO seat VALUES(1,'Abbot');
INSERT INTO seat VALUES(2,'Doris');
INSERT INTO seat VALUES(3,'Emerson');
INSERT INTO seat VALUES(4,'Green');
INSERT INTO seat VALUES(5,'Jeames');


-- 练习三
DROP TABLE if exists score;
CREATE TABLE score
(id INT,
score FLOAT(3,2),
PRIMARY KEY (id));

INSERT INTO score VALUES(1,3.50);
INSERT INTO score VALUES(2,3.65);
INSERT INTO score VALUES(3,4.00);
INSERT INTO score VALUES(4,3.85);
INSERT INTO score VALUES(5,4.00);
INSERT INTO score VALUES(6,3.65);


-- 练习四
DROP TABLE if exists logs;
CREATE TABLE logs
(id INT,
num INT,
PRIMARY KEY (id));

INSERT INTO logs VALUES (1, 1);
INSERT INTO logs VALUES (2, 1);
INSERT INTO logs VALUES (3, 1);
INSERT INTO logs VALUES (4, 2);
INSERT INTO logs VALUES (5, 1);
INSERT INTO logs VALUES (6, 2);
INSERT INTO logs VALUES (7, 2);


-- 练习五
DROP TABLE if exists tree;
CREATE TABLE tree
(id INT,
p_id INT,
PRIMARY KEY (id));

INSERT INTO tree VALUES (1, null);
INSERT INTO tree VALUES (2, 1);
INSERT INTO tree VALUES (3, 1);
INSERT INTO tree VALUES (4, 2);
INSERT INTO tree VALUES (5, 2);


-- 练习六
DROP TABLE if exists Employee2;
CREATE TABLE Employee2
(id INT,
name varchar(20),
department varchar(20),
managerid INT,
PRIMARY KEY (id));

INSERT INTO Employee2 VALUES (101,  'John', 'A', null);
INSERT INTO Employee2 VALUES (102,   'Dan', 'A', 101);
INSERT INTO Employee2 VALUES (103, 'James', 'A', 101);
INSERT INTO Employee2 VALUES (104,   'Amy', 'A', 101);
INSERT INTO Employee2 VALUES (105,  'Anne', 'A', 101);
INSERT INTO Employee2 VALUES (106,   'Ron', 'B', 101);


-- 练习七
DROP TABLE IF EXISTS survey_log;
CREATE TABLE survey_log (
	uid INT,
	action VARCHAR (20),
	question_id INT,
	answer_id INT,
	q_num INT,
	TIMESTAMP INT
);

INSERT INTO survey_log VALUES (5, 'show', 285, NULL, 1, 123);
INSERT INTO survey_log VALUES (5, 'answer', 285, 124124, 1, 124);
INSERT INTO survey_log VALUES (5, 'show', 369, NULL, 2, 125);
INSERT INTO survey_log VALUES (5, 'skip', 369, NULL, 2, 126);


-- 练习八
DROP TABLE IF EXISTS employee9;
CREATE TABLE employee9 SELECT id, name, salary,departmentid FROM employee;


INSERT INTO employee9 VALUES(5, 'Janet', 69000, 1);
INSERT INTO employee9 VALUES(6, 'Randy', 85000, 1);


-- 练习九
DROP TABLE IF EXISTS point_2d;
CREATE TABLE point_2d (
	x INT,
  y INT
);

INSERT INTO point_2d VALUES(-1, -1);
INSERT INTO point_2d VALUES( 0,  0);
INSERT INTO point_2d VALUES(-1, -2);


-- 练习十
DROP TABLE if EXISTS Trips;
CREATE TABLE Trips
(Id INT,
Client_Id INT,
Driver_Id INT,
City_Id INT,
Status VARCHAR(30),
Request_at DATE,
PRIMARY KEY (Id));

INSERT INTO Trips VALUES (1, 1, 10, 1, 'completed', '2013-10-1');
INSERT INTO Trips VALUES (2, 2, 11, 1, 'cancelled_by_driver', '2013-10-1');
INSERT INTO Trips VALUES (3, 3, 12, 6, 'completed', '2013-10-1');
INSERT INTO Trips VALUES (4, 4, 13, 6, 'cancelled_by_client', '2013-10-1');
INSERT INTO Trips VALUES (5, 1, 10, 1, 'completed', '2013-10-2');
INSERT INTO Trips VALUES (6, 2, 11, 6, 'completed', '2013-10-2');
INSERT INTO Trips VALUES (7, 3, 12, 6, 'completed', '2013-10-2');
INSERT INTO Trips VALUES (8, 2, 12, 12, 'completed', '2013-10-3');
INSERT INTO Trips VALUES (9, 3, 10, 12, 'completed', '2013-10-3');
INSERT INTO Trips VALUES (10, 4, 13, 12, 'cancelled_by_driver', '2013-10-3');


DROP TABLE if EXISTS Users ;
CREATE TABLE Users 
(Users_Id  INT,
 Banned    VARCHAR(30),
 Role      VARCHAR(30),
PRIMARY KEY (Users_Id));

INSERT INTO Users VALUES (1,    'No',  'client');
INSERT INTO Users VALUES (2,    'Yes', 'client');
INSERT INTO Users VALUES (3,    'No',  'client');
INSERT INTO Users VALUES (4,    'No',  'client');
INSERT INTO Users VALUES (10,   'No',  'driver');
INSERT INTO Users VALUES (11,   'No',  'driver');
INSERT INTO Users VALUES (12,   'No',  'driver');
INSERT INTO Users VALUES (13,   'No',  'driver');








