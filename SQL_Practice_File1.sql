# Database is a organized collection of structured data typically stored electronically in a computer system.It is controlled by DBMS.Database is a place where you can store tables, stored procedures, views and functions.Within a Database we can store Multiple Tables, Multiple Views, Multiple Stored Procedures and Multiple Functions.
-- Creating a Database
-- syntax: CREATE DATABASE DATABASE NAME;
create database container;


# Using a container Database to store Tables.Whenever we use Particular DATABASE that DATABASE is Going to be highlighted in SCHEMAS.
-- syntax: USE DATABASE NAME;
use container;


# Table is an Object that contains all the data in a database in the form of Rows and Columns Format.In a Table, a Row represents a unique Record and each column represents a Field in the Record.
/* syntax: CREATE TABLE TABLE NAME (
 COLUMN NAME1 DATATYPE CONSTRAINT,
 COLUMN NAME2 DATATYPE CONSTRAINT,
 COLUMN NAME3 DATATYPE CONSTRAINT,
 PRIMARY KEY (COLUMN NAME)
);
*/
-- Creating a Table
create table class (
Roll_number int,
Student_name varchar(25),
Marks int
);


# Insert Statement:
# Insert command is used to insert Records into a table.After creating a Table we need to insert records into the table.
# We can Insert Records in two ways:
-- 1. We can specify Column names and values.
-- 2. No need to specify column names and secify values only.
-- syntax: INSERT INTO TABLE NAME(COLUMN1, COLUMN2, ....., COLUMN N) VALUES(VALUE1, VALUE2, ....., VALUE N);

# Approach - 1:
insert into container.class(Roll_Number, Student_name, Marks) values(
1, "Anvesh", 89
);

-- to check whether the data has been inserted or not, we can use SELECT Statement.
select * from class;

# Approach - 2:
insert into container.class values(
2, "Akash", 95
);

-- to check whether the data has been inserted or not, we can use SELECT Statement.
select * from container.class;

# to insert data for specific columns in Table
insert into container.class(Roll_number, Student_name) values(
3, "Andria");

-- to check whether the data has been inserted or not, we can use SELECT Statement.
select * from container.class;

# to insert Multiple Records in a table using single insert statement.
insert into container.class(Roll_number, Student_name, Marks) 
values
(4, 'Ben', 80),
(6, 'Cate', 78), 
(5, 'Cherry', 84), 
(7, 'Mike', 68),
(8, 'Reza', 64),
(9, 'Selena', 85)
;

# to check whether the data has been inserted or not, we can use SELECT Statement.
select * from container.class;


# How to insert data from an existing table to a new table?

# First create a new table
create table class_new(
Roll_number int,
Student_name varchar(25),
Marks int
);

# check whether new table is created or not
select * from container.class_new;

# Second insert all the data from old table into the new table
insert into container.class_new select * from container.class;

-- Again check the new table whether all the data from old table inserted into new table or not
select * from container.class_new;


# How to insert data from an existing table to a new table with required (or) selected columns?

# check the data in the new table created before
select * from container.class_new;

# First, create a new table
create table container.class_new_1(
Roll_number int,
Student_name varchar(25)
);

# check the new table whether the table is created or not
select * from container.class_new_1;

# Second, insert the data from the table created before creating the newtable into the new table created with specific columns 
insert into container.class_new_1 select Roll_number, Student_name
from container.class_new;

# check the new table whether the data is inserted into the new table specified with Specific columns or not
select * from container.class_new_1;


# Comments: for the users it is useful to uderstand the code or syntax.
# How to insert Comment within SQL Code?
# Approach - 1: 
-- hello
# Approach - 2: 
/* hello */
# Approach - 3: 
# hello


# SELECT Statement:
# Select Statement is used to Select data or records from a table in a Databaseemp_table.If you want to select few columns or all columns of the Table in a Database, you can use SELECT Statement

CREATE TABLE container.employee (
   Emp_id INT,
   First_name VARCHAR(50),
   Last_name VARCHAR(50),
   Hourly_pay DECIMAL(5,3),
   Hire_date DATE
);


INSERT INTO container.employee
VALUES (1, "Sandy", "vara", 70.124, "2023-01-10"),
	   (2, "Kavya", "thota", 26.095, "2023-02-03"),
       (3, "Pankaj", "kranti", 54.743, "2023-02-09"),
       (4, "Pandu", "chamki", 68.821, "2023-03-16");
       
INSERT INTO container.employee (Emp_id, First_name, Last_name)
VALUES (5, "shravya","Parugu");

# SELECT Statement:
# extracting all the columns of the table in a database
select * from container.employee;

# selecting specific columns only
select Emp_id, First_name, Last_name from container.employee;


# Distinct Statement:
# Distinct Statement is used with the Select Statement is used to return distinct(different) or Unique Values only.
# Inside a table, column often contains many duplicate values and sometimes you only want to list the unique values from the table in that case we can use Distinct Statement.

CREATE TABLE container.employees (
   emp_id INT,
   first_name VARCHAR(50),
   last_name VARCHAR(50),
   age int,
   hourly_pay DECIMAL(5,3),
   hire_date DATE
);


