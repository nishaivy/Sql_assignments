use assign27

CREATE TABLE EmployeeDetails (
empId integer,
empName varchar(50),
empLang varchar(50),
baseLocation varchar(50)
)

insert into EmployeeDetails values(01,'Nisha','C#','Banglore')
insert into EmployeeDetails values(02,'Mukesh','C++','Banglore')
insert into EmployeeDetails values(03,'aniket','C#','Hyderabad')
insert into EmployeeDetails values(04,'Selva','Ruby','Noida')
insert into EmployeeDetails values(05,'Varun','Java','Dehli')

SELECT* from EmployeeDetails

alter PROCEDURE pr_1 @programmingLang varchar(20), @Location varchar(20) AS SELECT* from EmployeeDetails WHERE empLang=@programmingLang and baseLocation=@Location
EXEC pr_1 @prolang='C#', @location='Banglore'