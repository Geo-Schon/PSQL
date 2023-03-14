INSERT INTO musician (musician)
VALUES  
	('Rammstein'),
	('Король и Шут'),
	('Bob Marley'),
	('The Prodigy'),
	('Ottawan'),
	('Kanye West'),
	('Nirvana'),
	('Frank Sinatra');


INSERT INTO genre (name_genre) 
VALUES 
	('Альтернатива'),
	('Рок'),
	('Поп'),
	('Рэп и хип-хоп'),
	('Джаз'),
	('Панк'),
	('Рэгги'),
	('Диско');


INSERT INTO album (name_album, year_of_release_album)
VALUES 
	('Mutter', 2001),
	('Камнем по голове',1996),
	('Rastaman Vibration',1976),
	('The Day Is My Enemy',2015),
	('Crazy Music',1981),
	('ye',2018),
	('Nevermind',1991),
	('Greatest Hits, 1940 - 1947 CD2',2006);


INSERT INTO track (name_track, duration, album_id) 
VALUES
	('Mein Herz Brennt',279, 1),
	('Ich Will',217,1),
	('Камнем по голове',147,2),
	('Дурак и молния',114,2),
	('Positive Vibration ',213,3),
	('Cry To Me',154,3),
	('Nasty',243,4),
	('Destroy',268,4),
	('Crazy Music',212,5),
	('Musique magique',212,5),
	('I Thought About Killing You',274,6),
	('All Mine',145,6),
	('Smells Like Teen Spirit',300,7),
	('Lithium',256,7),
	('Sweet Lorraine',192,8),
	('Dream',183,8);

INSERT INTO digest (name_digest, year_of_release_digest)
VALUES 
	('Rammstein Избранное',2021),
	('Король и Шут: Лучшее',2022),
	('40 Golden Masters',2009),
	('1 Love', 2021),
	('Alle Hits auf einer CD',2009),
	('Clean Hip Hop',2021),
	('Mike Hirst - Producers Archives Vol. 3 1964-1980',2009),
	('Oldie Hit Collection - Best Of The 50s & 60s Vol.1',2020);


INSERT INTO genre_musician (genre_id, musician_id) 
VALUES 
	(2,1),
	(6,2),
	(7,3),
	(1,4),
	(8,5),
	(4,6),
	(1,7),
	(5,8);


INSERT INTO track_digest (track_id, digest_id) 
VALUES
	(1,1),
	(2,1),
	(3,2),
	(4,2),
	(5,3),
	(6,3),
	(7,4),
	(8,4),
	(9,5),
	(10,5),
	(11,6),
	(12,6),
	(13,7),
	(14,7),
	(15,8),
	(16,8);


INSERT INTO musician_album (musician_id, album_id) 
VALUES 
	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(5,5),
	(6,6),
	(7,7),
	(8,8),
	(8,8);
