use master;
go
drop database if exists ticketSeller;
go

create database ticketSeller;
go

use ticketSeller;

create table occasionCategory(
id int not null primary key identity (1,1),
categoryName varchar (80) not null
);

create table Occasions(
id int not null primary key,
occasionName varchar (80) not null,
occasionPlace varchar (80) not null,
occasionCategoryid int not null,
startTime datetime not null
);

create table Users(
id int not null primary key identity (1,1),
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
occasionId int not null,
seat int,
seated bit,
);

alter table Occasions add foreign key (occasionCategoryid) references occasionCategory (id);
alter table Tickets add foreign key (userId) references Users(id);
alter table Tickets add foreign key (occasionId) references Occasions (id);
