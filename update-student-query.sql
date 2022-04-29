update Student set
	MajorId = (select Id from major where Description like 'Edu%')
	where Lastname = 'Klevins'
/*updating the majorID column with the education major by using the select
command to find majors that start with Edu*/
