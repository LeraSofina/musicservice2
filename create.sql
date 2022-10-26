create table if not exists music_genre(
	genre_id SERIAL primary key,
	genre_name VARCHAR(60) not null
);

create table if not exists musician(
	musician_id SERIAL primary key,
	musician_name VARCHAR(60) not null
);

create table if not exists GenreMusician(
	musician_id INTEGER references musician(musician_id),
	genre_id INTEGER references music_genre
);

create table if not exists album(
	album_id SERIAL primary key,
	album_name VARCHAR(60) not null,
	album_year DATE not null
);

create table if not exists track(
	track_id SERIAL primary key,
	track_name VARCHAR(60) not null,
	track_length DATE not null,
	album_id INTEGER references album(album_id)
);



create table if not exists collection(
	collection_id SERIAL primary key,
	collection_name VARCHAR(60) not null,
	collection_year DATE not null
);

create table if not exists TrackCollection(
	collection_id INTEGER references track(track_id),
	track_id INTEGER references collection(collection_id)
);

create table if not exists AlbumMusician(
	musician_id INTEGER references musician(musician_id),
	album_id INTEGER references album(album_id)
);

alter table track
drop column track_length;

alter table track
add column track_length DECIMAL;

drop table TrackCollection;

create table if not exists TrackCollection(
	track_id INTEGER references track(track_id),
	collection_id INTEGER references collection(collection_id)
);
