--1 Название и год выхода альбомов,вышедших в 2018 году
select name_album, year_of_release_album from album
where year_of_release_album = 2018;

--2 Название и продолжительность самого длительного трека
select name_track, duration from track
where duration = (select MAX(duration) from track);

--3 Название треков, продолжительность которых не менее 3,5 минуты
select name_track,duration from track
where duration >= 210;

--4 Названия сборников, вышедших в период с 2018 по 2020 год включительно
select name_digest, year_of_release_digest from digest
where year_of_release_digest between 2018 and 2020;

--5 Исполнители, чье имя состоит из 1 слова
select musician from musician
where musician not like '%% %%';

--6 Название треков, которые содержат слово "мой"/"my"
select name_track from track
where name_track like '%%мой%%' OR name_track like '%%my%%';

--7 Количество исполнителей в каждом жанре.
select name_genre, count(musician) from musician
join genre_musician on musician.id = genre_musician.musician_id
join genre on genre_musician.genre_id = genre.id
group by name_genre;

--8 Количество треков, вошедших в альбомы 2019–2020 годов.
select year_of_release_album,count(name_track) from album a
join track t on a.id = t.album_id
where a.year_of_release_album BETWEEN 2019 and 2020
GROUP BY year_of_release_album

--9 Средняя продолжительность треков по каждому альбому.
select name_album, avg(duration) from album a
join track t on a.id = t.album_id
group by name_album;

--10 Все исполнители, которые не выпустили альбомы в 2020 году. 
select musician from album a
join musician_album ma on a.id = ma.album_id
join musician m on ma.musician_id = m.id
where a.year_of_release_album != 2020;


--11 Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
select name_digest from digest d
join track_digest td  on d.id = td.digest_id
join track t on td.track_id = t.id
join album a on t.album_id = a.id
join musician_album ma on a.id = ma.album_id
join musician m on ma.musician_id = m.id
where m.musician like 'Rammstein';
 
--12 Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
select name_album from album a
join musician_album ma on a.id = ma.album_id
join musician m on ma.musician_id = m.id
join genre_musician gm on m.id = gm.musician_id
group by m.musician, a.name_album
having count(gm.genre_id) > 1;

--13 Наименования треков, которые не входят в сборники.
select name_track from track t
left join track_digest td on t.id = td.track_id
where td.track_id is null;

--14 Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
select m.musician, t.duration from musician m
join musician_album ma on m.id = ma.musician_id
join album a on ma.album_id = a.id
join track t on a.id = t.album_id
where t.duration in (select min(duration) from track)

--15 Названия альбомов, содержащих наименьшее количество треков.
SELECT a.name_album, COUNT(t.name_track) from album a
JOIN track t ON a.id  = t.album_id  
GROUP BY a.name_album 
HAVING COUNT(t.name_track) = (
	SELECT MIN(count) FROM (
		SELECT a.name_album , COUNT(t.name_track) from album a
		JOIN track t ON a.id = t.album_id 
		GROUP BY a.name_album) AS f)
