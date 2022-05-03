create table Department(
	Id int not null primary key identity(1,1),
	Description varchar(60) not null,
	Location varchar(80) not null
)
create table Employees(--creating a table called Employees
Id int not null primary key identity(1,1),--Id column with int type, can't be null, primary key, allowing sql to assign the Id
	Name varchar(50) not null,--create name column that allows up to 50 characters
	Phone varchar(12) not null,--phone column up to 12 characters
	Salary decimal(9,2) not null default 0,--salary column allowing 9 characters total with 2 decimal characters
	Active bit not null default 1,--active column with bit type to show 1 or 0 as true or false
	DepartmentId int foreign key references Department(Id)--linked department id primary key with this foreign key
)