use [test1]
CREATE TABLE [dbo].[course_info](

insert into course_info values (1,'Physics')
insert into course_info values (2,'Maths')
insert into course_info values (3,'Chemistry')
insert into course_info values (4,'English')
insert into course_info values (5,'History')
insert into course_info values (6,'Economics')

 

insert into student_info values (1,'Raj', 1, '10/11/2021')
insert into student_info values (2, 'Rahul', 1, '2/21/2021')
insert into student_info values (3,'Amal', 3, '11/11/2021')
insert into student_info values (4,'Sheetal', 2, '11/11/2021')
insert into student_info values (5,'Priya', 1, '1/11/2021')
insert into student_info values (6,'Amol', 1, '10/11/2021')
insert into student_info values (7,'Geetha', 1, '10/11/2021')
insert into student_info values (10,'Bino', 4,'10/11/2021')
insert into student_info values (12,'Fatima', 5,'10/11/2021')

select distinct study_branch from student_info
select count(study_branch) from student_info where study_branch=1
select min(study_branch) from student_info
select max(study_branch) from student_info
select avg(study_branch) from student_info
select min(study_branch) from student_info where study_branch!=(select min(study_branch) from student_info)
select min(study_branch) from student_info where study_branch!=(select min(study_branch) from student_info)

select* from student_info order by study_branch
select * from student_info where study_branch IN (SELECT DISTINCT TOP 2 study_branch FROM student_info ORDER BY study_branch DESC)
select* from student_info where study_branch =(SELECT ROW_NUMBER() OVER(ORDER BY study_branch ASC) AS Row# FROM student_info WHERE study_branch < 5)

select * from student_info where study_branch = ( select min( study_branch ) from student_info   