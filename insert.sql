insert into musician(musician_id, musician_name)
values
(1, 'Би-2'),
(2, 'The Beatles'),
(3, 'Зиверт'),
(4, 'Луи Армстронг'),
(5, 'Queen'),
(6, 'Анна Нетребко'),
(7, 'Михаил Круг'),
(8, 'Михаил Шуфутинский');

insert into music_genre(genre_name)
values
('Рок'),
('Опера'),
('Поп'),
('Джаз'),
('Шансон');

insert into album(album_name, album_year)
values
('Иномарки', '2004-01-01'),
('Yellow Submarine', '1969-01-01'),
('Сияй', '2018-01-01'),
('Классика джаза', '1944-01-01'),
('A kind of magic', '1986-01-01'),
('Глинка', '1997-01-01'),
('Тверские улицы', '989-01-01'),
('Love Story', '2013-01-01');


insert into track(track_id, track_name, track_length, album_id)
values
(1, 'Скользкие улицы', 3.50, 1),
(2, 'Варвара', 2.50, 1),
(3, 'Полковнику никто не пишет', 1.45, 1),
(4, 'Лайки', 1.05, 1),
(5, 'All my loving', 3.59, 2),
(6, 'All you need is love', 3.53, 2),
(7, 'Life', 1.50, 3),
(8, 'Анестезия', 3.06, 3),
(9, 'Джаз', 3.51, 4),
(10, 'Show must go on', 2.01, 5),
(11, 'I want to break free', 4.50, 5),
(12, 'Руслан и Людмила', 1.14, 6),
(13, 'Владимирский централ', 2.41, 7),
(14, 'Все сбудется', 3.00, 7),
(15, '3 сентября', 3.14, 8);

insert into track(track_id, track_name, track_length, album_id)
values(18, 'Ля-ля-тополя', 3.22, 1)

insert into collection(collection_name, collection_year)
values
('Песни из фильма Брат-2', '2003-01-01'),
('A collection of Beatles oldies', '1966-12-09'),
('Remix Collection', '2019-01-01'),
('The best', '1998-01-01'),
('Greatest Hits', '1981-01-01'),
('Diva', '2018-01-01'),
('Шансон 90-х', '2022-01-01'),
('Лучшие песни', '2022-04-13');

insert into albummusician(musician_id, album_id)
values
(1, 1),
(2, 2),
(3, 3), 
(4, 4),
(5, 5),
(6, 6), 
(7, 7), 
(8, 8);

insert into genremusician 
values
(1, 1),
(2, 1), 
(3, 3),
(4, 4),
(5, 1),
(6, 2),
(7, 5),
(8, 5); 

insert into genremusician 
values(5, 3);

insert into trackcollection
values
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(7, 3),
(8, 3),
(9, 4),
(10, 5),
(11, 5),
(12, 6),
(13, 7),
(14, 7),
(15, 8);
