CREATE TABLE IF NOT EXISTS musician
(
	id serial PRIMARY KEY,
	musician varchar 
);

CREATE TABLE IF NOT EXISTS album
(
	id serial PRIMARY KEY,
	name_album varchar,
	year_of_release_album integer
);

CREATE TABLE IF NOT EXISTS track
(
	id serial PRIMARY KEY,
	name_track varchar,
	duration integer,
	album_id integer REFERENCES album(id)
);

CREATE TABLE IF NOT EXISTS genre 
(
	id serial PRIMARY KEY,
	name_genre varchar
);

CREATE TABLE IF NOT EXISTS digest
(
	id serial PRIMARY KEY,
	name_digest varchar,
	year_of_release_digest integer
);

CREATE TABLE IF NOT EXISTS genre_musician
(
	id serial PRIMARY KEY,
	genre_id integer REFERENCES genre(id),
	musician_id integer REFERENCES musician(id)
);

CREATE TABLE IF NOT EXISTS musician_album
(
	id serial PRIMARY KEY,
	musician_id integer REFERENCES musician(id),
	album_id integer REFERENCES album(id)
	
);

CREATE TABLE IF NOT EXISTS track_digest 
(
	id serial PRIMARY KEY,
	digest_id integer REFERENCES digest(id),
	track_id integer REFERENCES track(id)
);