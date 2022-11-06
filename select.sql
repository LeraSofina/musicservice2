select genre_name, count(musician_id) as count_musicians
from music_genre mg 
join genremusician g on mg.genre_id = g.genre_id 
group by genre_name 

select count(track_name) as count_tracks_2019_2020
from track t
join album a on t.album_id = a.album_id 
where album_year between '2019-01-01' and '2020-12-31';

select album_name, ROUND(avg(track_length), 2)
from album a
join track t on a.album_id = t.album_id
group by album_name;


select musician_name
from musician 
	join albummusician USING(musician_id)
	join album USING(album_id)
where musician_id not in (SELECT musician_id 
							  from albummusician 
							  		inner join album using(album_id)
							  where TO_CHAR(album_year, 'YYYY') LIKE '%2020%');

							 
select distinct collection_name 
from collection c 
join trackcollection t on c.collection_id = t.collection_id 
join track using(track_id)
join album using(album_id)
join albummusician using(album_id)
join musician using(musician_id)
where musician_name like 'Би-2';

select album_name
from album
join albummusician using(album_id)
join musician using(musician_id)
join genremusician using(musician_id)
join music_genre using (genre_id)
group by album_name
having count(music_genre) > 1;

select track_name
from track
join trackcollection using(track_id)
where trackcollection.track_id is Null;

select musician_name
from musician
join albummusician using(musician_id)
join album using(album_id)
join track using(album_id)
where track_length = (select min(track_length) from track);

select album_name
from album 
join track using(album_id)
group by album_name
HAVING COUNT(track_name) = (SELECT COUNT(track_name) AS c
								  FROM album
									  INNER JOIN track USING(album_id)
								  GROUP BY album_name
								  ORDER BY c
								  LIMIT 1);



