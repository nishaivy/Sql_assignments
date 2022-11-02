use [test1]
CREATE TABLE [dbo].[student_info](
	[student_id] [int] NOT NULL,
	[student_name] [nvarchar](50) NOT NULL,
	[study_branch] [int] NULL,
	[date_of_joining] [datetime] NULL,
 CONSTRAINT [unique_studentid] UNIQUE NONCLUSTERED 
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


ALTER TABLE [dbo].[student_info]  WITH CHECK ADD  CONSTRAINT [FK_student_info_course_info] FOREIGN KEY([study_branch])
REFERENCES [dbo].[course_info] ([course_id])

CREATE TABLE [dbo].[course_info](
	[course_id] [int] NOT NULL,
	[course_name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

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
            where  study_branch IN (select distinct TOP 50                   
                                study_branch from student_info order by study_branch desc ))