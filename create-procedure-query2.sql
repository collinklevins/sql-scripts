create or alter procedure AddStudent
	@firstname varchar(30) = null, --parameter setting first name as varchar to null using up to 30 characters
	@lastname varchar(30) = null,
	@statecode char(2) = 'OH',
	@sat int = null,
	@gpa decimal (4,2) = 0,
	@majorcode varchar(4) = null
as
begin
	if @firstname is null--procedural boolean statement that tells if something is true or false
	begin
		print 'First Name is Required'; --printing that first name is required
		return;--ending the procedure
	end
	if @lastname is null
	begin
		print 'Last Name is Required';
		return; --ending the procedure
	end
	declare @majorid int = 0; --setting major id to 0
	select @majorid = id from Major where Code = @majorcode; --reading the major id from the id of major when the user enters the major code

	if @majorid = 0
	begin
		print 'No Major Found';
		return;
	end
	insert Student (Firstname,Lastname,StateCode,GPA,SAT,MajorId)--columns that will be added
		values
		(@firstname,@lastname,@statecode,@gpa,@sat,@majorid)--parameters that are lined up with each column being added

	if @@ROWCOUNT !=1 --system variable that shows the amount of rows added
	begin
		print 'Insert Failed';
		return;
	end
	print 'Insert Successful';

end
go
execute AddStudent @firstname='Noah', @lastname='Phence Jr.',@statecode='IN',@sat=1600,@gpa=2.0,@majorcode = 'math';
go
select * from Student order by id desc;