INSERT INTO container.employees
VALUES (1, "Sandy", "vara", 25, 70.124, "2023-01-10"),
	   (2, "Kavya", "thota", 23, 26.095, "2023-02-03"),
       (3, "Pankaj", "kranti", 30, 54.743, "2023-03-09"),
       (4, "Pandu", "chamki", 25, 68.821, "2023-03-16"),
       (5, "Sandeep", "x", 29, 70.124, "2023-01-25"),
	   (6, "jil", "z", 35, 54.743, "2023-03-09"),
       (8, "Panth", "a", 23, 68.821, "2023-04-16"),
       (9, "Susmi", "y", 31, 70.124, "2023-05-10")
;
       
INSERT INTO container.employees (emp_id, first_name, last_name)
VALUES (7, "shravs","p");

# Extracting only Unique values from the age column in the employees table
select distinct age from container.employees;

# Extracting all the Unique data or Records from the Employees table
select distinct * from container.employees;

# Extracting all the Records from the employees table
select * from container.employees;


# WHERE Clause:
# WHERE clause is used to filter the data or Records and extract only the records which are satisfying the conditions in a where clause from the table in a database .

# Filter Records based on Text 
select * from container.employees
where first_name = 'jil';

select * from container.employees
where last_name = 'y';

select * from container.employees
where last_name = 'y' and first_name = 'Susmi';

select * from container.employees
where last_name = 'x' or first_name = 'Susmi';


select * from container.employees
where last_name not in ('x');

select * from container.employees
where last_name not in ('x', 'y', 'z');


# Filter Records based on Number
select * from container.employees
where hourly_pay <= 60;

select * from container.employees
where hire_date in ("2023-01-25");

select * from container.employees
where hire_date > "2023-03-25";

select * from container.employees
where hire_date <= "2023-03-16";

select * from container.employees
where hire_date < "2023-03-16";

select * from container.employees
where hire_date = "2023-03-16";

select * from container.employees
where hire_date = "2023-03-16" or hire_date = "2023-02-03";

--             or

select * from container.employees
where hire_date IN ("2023-03-16", "2023-02-03");



select * from container.employees
where age = 25;

select * from container.employees
where age = 23 or age = 31;

select * from container.employees
where age != 25;

--       or

select * from container.employees
where age NOT IN (25);

select * from container.employees
where age NOT IN (25, 23);


select * from container.employees
where age = 23 or first_name = 'x';

select * from container.employees
where hourly_pay < 50 or last_name = 'x';


# SQL Operators
# SQL operators that can be used in the where clause.


-- Equal
select * from container.employees
where hire_date = "2023-03-09";

select * from container.employees
where hire_date = "2023-03-09" and age = 30;


-- Greater than
select * from container.employees
where hire_date > "2023-05-09";


-- Less than
select * from container.employees
where hire_date < "2023-05-09";


-- Greater than or Equal to
select * from container.employees
where hire_date >= "2023-05-09";


-- Less than or Equal to
select * from container.employees
where hire_date <= "2023-05-09";


-- Not equal - <>
# Note: In some versions of SQL this operator may be written as !=
select * from container.employees
where hire_date != "2023-03-09";


-- BETWEEN - Between a range and this operator does not work for a Text data type so that we can use in operator for Text datatye
select * from container.employees
where age between 25 and 31;


-- in acts like between operator for Text data type
select * from container.employees
where last_name in ('x', 'y', 'z');

select * from container.employees
where hire_date between "2023-03-01" and "2023-03-31";

--          or

-- LIKE - Search for a Pattern
select * from container.employees
where hire_date Like "2023-03-%";

--            or

select * from container.employees
where hire_date Like "2023-03-__";


/*
LIKE Operator:
The LIKE Operator is used in a WHERE Clause to search for a specified pattern in a column.
Like Operator                                                  Description
WHERE first_name LIKE 'S%'                              Finds any values that start with "S"
WHERE first_name LIKE '%p'                              Finds any values that end with "p"
WHERE first_name LIKE '%an%'                            Finds any values that have "an" in any Position
WHERE first_name LIKE '_a%'                             Finds any values that have "a" in the second Position
WHERE first_name LIKE 'S_%'                             Finds any values that start with "S" and at least 2 characters
WHERE first_name LIKE 'S__%'                            Finds any values that start with "S" and at least 3 characters
WHERE first_name LIKE 'S%i'                             Finds any values that start with "S" and ends with "i"
*/

# Finds any values that start with "S"
select * from container.employees
where first_name Like "S%";

# Finds any values that end with "p"
select * from container.employees
where first_name Like "%p";

# Finds any values that have "an" in any Position
select * from container.employees
where first_name Like "%an%";

# Finds any values that have "a" in the second Position
select * from container.employees
where first_name Like "_a%";

# Finds any values that start with "S" and at least 2 characters
select * from container.employees
where first_name Like "S_%";

# Finds any values that start with "S" and at least 3 characters
select * from container.employees
where first_name Like "S__%";

 # Finds any values that start with "S" and ends with "i"
select * from container.employees
where first_name Like "S%i";












