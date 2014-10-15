use mysql_training;

-- a)

select * from student where id not in (select r.student_id from registration r
join class c on r.class_id = c.id
where c.class_name = "Physics"
);

-- b)

select max(counted) into @most_number_of_classes_taken from (select count(*) as counted from registration group by student_id) as counts;

select s.*, count(r.student_id) as counts from student s
join registration r
on s.id = r.student_id join class c
on c.id = r.class_id
group by r.student_id
having counts = @most_number_of_classes_taken;

-- c)

select * from student where id not in (select student_id from registration);


