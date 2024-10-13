-- (1) Название и продолжительность самого длительного трека.
SELECT time, name FROM track 
WHERE time IN (SELECT MAX(time) FROM track)
LIMIT 1;

SELECT time, name FROM track
	ORDER BY time DESC
	LIMIT 1;

-- (2) Название треков, продолжительность которых не менее 3,5 минут.
select time, name
from public.track
where time>='00:03:30';

-- (3) Названия сборников, вышедших в период с 2018 по 2020 годы включительно.
select "name"
from public.album
where "year">='2018-01-01' and "year"<='2020-12-31' ;

-- (4) Исполнители, чьё имя состоит из одного слова.
select distinct nickname
from public.executor
where nickname not like '% %';

-- (5) Название треков, которые содержат слова «мой» или «my».
select "name"
from public.track
where "name" like '%my%' or  "name" like '%мой%' or "name" like '%My%'; 

-- (6) Количество исполнителей в каждом жанре.
SELECT name_gerne, count(id) FROM public.gerne
LEFT JOIN public.gerne_executor  ON id = id_gerne
GROUP BY name_gerne ;

-- (7) Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT count(track.id) FROM public.track
JOIN public.album_track ON album_track.id_track = id
JOIN public.album on public.album.id = public.album_track.id_album
WHERE public.album.year >= '2019-01-01' and public.album.year <='2020-12-31';


-- (8) Средняя продолжительность треков по каждому альбому.
SELECT album."name" , avg(time) t FROM album
JOIN public.album_track  ON id_album = album.id 
join public.track on album_track.id_track = track.id 
GROUP BY album."name"
ORDER BY t ;

-- (9) Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT DISTINCT nickname FROM public.executor
WHERE nickname NOT IN (SELECT DISTINCT nickname FROM public.executor
LEFT JOIN executor ON public.executor.id = id_executor
LEFT JOIN album ON public.album.id = id_album
WHERE release_year=2020)
ORDER BY nickname;



SELECT nickname FROM (
SELECT public.album FROM album.year WHERE year != 2020
JOIN album_executor ON public.album.id = id_album
WHERE id_executor = public.executor.id ) 

-- (10) Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
select public.play_list."name"  from  public.play_list
join public.track_list on id_playlist=id 
join public.track on public.track.id = id_track
join public.album_track on public.album_track.id_track = public.track.id
join public.album on public.album.id = public.album_track.id_album 
join public.album_executor on public.album_executor.id_album = public.album.id
join public.executor on public.executor.id = public.album_executor.id_executor 
where public.executor.nickname = 'Bullet for My Valentine' 
