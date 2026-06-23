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


insert into titel (titel, i_id, g_id) values 
('Satisfaction', 1, 1),
('Start Me Up', 1, 1),
('Paint It Black', 1, 1),
('Jumpin Jack Flash', 1, 1),
('Brown Sugar', 1, 1), 
('Wild Horses', 1, 1)
('Hello
('Rolling in the Deep
('Someone Like You
('Easy On Me
('So What
('Freddie Freeloader
('Blue in Green
('All Blues
('Milestones
('Nardis
('Lose Yourself
('The Real Slim Shady
('Without Me
('Mockingbird
('Stan
('Symphonie Nr. 5
('Für Elise
('Mondscheinsonate
('Ode an die Freude
('Harder Better Faster Stronger
('One More Time
('Digital Love
('Robot Rock
('Get Lucky
('Around the World
('Technologic
('No Woman No Cry
('Three Little Birds
('Redemption Song
('Jamming
('Could You Be Loved
('Viva La Vida
('Paradise
('Fix You
('The Scientist
('Clocks
('Yellow
('Hymn for the Weekend
('A Sky Full of Stars
('Feeling Good
('I Put a Spell on You
('Don’t Let Me Be Misunderstood
('Ain’t Got No, I Got Life
('Numb
('In the End
('Breaking the Habit
('One Step Closer
('Crawling
('Faint
('Papercut
('Somewhere I Belong
