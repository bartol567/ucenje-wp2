use master;
go
drop database if exists ticketSeller;
go

create database ticketSeller;
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






insert into eventCategory (name) values ('Josip');