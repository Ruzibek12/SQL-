--create database HW_1
--Data = raw facts, numbers, or observation. For example, Ali, 2000-01-01, or 25. 
--when data is organized in a meaningful way, it becomes information. 
--A good example of this is Ali was born on 2000-01-01. He is now 25. 
--I have learned three types of data: structured (neatly fiited into table), unstructured (visuals, pictures, or text documents), and semi-structured (JSON/XML files)
--Database is a storage for our data which allows easy access, management, and update to our data. 
--For instance, banks store the data about its customers in its databse. 
--Relational database = when the databse stores our data in tables (different tables). There might be more then 2 tables, each of which will have rows (records) and columns (attributed or fields). 
--The relational part comes from the word relationship between these tables. 
--For example, students table and course table can be connected by an enrollment table. 
--When it comes to tables, they represent entities (such as customers, orders, age, location)
--Rows are parts of a table and always represent instances of the table. (one customer, one order, one age) 
--There is also a primary key in all tables and this will have unique identifier in our tables. 
--In addition to the primary key, there is also foreign key, which serves as a reference to the primary key in a different table. 
--We also have constraints in relational databese which enfore rules: these are as follows: 
--not null = field must have values 
--unique = no duplicates allowed 
--check = must satisfy condition 
--default = auto-fill value if none given 

--SQL server has numerous features. 
--One of them is it is secure, which ensures data protection. It also supports winwods authentification and SQL authentification. 
--Also, it is always available and enables users to replicate and recover data via backups. 
--SQL server can also optimize our performance, by providing indexes to speed up our queries. 
--SQL server can be integrated into different platforms, making it super useful for BI and data warehousing. 
--Finally, we can also see that SQL server is scaleable, which means that we can use it in small databases and big databases. 

--There are two ways modes of authentication to connect to SQL server. 
--One of them is via windows authentification mode, which uses windows credentials. 
--It is more secure as it does not require to type in your login info every time you access it.
--Also, we have SQL server authentication mode, which is independent of windows login. 
--It is especially useful when clients are outside the domain. 


create database SchoolDB

create table Students (studentid int primary key, name varchar (50), age int) 

insert into students values (1,'Alex', 18), (2,'Jason',23), (3,'Bob',21)

--SQL is the language to interact with databases. It has different purposes, such as to select, delete, insert and so on. 
--SQL server is a database management system developed by microsoft. It enables users to store and manage data
--In addition, it executes sql queries and securitym backups, and availablity. 
--SSMS is a graphical user interface tool to also provided by microsoft. It allows us to connect to SQL server, write SQL queries, manage databses, tables, users, and permissions visually. 

--Data Query Lanague is used to query and retrieve data from the database. Main command select. 
--For example, select * from table_name;
--Or we can use it to retrieve specific information 
--select firstname, surname, salary from table_name where salary > 5000;

--DML is used to manipulate data inside tables. 
--Main commands: insert, update, delete, merge
--For example, insert into table_name (firstname, lastname, salary)
--values ('Ali', 'Karimov', 5000)
--update employees 
--set salary = 10000
--where employeeid = 1; 
--delete from table_name where employeeid = 1; 

--Data Definition language is used to define or change the structure of the database (tables, schemas, or indexes) 
--Main commands: create, alter, drop, truncate;
--create table employees (employeeid int primary key, firstname varchar (30), lastname varchar (30), salary int) 

--alter table employees add department varchar (50)
--drop table employees 
--truncate table employees 

--DCL is used to control access/permissions to data. Main commands: grant, revoke, deny. 
--grant select, insert on table_name to user1; 
--revoke insert on table_name from user1;
--deny delete on table_name to user1; 

--Transaction Control Language is used to manage transactions in SQL. Transaction is a group of operations treated as a single unit. 
--Main commands: commit, rollback, savepoint, begin transaction;


insert into students values (4,'Joe',24), (5,'Ross',27),(6,'Katie',22)
select * from students 

--To restore adventureWorksDW2022, we have to download this file and save it to the specific folder. 
--Then, we need to open SSMS and find object explorer place, by right-clicking database, we should select restore databse. 
--After that, in the source section, we have to select device and then click on ... button. 
--Once these steps completed, we have to press add and download .bak file. 





