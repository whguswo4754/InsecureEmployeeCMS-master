
DROP DATABASE IF EXISTS open_employee_db;
CREATE DATABASE open_employee_db;

USE open_employee_db;

CREATE TABLE job_role (
id int (10) NOT NUll auto_increment,
title varchar(30),
salary dec(8,2),
department_id int (10),
-- I am assuming salary is hourly, US Dollars
-- may change this
-- no job description implemented
PRIMARY KEY (id)
);
CREATE TABLE department (
id int (10) NOT NUll auto_increment,
name varchar(30),
PRIMARY KEY (id)
);
CREATE TABLE employee (
id int NOT NUll auto_increment,
first_name varchar(30),
last_name varchar(30),
role_id int(10),
manager_id int (10) NULL,
PRIMARY KEY (id)
);
-- ~~~~~~~~~~~~~~~~~~~~~~~
-- remove the "--" and run the below code to seed your program with a test example
-- ~~~~~~~~~~~~~~~~~~~~~~~
-- insert into employee (first_name, last_name, role_id, manager_id)
-- VALUES ("TestName", "Middle", 1, 1);
-- 
-- insert into job_role (title, salary, department_id)
-- VALUES ("TestRol", 13.27, 1);
-- 
-- insert into department (name)
-- VALUES ("TestDepartment");
-- ~~~~~~~~~~~~~~~~~~~
