--drop table mitarbeiter
--drop table abteilung
--drop table arbeitszeitmodell
--drop table familienstand

create table abteilung (
abt_id INT IDENTITY(1,1) primary key,
abtbez varchar(100)
);

create table arbeitszeitmodell (
azm_id char(2) primary key,
azmbez varchar(30)
);

create table familienstand (
f_id int identity(1,1) primary key,
fambez varchar(20)
);

create table mitarbeiter (
ma_id int identity(1,1),
vname varchar(50),
nname varchar(50),
str_hsnr varchar(100),
plz varchar(5)
ort varchar(50),
gebdat date,
abt_id int,
azm_id char(2),
f_id int,
constraint PK_mitarbeiter primary key (ma_id),
constraint FK_ma_fam_f_id foreign key (f_id) references familienstand(f_id),
constraint FK_ma_abt_abt_id foreign key (abt_id) references abteilung(abt_id),
constraint FK_ma_azm_azm_id foreign key (azm_id) references arbeitszeitmodell(azm_id)
);
--select from mitarbeiter;