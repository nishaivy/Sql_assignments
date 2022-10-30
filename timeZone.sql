use assign27
CREATE TABLE time_zone(
country_code INT PRIMARY KEY,
country_name varchar(20),
)

insert into time_zone values(001,'US')
insert into time_zone values(002,'UK')
insert into time_zone values(003,'Dubai')
insert into time_zone values(004,'Singapore')

SELECT* FROM time_zone

CREATE FUNCTION timeZone (@c_name varchar(20))
RETURNS varchar(20) AS
BEGIN
DECLARE @res AS varchar(20)
   IF @c_name='Dubai'
    set @res = '5 am'
   ELSE IF @c_name='UK'
     set @res = '6 am'
   ELSE 
   set @res = 'other time'

   RETURN @res
END

select dbo.timeZone('Dubai')