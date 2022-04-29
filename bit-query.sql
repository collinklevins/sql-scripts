declare @active bit;
	set @active = 1; --using bit to create a boolean parameter variable meaning true

select *
	from Customers
	where Active = @active