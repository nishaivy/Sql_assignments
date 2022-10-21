use assignment1
create table cricketPointTable(
	CountryName char(5) NOT NULL,  
	playerName VARCHAR(20) NOT NULL,  
	win INT NOT NULL,  
	loss INT not null,  
	ratings decimal not null
	PRIMARY KEY (CountryName,playerName)  
);

select * from cricketPointTable;

truncate table cricketPointTable

SET ANSI_WARNINGS OFF
insert into cricketPointTable values('INDIA','Virat Kohli',8,2,6.57);
insert into cricketPointTable values('ENGLAND','Jason Roy',7,3,5.92);
insert into cricketPointTable values('AUSTRALIA','Aaron Finch',6,4,6.02);
insert into cricketPointTable values('SOUTH AFRICA','David Miller',5,5,5.27);
insert into cricketPointTable values('PAKISTAN','Babar Azam',4,6,4.97);
insert into cricketPointTable values('SRILANKA','Wanindu Hasaranga',3,7,4.22);
insert into cricketPointTable values('WEST INDIES','Jason Holder',2,8,3.35);
insert into cricketPointTable values('BANGLADESH','Tamim Iqbal',1,9,2.88);
SET ANSI_WARNINGS ON
GO