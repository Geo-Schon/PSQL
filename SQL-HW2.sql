create table if not exists musician
(
	id serial primary key,
	nickname varchar 
);

create table if not exists album
(
	id serial  primary key,
	name_album varchar,
	year_of_release year
);

create table if not exists track
(
	id serial primary key,
	name_track varchar,
	duration time,
	album_id integer references album(id)
);

create table if not exists genre 
(
	id serial primary key,
	name_genre varchar
);

create table if not exists digest
(
	id serial primary key,
	name_digest varchar,
	year_of_release year
);

create table if not exists genre_musician
(
	id serial primary key,
	genres_id  integer references genre(id),
	musician_id integer references nickname(id)
);

create table if not exists musician_album
(
	id serial primary key,
	musician_id  integer references nickname(id),
	album_id  integer references album(id)
	
);

create table if not exists composition_digest 
(
	id serial primary key,
	digest_id integer references digest(id),
	track_id integer references track(id)
);