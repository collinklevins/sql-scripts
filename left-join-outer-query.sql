SELECT *
	from student s left join Major m
		on s.MajorId = m.Id;
--outer table join where every student is outputted, regardless if their FK of major ID is null