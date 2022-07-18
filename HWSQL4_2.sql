INSERT INTO Genre (name)
VALUES ('Ñlassical'), ('Dance'), ('Jazz'), ('Rock'), ('Electronic'), ('Rap');

INSERT INTO Singer (nickname)
	VALUES('Wolfgang Amadeus Mozart'),
			('Eminem'),
			('Ludwig van Beethoven'),
			('Lady Gaga'),
			('Frank Sinatra'),
			('Miles Davis'),
			('The Beatles'),
			('Madonna'),
			('The Prodigy'),
			('Depeche Mode'),
			('Nirvana'),
			('Kanye West');

INSERT INTO	Genre_Singer (id_genre, id_singer)
	VALUES  (1,1),
			(6,2),
			(1,3),
			(2,4),
			(3,5),
			(3,6),
			(4,7),
			(2,8),
			(5,9),
			(5,10),
			(4,11),
			(6,12);
			
INSERT INTO Album (album_title, release_year) 
	VALUES('IMozart: Requiem',1959),
			('Beethoven: Piano Sonatas, vol.3',2007),
			('The Fame',2008),
			('Born This Way',2011),
			('Ray of Light',1998),
			('Confessions on a Dance Floor',2005),
			('Christmas Songs By Sinatra',1948),
			('My Way (Expanded Edition)',2013),
			('Kind of Blue',1959),
			('Bitches Brew',1970),
			('Abbey Road',1969),
			('Revolver',1966),
			('Nevermind',1991),
			('In Utero',1993),
			('The Fat of the Land',1997),
			('Invaders Must Die',2008),
			('Violator',1990),
			('Playing the Angelr',2005),
			('Recovery',2010),
			('The Eminem Show',2002),
			('Graduation',2007),
			('ye',2018);
			
INSERT INTO Album_singer (id_album, id_singer) 
	values(1,1), (2,2), (3,3), (4,3), (5,4), (6,4), (7,5), (8,5),
		(9,6), (10,6), (11,7), (12,7), (13,8), (14,8), (15,9), (16,9),
		(17,10), (18,10), (19,11), (20,11), (21,12), (22,12);	
	

INSERT INTO Track(track_name, duration, id_album) 
	values('Requiem In D Minor, K.626 ', 420, 1), ('Sonata No. 1 in F minor, Op. 2 No. 1: I. Allegro', 271, 2),
		('Just Dance', 190, 3), ('Marry the Night', 264, 4),
		('Swim', 300, 5), ('Hung Up', 333, 6), 
		('Adeste Fideles', 192, 7), ('My Way', 276, 8), 
		('So What - Mono Version', 547, 9), ('Bitches Brew', 238, 10), 
		('Maxwells Silver Hammer', 207, 11), ('Eleanor Rigby', 127, 12), 
		('Smells Like Teen Spirit', 288, 13), ('Serve the Servants', 212, 14), 
		('Breathe', 240, 15), ('Invaders Must Die', 225, 16),
		('World in My Eyes', 267, 17), ('A Pain That I am Used To', 268, 18),
		('Cold Wind Blows', 304, 19), ('White America', 324, 20), 
		('Good Morning', 187, 21), ('I Thought About Killing You', 274, 22);	

INSERT INTO Collection (name_collection, release_year) 
	values('Classica', 2007), 
			('Legend', 2015),
			('Best', 2016), 
			('Hot', 2018),
			('Popular', 2018), 
			('2000õ', 2020),
			('1990õ', 2020), 
			('Legend of rock', 2021);

INSERT INTO Track_collection (id_track, id_collection) 
	values(1,1), (2,1), (3,4), (4,5), (5,7), (6,4), (7,2), (8,2),
		(9,3), (10,3), (11,8), (12,3), (13,8), (14,3), (15,7), (16,4),
		(17,7), (18,6), (19,4), (20,6), (21,5), (22,6);




SELECT album_title, release_year FROM Album
		WHERE release_year = 2018;

SELECT track_name, duration FROM Track
		ORDER BY duration DESC
		LIMIT 1;

SELECT track_name FROM Track
		WHERE duration > 210;
	
SELECT name_collection FROM Collection
		WHERE release_year BETWEEN 2018 AND 2020;	
	
SELECT nickname FROM Singer
		WHERE nickname NOT LIKE '%% %%';
		
SELECT track_name FROM Track
		WHERE track_name LIKE '%%My%%';