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
öti?enik int,
);

create table öti?enik (
idäti?enika int not null identity (1,1),
ime varchar(80),
vrstaéivotinje varchar(80) not null,
);

alter table öti?enik add zaposlenik int not null;

alter table prostori add foreign key (öti?enik) references öti?enik (idäti?enika);
alter table öti?enik add foreign key (zaposlenik) references zaposlenici (idZaposlenika);

alter table zaposlenici add primary key (idZaposlenika);
alter table prostori add primary key (idProstora);
alter table öti?enik add primary key (idäti?enika);