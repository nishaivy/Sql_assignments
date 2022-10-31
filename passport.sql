use assign28
create database passport;

create table pass(
no_var int  primary key,
name_var varchar(50),
expiry_var date,
validity_var int,
channel_var varchar(50)
)


create or alter procedure passports @pass_number int, @name varchar(50),@expiry date, @validity int,@channel varchar(50) as
insert into pass values(@pass_number,@name,@expiry,@validity,@channel)



select * from pass
exec passports
