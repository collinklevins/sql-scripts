insert Products (PartNbr, Name, Price, VendorId)
	values
	('5532A', 'Basketball Hoop', 549.99, (select id from Vendors where name like 'Dick''s%'))
go
insert Products (PartNbr, Name, Price, VendorId)
	values
	('2565B', 'Work Desk', 129.99, (select id from vendors where name = 'Walmart'))
go
insert Products (PartNbr, Name, Price, VendorId)
	values
	('2111C', 'Keyboard', 59.99, (select id from vendors where name = 'Amazon'))
go
select * from Products