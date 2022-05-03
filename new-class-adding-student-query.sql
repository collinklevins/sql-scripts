insert class
	(code,Subject,Section)
	values
	('ENG401','English',401)
insert StudentClass (StudentId,ClassId)
	values
	((select id from student where Firstname = 'Eric' and Lastname = 'Ephram'),(select id from class where code = 'ENG401'))

/*created new class as ENG401 while simultaneously creating a new student class row to add Eric Ephram to the class // 
both statemtents can be ran at the same time*/

select *
	from student s
	join StudentClass sc
		on s.Id = sc.StudentId
	join class c
		on c.id = sc.ClassId
	where s.Lastname = 'Ephram';

--read statement to identify that Eric Ephram was added to the studentclass