use assignment1
create table studentInfo(
name varchar(20) not null,
roll int primary key,
course varchar(20),
dateOfJoining date not null
);

select * from studentInfo
insert into studentInfo values('Nisha',22,'Physics','2022-09-30');
insert into studentInfo values('kunal',23,'Math','2022-04-30');
insert into studentInfo values('Mumal',25,'Physics','2022-08-22');
insert into studentInfo values('Ritik',29,'Chemistry','2022-07-31');
insert into studentInfo values('Ravi',13,'Physics','2022-06-29');
insert into studentInfo values('Nadeem',08,'Physics','2022-09-10');
insert into studentInfo values('Pritam',11,'Math','2022-10-16');
insert into studentInfo values('Abhishek',17,'Physics','2022-10-11');
insert into studentInfo values('Naresh',04,'Physics','2022-03-23');
insert into studentInfo values('Sahil',05,'Physics','2022-05-19');

select * from studentInfo where course = 'physics' and dateOfJoining > '2022-07-31';