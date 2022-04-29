declare @lowgpa decimal(7,2);
	set @lowgpa = 2.25;
declare @highgpa decimal(7,2);
	set @highgpa = 3.59;
--decimal is a type of data (floating point) it allows for a decimal to occupy the variable
--the parenthesis (7,2) means there can be 7 digits with 2 being decimals

select *
	from Student
	where (gpa >= @lowgpa and gpa <= @highgpa)
	order by gpa desc;
--greater than or equal to 2.0 less than 3.5	