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