CREATE TABLE genre (
g_id int identity(1,1) primary key,
genre varchar(30)
);
CREATE TABLE interpret (
i_id int identity(1,1) primary key,
bandname varchar(80)
);


CREATE TABLE titel (
t_id int identity(1,1) primary key,
titel varchar(50),
i_id int,
g_id int,
foreign key (i_id) references interpret(i_id),
foreign key (g_id) references genre(g_id),
);

select titel, interpret.bandname, genre.genre from titel
join interpret on titel.i_id = interpret.i_id
join genre on titel.g_id = genre.g_id


create table veranstaltungsort (
v_id int identity(1,1) primary key,
ort_name varchar(100)
);

create table in_ver (
datum_von date,
datum_bis date, 
i_id int,
v_id int not null,
primary key (i_id, datum_von, datum_bis),
foreign key (v_id) references veranstaltungsort(v_id)
);
