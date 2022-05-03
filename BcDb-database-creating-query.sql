drop database if exists BcDb; --drops BcDb database if it exists
go
create database BcDb;--creating BcDb database
go
use BcDb;--switching database to BcDb
go
create table Customers(--creating Customers table
id int primary key identity(1,1),--first column id auto fill primary key
code varchar(10)not null unique,--code 10 characters unique to other rows
name varchar(30) not null,--name 30 characters
sales decimal(9,2) not null default 0--sales decimal with 9 allowable digits and 2 decimal places, default is 0
	check (sales >=0),--sales must be greater than or equal to 0
active bit not null default 1,--boolean to default if the customer is active with 1
created datetime not null default getdate()--datetime column that generates the current date and time as default
)
insert Customers--inserts new entry for customers table
	(code,name,sales,active,created)--entries that will be required
	values--ready to enter values
	('qwer1234','Collin Klevins',853.23,1,getdate());--values to be put into the table
select * from Customers--read every column from the table Customers