declare aCursor CURSOR for --declaring a cursor named aCursor
	select * from major; --selecting columns from certain table

	declare @id int, @code varchar(4), @desc varchar(50), @minsat int;--declaring
	declare @avgsat decimal(6,2) = 0, @row int = 0; --declaring 

	open aCursor;--opening cursor

	fetch next from aCursor into @id,@code,@desc,@minsat;--cursor will go down the list and return column values into the listed variable place

	while @@FETCH_STATUS = 0 -- while loop that will stop when the rows run out and fetch status changes from 0
	begin
		set @avgsat = @avgsat + @minsat;--changing the avgsat to avgsat + minsat
		set @row = @row + 1 --created a count clause to count the rows with each loop
		print 'Major: ' + str(@id) + '|' + @code + '|' + @desc + '|' + trim(str(@minsat)); --printing results with a line between each result
		fetch next from aCursor into @id,@code,@desc,@minsat; --copied fetch statement from aboved to perform fetch with each loop
	end --end fetch
	set @avgsat = @avgsat/@row; --calculation to determine avgsat
	print 'Average SAT:' + trim(str(@avgsat));
	print 'Done...';

	close aCursor; --closing cursor

deallocate aCursor; --deallocating cursor