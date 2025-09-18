--Homeowork day 2 



create table employees (EMPID int, name varchar (50), salary decimal (10,2)) 

insert into employees (EMPID, name, salary) 
values (1,'Alex', 130.50),(2,'Harmoz',2200.00),(3,'Sam',1220.20);

insert into employees values (4,'Maria',2250.00),(5,'Rosie',950.00);

insert into employees 
values 
(6,'Jack',1450.00),
(7,'Ali',4450.00);

update employees 
set salary = 7000
where EMPID = 1; 

select * from employees 

delete from employees 
where EMPID = 2; 

--There are three types of erasing data or structure of the data in SQL. 
--one of them is using delete, which removes rows from our table but keeps its structure. 
--truncate, on the other hand, removes everything form our table quickly, but keeps the structure of the table. 
--Finally, drop means that we wil erase everything - data and structure of the table - altogather. 

alter table employees 
alter column name varchar (100)



select * from employees 

alter table employees 
add department varchar (50); 

alter table employees 
alter column salary float; 

create table departments2 (departmentid int primary key, departmentname varchar (50))

insert into departments2 values (1,'Math'),(2,'Biology'),(3,'History'); 

select * from departments2

truncate table departments2

create table departments4 (departmentid int primary key, location varchar (30), status varchar (20))

select * from departments4

UPDATE Employees
SET Department = 'Management'
WHERE Salary > 5000;

select * from employees 

truncate table employees 

alter table employees 
drop column department 

exec sp_rename 'employees', 'Staff_members'; 

select * from Staff_members 

drop table departments 

create table Products (
productID int primary key,
product_name varchar (50) not null, 
category varchar (50), 
price decimal (10,2)
)

select * from Products 

alter table Products 
add constraint chk_price_positive 
check (price > 0) 

alter table Products 
add StockQuantity int default 50; 
 

EXEC sp_rename 'Products.Category', 'ProductCategory', 'COLUMN';

insert into products (productid, product_name, productcategory, price, stockquantity)
values (1,'laptop', 'electronics', 1200.00, 25); 
insert into products (productid, product_name, productcategory, price, stockquantity)
values (2,'sugar', 'food', 500.00, 10); 
insert into products (productid, product_name, productcategory, price, stockquantity)
values (3,'jeans', 'clothes', 120.00, 40); 

select * from products 

select * 
into products_backup
from products; 

exec sp_rename 'products', 'inventory'; 

select * from inventory

alter table inventory 
alter column price float 


ALTER TABLE Inventory
ADD ProductCode INT IDENTITY(1000, 5);

select * from inventory 

