select statecode as 'State', count(*) as 'Number of Students'
	from Student
	group by StateCode
	having count(*) >= 10
	order by COUNT(*) desc;
/*using group by function with count to count the
amount of students for each state // used order by
to display the output in descending order by count*/

