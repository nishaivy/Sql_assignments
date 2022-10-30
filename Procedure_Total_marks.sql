use assign27
CREATE TABLE student(
stId INT,
stName varchar(20),
stMarks INT,
stSub varchar(20)
)


insert into student values(1,'Nisha',78,'Maths')
insert into student values(1,'Nisha',76,'Economics')
insert into student values(1,'Nisha',57,'Commerce')
insert into student values(1,'Nisha',51,'English')
insert into student values(1,'Nisha',92,'CS')

insert into student values(2,'Mukesh',77,'Maths')
insert into student values(2,'Mukesh',65,'Economics')
insert into student values(2,'Mukesh',85,'Commerce')
insert into student values(2,'Mukesh',64,'English')
insert into student values(2,'Mukesh',85,'CS')


insert into student values(3,'Ranveer',95,'Maths')
insert into student values(3,'Ranveer',50,'Economics')
insert into student values(3,'Ranveer',70,'Commerce')
insert into student values(3,'Ranveer',55,'English')
insert into student values(3,'Ranveer',87,'CS')


insert into student values(4,'Ananya',78,'Maths')
insert into student values(4,'Ananya',85,'Economics')
insert into student values(4,'Ananya',65,'Commerce')
insert into student values(4,'Ananya',51,'English')
insert into student values(4,'Ananya',97,'CS')


insert into student values(5,'Nadeem',81,'Maths')
insert into student values(5,'Nadeem',71,'Economics')
insert into student values(5,'Nadeem',61,'Commerce')
insert into student values(5,'Nadeem',52,'English')
insert into student values(5,'Nadeem',93,'CS')

insert into student values(6,'Ankit',98,'Maths')
insert into student values(6,'Ankit',55,'Economics')
insert into student values(6,'Ankit',68,'Commerce')
insert into student values(6,'Ankit',79,'English')
insert into student values(6,'Ankit',91,'CS')

insert into student values(7,'Joshep',92,'Maths')
insert into student values(7,'Joshep',60,'Economics')
insert into student values(7,'Joshep',68,'Commerce')
insert into student values(7,'Joshep',82,'English')
insert into student values(7,'Joshep',91,'CS')

insert into student values(8,'Asha',87,'Maths')
insert into student values(8,'Asha',75,'Economics')
insert into student values(8,'Asha',62,'Commerce')
insert into student values(8,'Asha',65,'English')
insert into student values(8,'Asha',95,'CS')


insert into student values(9,'Divya',75,'Maths')
insert into student values(9,'Divya',70,'Economics')
insert into student values(9,'Divya',62,'Commerce')
insert into student values(9,'Divya',65,'English')
insert into student values(9,'Divya',80,'CS')

insert into student values(10,'ravi',85,'Maths')
insert into student values(10,'ravi',77,'Economics')
insert into student values(10,'ravi',58,'Commerce')
insert into student values(10,'ravi',68,'English')
insert into student values(10,'ravi',92,'CS')


select* from student


CREATE or ALTER PROCEDURE p_3 AS

CREATE or ALTER PROCEDURE p_3 AS
DECLARE @result table (name varchar(20),max_marks INT)

insert into @result select stName,SUM(stMarks) AS marks from student group by stName order by marks DESC
SELECT * from @result order by max_marks DESC

EXEC p_3