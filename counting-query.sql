create or alter procedure Counter --initializing the creation of a procedure
	@max int = 5 --adding parameter of max number
as
begin
	declare @nbr int = 0; --declaring variable nbr is equal to 0 // int is sql type
	declare @total int = 0; --declaring variable totsl as int equal to 0
	declare @square int = 0; --declaring square to 0
	while @nbr <= @max --boolean expression that will execute the statement again and again until its false
		begin
			set @square = @nbr * @nbr; --square is now the number times the number
			set @total = @total + @square; --setting total to the total plus the current number
			print @nbr; --prints number for end user
			set @nbr = @nbr + 1; --adds 1 to the number
		end
		print 'Done...';
		print 'Total:' + trim(str(@total)); --prints Total: // must convert int to string to print properly
end
go --go locks the previous statements in and eliminates rollback possibility
exec Counter @max = 10; --executes the counter procedure // adjusting the value of the parameter