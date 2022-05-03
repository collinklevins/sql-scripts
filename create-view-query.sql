create or alter view CustomerSalesOrder as--creating or altering view CustomerSalesOrder
select so.id, so.Description, so.Date, so.Total, c.name--read statement with columns to be read
	from SalesOrder so
	join Customers c
		on c.id = so.CustomerId;
go
select * from CustomerSalesOrder