--Homework_3

--Bulk insert is a Transact-SQL commant that allows us to export large 
--amount of external data, such as ,txt,csv, and dat, into SQL server much quicker than using insert into command. 
--It gives us the chance to load large amount of data easily instead of loading them one by one. 
--It also handles external data sources well, as many businesses store their data in csv and other files.
--Bulk insert helps transfer these files into SQL tables. 

--CSV, known as comma-separated values, are commonly imported into SQl server, which is followed 
--by another very common file type - TXT, plain text files. Excel files are also on this list, XLS and XLSX. 
--XML, extensible markup language, files can also be imported into SQL server. 

create table Products (
ProductID INT PRIMARY KEY, 
ProductName VARCHAR (50), 
Price DECIMAL (10,2)
); 

INSERT INTO Products (ProductID, ProductName,Price)
VALUES 
(1,'Cheese',1500.00),
(2,'Milk',800.00),
(3,'Chicken',2000.00),
(4,'Drinks',2500.00),
(5,'Fruits',3000.00)

select * from Products 

--NULL means we can simply leave our space as empty. It does not mean that it is 0, 
--it just means that we can choose to leave a blank open. 
--NOT NULL means means we cannot leave our column without value. It alwahs needs to have value. 

alter table Products 
add constraint uq_ProductName unique (ProductName)

--Comments in SQL are not meant to change SQL runs, they are here to help humans understand and maintain them. 
--For example, 

select * from Products where price > 2000; 

--it selects products whose prices are greater than 2000. 

alter table Products 
add CategoryID int 

select * from Products 

create table Categories (
CategoryID int primary key, 
CategoryName varchar (50) unique
); 

insert into Categories (CategoryID, CategoryName)
values 
(1,'Fruits'),
(2,'Vegetables'),
(3,'Drinks'),
(4,'Fish');

select * from Categories

--Identity column is a very helpful command in SQL server, as it automatically 
--generates unique numbers for each row. 
--For example, it can auto-generate primary keys in our tables, which is done instead of manualling 
--entering each ID into the table. It also ensures uniqueness, preventing duplicates from happening. 

create table Teachers (
TeacherID int identity(1,1) primary key, 
Department varchar(30) not null,
Age int, 
email_address varchar(40) not null
); 


bulk insert Products  
from 'C:\Data\Products.txt'
with (
fieldterminator = ',',
rowterminator = '\',
firstrow = 2 
);
select * from Products 

alter table Products 
add constraint FK_Products_Categories 
foreign key (CategoryID)
references Categories (CategoryID);


--Primary key in SQL server means that it is the main identifier of the table. Only one for a table. 
--It ensures uniqueness and does not allow Null (columns must have value). 
--Unique key also esnures uniqueness but allows null value. Also, a table can have multiple unique keys. 


alter table Products 
add constraint CHK_Products_Price 
check (Price > 0);

ALTER TABLE Products
ADD Stock INT NOT NULL CONSTRAINT DF_Products_Stock DEFAULT 0;


SELECT 
    ProductID,
    ProductName,
    ISNULL(Price, 0) AS Price
FROM Products;

--The purpose of the foreign key is to create relationship between one table in dependant or child table 
--with another one in parent table. It also ensures data integrity, by not allowing deleting data from parent 
--table if it is still linked to the child table. Also, it prevents inserting values in the child table 
--that does not exist in parent table. 


create table Customers (
CustomerID int primary key identity(1,1), 
FirstName varchar(50) not null, 
LastName varchar(50) not null, 
age int not null,

constraint CHK_Customer_age check (age >=18)
); 

create table Visitors (VisitorID int primary key identity (100,10)); 
