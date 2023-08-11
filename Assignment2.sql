create database ExerciseDb
use ExerciseDb

create table Publisher
(PID int primary key,
Publisher nvarchar(50) unique not null)
insert into Publisher values (1, 'VS-Publisher'),
(2, 'RR-Publisher'),
(3, 'RK-Publisher')
select * from Publisher order by PID

create table Category
(CID int primary key,
Category nvarchar(50) unique not null)
insert into category values(7, 'A')
insert into category values(8, 'B')
insert into category values(9, 'C')
select * from Publisher

create table Author
(AID int primary key,
AuthorName nvarchar(50) unique not null)
insert into Author values (11,'Vikram')
insert into Author values (12,'Kiran')
insert into Author values (13,'Ram')
select * from Author

create table Book
(Bid int primary key,
BName nvarchar(50) not null,
BPrice int,
Author int foreign key references Author,
Publisher int foreign key references Publisher,
Category int foreign key references Category,)
insert into Book values (20, 'EMF', 300, 11,1,7)
insert into Book values (21, 'PE', 350, 13,2,8)
insert into Book values (22, 'PSA', 400, 12,3,9)
insert into Book values (23, 'SS', 200, 11,1,8)
insert into Book values (24, 'AE', 150, 13,3,7)
insert into Book values (25, 'CS', 320, 11,2,9)
select * from Book
