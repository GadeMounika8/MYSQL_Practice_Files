# How to filter results using IN Operator in SQL?
# It is used to identify multiple possible values within particular column

select * from container.employees;

select * from container.employees
where age in (30,31,35);

select first_name, last_name from container.employees
where age in (30,31,35);

select first_name, last_name, age from container.employees
where age in (30,31,35);



# How to filter result using AND operator in SQL?
select * from container.employees;

select * from container.employees
where age >27 and hourly_pay > 60;

select * from container.employees
where age >27 and hourly_pay > 60 and last_name = 'x';

select * from container.employees
where age >27 and hourly_pay > 60 and year(hire_date) = 2023;

select * from container.employees
where age >27 and hourly_pay > 60 and month(hire_date) > 03 ;

select * from container.employees
where age < 27 and hourly_pay > 50 and month(hire_date) < 05;

select * from container.employees
where age >21 and hourly_pay <= 50 and day(hire_date) < 09;

select * from container.employees
where age >21 and last_name = 'z';



# How to filter result using OR operator in SQL?
# OR is a Logical Operator that allows you to combine two or more boolean expressions and it will return True if either of expression True.

select * from container.employees;

select * from container.employees
where age = 25 or age = 23;

select * from container.employees
where age = 25 or first_name = 'Sandeep';

select * from container.employees
where last_name = 'y' or first_name = 'Sandeep';

select * from container.employees
where last_name = 'y' or first_name = 'Sandeep' or hire_date ='2023-03-09';



# How to filter result using NOT operator in SQL?
# SQL NOT Operator is a Logical Operator that allows you to filter the results based on the condition that is not actually True.When the Condition is False, then only it Provides the Results.
select * from container.employees
where last_name <> 'x';

select * from container.employees
where first_name <> 'jil';

select * from container.employees
where age <> 25;

select * from container.employees
where hourly_pay <> 70.124;

 
 
# Sorting the data in Ascending or descending with single column or multiple columns using ORDER BY.
 
# sort the employees table data in ascending order by column name
select * from container.employees;
 
select * from container.employees
order by first_name;
 
select * from container.employees
order by age;
 
select * from container.employees
order by hourly_pay;
 
select last_name, first_name, age from container.employees
order by last_name;
 
select last_name, first_name, age, hourly_pay from container.employees
order by hourly_pay;
--                 or
select last_name, first_name, age, hourly_pay from container.employees
order by hourly_pay ASC;


# sort the subscriber data in descending order by Column Name
select last_name, first_name, age, hourly_pay from container.employees
order by hourly_pay DESC;

select last_name, first_name, age, hourly_pay from container.employees
order by age DESC;

select * from container.employees
order by first_name DESC;


# sort the employees table data by several column
select last_name, first_name, age, hourly_pay from container.employees
order by first_name, age desc;
--     or
select last_name, first_name, age, hourly_pay from container.employees
order by 2, 3 desc;

select last_name, first_name, age, hourly_pay from container.employees
order by 2, 3;

select last_name, first_name, age, hourly_pay from container.employees
order by 2 desc, 3;

select last_name, first_name, age, hourly_pay from container.employees
order by 2 desc;



# IS NULL and IS NOT NULL Operators:
# Null is the term which is used to representing the missing value (or) Null is a value in a field that appears to be blank.
# Null value does not mean it is a Zero.It means the programmer may forget to give a value in that field (or) If the data is not available for that field, the Programmer left that field value as a blank.
# IS NULL and IS NOT NULL Operators are used to whether the Null values Present in the table or not.
# you need to exclude Null values while extracting the records.
# Note: No need to check NULL Values in Primary key column does not have any null values and duplicates.

# IS NULL Operator:
select * from container.employees
where last_name is null;

select * from container.employees
where first_name is null;

select * from container.employees
where age is null;

select * from container.employees
where hourly_pay is null;

select * from container.employees
where hire_date is null;

select first_name, last_name, hire_date from container.employees
where hire_date is null;

select age from container.employees
where hire_date is null;

select first_name, age from container.employees
where age is null;



# IS NOT NULL
select * from container.employees;

select * from container.employees
where age is not null;

select * from container.employees
where first_name is not null;

select * from container.employees
where last_name is not null;




# Limit Clause:
# It allows you to get only specific rows in the output. It is used to an upper limit on the number of rows returned by the SQL Query.
# This clause is not supported by all the SQL versions.
# The expression in the Limit Cluase must be a Positive Number. You can not put negative number after Limit. If you give negative number after Limit, it gives an Error stating that you have error in your syntax.
# With the Limit Function SQL gives you the flexibility to reduce the number of rows in the output and it helps you to get understanding of the table and table structure.

select * from container.employees
Limit 5;

select * from container.employees
Limit 3;

select first_name, last_name, age from container.employees
Limit 3;
