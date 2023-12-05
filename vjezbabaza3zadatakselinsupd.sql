use master;

create database proba;
go

use proba
go

alter database proba collate Croatian_CI_AS;

create table zaposlenici (
idZaposlenika int not null identity (1,1),
ime varchar(80),
prezime varchar (80),
);

create table prostori (
idProstora int not null identity(1,1),
veli?ina int not null,
naziv varchar (80) not null,
�ti?enik int,
);

create table �ti?enik (
id�ti?enika int not null identity (1,1),
ime varchar(80),
vrsta�ivotinje varchar(80) not null,
);

alter table �ti?enik add zaposlenik int not null;

alter table prostori add foreign key (�ti?enik) references �ti?enik (id�ti?enika);
alter table �ti?enik add foreign key (zaposlenik) references zaposlenici (idZaposlenika);

alter table zaposlenici add primary key (idZaposlenika);
alter table prostori add primary key (idProstora);
alter table �ti?enik add primary key (id�ti?enika);

insert into zaposlenici (ime,prezime) values ('Ivan'
,'Horvat'), ('Marko','Maruli?');
select * from zaposlenici;
insert into prostori (veli?ina,naziv) values ('52','�ic');
select * from prostori;

insert into �ti?enik (ime,vrsta�ivotinje,zaposlenik) values ('Velki','Lav','1'), ('Mali','Mrav','2'), ('Visoka','�irafa','2');

select * from �ti?enik;


update �ti?enik 
set vrsta�ivotinje='Slon' where id�ti?enika=2;

update �ti?enik set zaposlenik='2' where id�ti?enika=2;