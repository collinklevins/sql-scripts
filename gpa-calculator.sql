select *
	from student s
	where s.GPA >= (select avg(gpa) from Student)
	order by GPA
--calculates average of the gpa field