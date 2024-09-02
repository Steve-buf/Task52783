--База
INSERT INTO public.track (name,"time")
	VALUES ('Piece Of Me','00:03:26');	
INSERT INTO public.executor (nickname)
	VALUES ('Bullet for My Valentine');	
INSERT INTO public.album (name,"year")
	VALUES ('Piece Of Me',2018); 	
INSERT INTO public.gerne (name_gerne)
	VALUES ('Metalcore');	
INSERT INTO public.play_list (name)
	VALUES ('Favourites');	
INSERT INTO public.album (name,"year")
	VALUES ('Piece Of Me',2018);	
INSERT INTO public.track ("name","time")
	VALUES ('Туркенстанский экспресс','00:06:41');	
INSERT INTO public.album ("name","year")
	VALUES ('Оглашённые, изыдите',2001);	
INSERT INTO public.executor (nickname)
	VALUES ('Оргия праведников');	
INSERT INTO public.gerne (name_gerne)
	VALUES ('Арт-рок');	
INSERT INTO public.play_list ("name")
	VALUES ('Like');	
INSERT INTO public.track ("name","time")
	VALUES ('Друзья','00:03:37');	
INSERT INTO public.album ("name","year")
	VALUES ('Три пути',2004);	
INSERT INTO public.executor (nickname)
	VALUES ('Lumen');	
INSERT INTO public.gerne (name_gerne)
	VALUES ('Альтернативный рок');	
INSERT INTO public.play_list ("name")
	VALUES ('Memory');
INSERT INTO public.track ("name","time")
	VALUES ('Take the Money and Crawl','00:02:09');	
INSERT INTO public.album ("name","year")
	VALUES ('Father Of All Motherfuckers',2020);	
INSERT INTO public.gerne (name_gerne)
	VALUES ('Rock');	
INSERT INTO public.executor (nickname)
	VALUES ('Green Day');	
INSERT INTO public.track ("name","time")
	VALUES ('Out for Blood','00:03:36');	
INSERT INTO public.gerne (name_gerne)
	VALUES ('Рок');	
INSERT INTO public.play_list ("name")
	VALUES ('Happy');	
INSERT INTO public.album ("name","year")
	VALUES ('Order In Decline',2019);	
INSERT INTO public.executor (nickname,realname)
	VALUES ('Sum 41');	
INSERT INTO public.play_list ("name")
	VALUES ('Рок');	
INSERT INTO public.track ("name","time")
	VALUES ('It''s My Life','00:03:43');	
INSERT INTO public.album ("name","year")
	VALUES ('Crush',2000);	
INSERT INTO public.executor (nickname)
	VALUES ('Bon Jovi');	

-- Таблицы связей
-- Жанр/Исполнитель
INSERT INTO public.gerne_executor (id_executor,id_gerne)
	VALUES (6,4);
INSERT INTO public.gerne_executor (id_executor,id_gerne)
	VALUES (5,5);
INSERT INTO public.gerne_executor (id_executor,id_gerne)
	VALUES (4,4);
INSERT INTO public.gerne_executor (id_executor,id_gerne)
	VALUES (3,3);
INSERT INTO public.gerne_executor (id_executor,id_gerne)
	VALUES (2,2);
INSERT INTO public.gerne_executor (id_executor,id_gerne)
	VALUES (1,1);

-- Плейлисты/треки
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (2,3);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (3,3);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (4,3);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (5,3);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (6,3);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (7,3);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (1,1);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (5,2);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (6,5);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (4,5);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (5,4);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (2,1);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (1,3);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (3,2);

-- Альбом/Исполнитель
INSERT INTO public.album_executor (id_executor,id_album)
	VALUES (1,1);
INSERT INTO public.album_executor (id_executor,id_album)
	VALUES (2,2);
INSERT INTO public.album_executor (id_executor,id_album)
	VALUES (3,3);
INSERT INTO public.album_executor (id_executor,id_album)
	VALUES (4,4);
INSERT INTO public.album_executor (id_executor,id_album)
	VALUES (5,5);
INSERT INTO public.album_executor (id_executor,id_album)
	VALUES (6,6);

-- Альбом/Трек
INSERT INTO public.album_track (id_album,id_track)
	VALUES (1,1);
INSERT INTO public.album_track (id_album,id_track)
	VALUES (2,2);
INSERT INTO public.album_track (id_album,id_track)
	VALUES (3,3);
INSERT INTO public.album_track (id_album,id_track)
	VALUES (4,4);
INSERT INTO public.album_track (id_album,id_track)
	VALUES (5,5);
INSERT INTO public.album_track (id_album,id_track)
	VALUES (6,6);
INSERT INTO public.album_track (id_album,id_track)
	VALUES (3,7);


	