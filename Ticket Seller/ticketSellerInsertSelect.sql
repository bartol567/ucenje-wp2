use master;
go
drop database if exists ticketSeller;
go

create database ticketSeller;
go
use ticketSeller;

create table eventCategory(
id int not null primary key identity (1,1),
name varchar (80) not null, 
);

create table iEvent(
Id int not null primary key,
name varchar (80) not null,
location varchar (80) not null,
eventCategoryid int not null,
startTime datetime not null
);

create table Users(
Id int not null primary key identity (1,1),
firstName varchar(80) not null,
lastName varchar(80) not null,
oib varchar (80) not null,
adress varchar(80) not null,
email varchar (80) not null,
city varchar (80) not null,
registrationDate datetime not null
);


create table Tickets(
id int not null primary key identity (1,1),
userId int not null, 
eventId int not null,
seat int not null,
seatRow int not null
);

alter table iEvent add foreign key (eventCategoryId) references eventCategory (id);
alter table Tickets add foreign key (userId) references Users(Id);
alter table Tickets add foreign key (eventId) references iEvent (Id);

alter table eventCategory alter column name varchar (80) not null;

insert into Users (firstName,lastName,oib,adress,email,city,registrationDate) 
values 
('Ivan','Horvat','12345678901','VIM 62','ihrovat@gmail.com','Osijek','2023-11-27 16:00:00'),
('Josip','Petrušev','12345678911','VIM 63','jpetrusev@gmail.com','Osijek','2023-11-27 16:00:01'),
('Darko','Mrakić','12345678921','VIM 64','dmrakic@gmail.com','Osijek','2023-11-27 16:00:02');

select * from Users;

insert into Users (firstName,lastName,oib,adress,email,city,registrationDate) values ('Hrvoje','Hrvić','12345678888','VIM 100','HHRVIC@GMAIL.COM','Zagreb','2023-11-24 16:00:00');

select * from Users where lastName like '%at';

update Users set lastName='Radonjić' where Id=3;