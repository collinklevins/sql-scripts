select CONCAT(s.firstname, ' ', s.Lastname) as 'Name', upper(isnull(m.Description, 'Undeclared')) as 'Major'
	from Student s left join Major m
		on s.MajorId = m.Id;
/*pulling student first/last name with major // used isnull to return 'Undeclared' if the major section returned
null*/