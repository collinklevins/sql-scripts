--Script for creating PRS database
create database PRS;
go
use PRS;
go
create table Users(
Id int not null primary key identity(1,1),
Username varchar(30) not null unique,
Password varchar(30) not null,
Firstname varchar(30) not null,
Lastname varchar(30) not null,
Phone varchar(12),
Email varchar(255),
IsReviewer bit not null default 0,
IsAdmin bit not null default 0
);
go
create table Vendors(
Id int not null primary key identity (1,1),
Code varchar(30) not null unique,
Name varchar(30) not null,
Address varchar(30) not null,
City varchar(30) not null,
State varchar(30) not null,
Zip varchar(5) not null,
Phone varchar(12),
Email varchar(255)
);
go
create table Products(
Id int not null primary key identity (1,1),
PartNbr varchar(30) not null unique,
Name varchar(30) not null,
Price decimal(9,2) not null default 0,
Unit varchar(30) not null default 'Each',
PhotoPath varchar(255),--Path to image
VendorId int not null foreign key references Vendors(Id)
);
go
create table Requests(
Id int not null primary key identity(1,1),
Description varchar(80) not null,
Justification varchar(80) not null,
RejectionReason varchar(80),
DeliveryMode varchar(20) not null,--i.e.'Pickup'
Status varchar(10) not null default 'NEW',
Total decimal(11,2) not null default 0,
UserId int not null foreign key references Users(Id)
);
go
create table Requestlines(
Id int not null primary key identity(1,1),
RequestId int not null foreign key references Requests(Id),
ProductId int not null foreign key references Products(Id),
Quantity int not null default 1
)