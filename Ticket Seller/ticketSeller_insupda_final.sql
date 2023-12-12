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

insert into occasionCategory (categoryName) values ('Koncerti'),
 ('Predstave'),
 ('Izlozbe');

 select * from occasionCategory;

 insert into Occasions (id,occasionName,occasionPlace,occasionCategoryid,startTime) values ('1','Koncert Miše Kovača','Arena Split','1','2023-11-10'),
 ('2','Predstava Zagrebačkog kazalista','HNK Zagreb','2','2023-12-17'),
 ('3','Izložba Lupino','Galerija Ivana Zajca','3','2024-01-01');

 select * from Occasions;

 insert into Users (firstName,lastName,oib,adress,email,city,registrationDate) values 
 ('Franjo','Franjic','12345678900','VIM 21','F.franjic','Osijek','2023-01-02'),
 ('Marko','Maric','12345678901','VIM 33','M.maric@gmail.com','Osijek','2023-01-01');

 select * from Users;

 insert into tickets (userId,occasionId,seat,seated) values  ('2','2','0','0'),
 ('1','1','13','1');

 select * from tickets;