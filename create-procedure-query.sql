create or alter procedure AddMajor
	@majorcode varchar(4) = null,
	@majordescription varchar(30) = null,
	@majorminsat int = null
as
begin
	if @majorcode is null
	begin
		print 'Major Code is Required'
		return;
	end
	if @majordescription is null
	begin
		print 'Major Description is Required'
		return;
	end
	if @majorminsat is null
	begin
		print 'Major Minimum SAT is Required'
		return;
	end
	insert major (code, description, minsat)
		values
		(@majorcode, @majordescription,@majorminsat)

	if @@ROWCOUNT !=1
	begin
		print 'Insert Failed'
		return;
	end
	print 'Insert Successful'
end
go
exec AddMajor @majorcode = 'PAIN', @majordescription = 'Painting', @majorminsat = 1600


