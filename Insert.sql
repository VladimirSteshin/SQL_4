insert into genre (genre_name)
values ('Rock'), ('Rap'), ('Classic'), ('Pop'), ('Jazz');

insert into artist (artist_name)
values ('Rammstein'), ('Eminem'), ('Madonna'), ('Tchaikovsky'), ('Sinatra'), ('Limp Bizkit'), ('Green Day'), ('Apocalyptica');

insert into album (album_name, released)
values ('Mutter', 2001), ('Marshall Mathers LP', 1998), ('American life', 2003), ('The Nutcracker', 1844), ('Thats life', 1966),
('Chocolate, Starfish and the Hot Dog flavoured water', 2001), ('American Idiot', 2003), ('Apocalyptica', 2018);

insert into track (track_album, track_name, duration)
values (1, 'Sonne', 300), (1, 'Ich will', 150), (1, 'Nebel', 230), (2, 'Stan', 290), (2, 'I am', 300), (3, 'Frozen', 300), (3, 'American life', 270),
(3, 'Vogue', 320), (4, 'PaDeDe', 550), (4, 'Tanets Kitayskih kukol', 300), (5, 'Wonderful world', 290), (6, 'My way', 300), (6, 'Hot Dog', 190), 
(6, 'Take a look around', 220), (7, 'Boulevard of broken dreams', 240), (7, 'American idiot', 180), (8, 'Conkka', 300), (8, 'No education', 320), 
(8, 'Life burns', 150);

insert into collection(collection_name, released)
values ('Best Rock', 2020), ('Different classic', 2018), ('Rap legends', 2003), ('Pop icon', 2007), ('Classic & Jazz', 2022),
('World mix', 2006), ('Rock vs Rap', 2004), ('American millenium', 2003);

insert into artists_albums (artist_id, album_id)
values (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8);

insert into genres_artists (genre_id, artist_id)
values (1, 1), (2, 2), (4, 3), (3, 4), (3, 5), (5, 5), (1, 6), (2, 6), (1, 7), (4, 7), (1, 8), (3, 8);

insert into tracks_collections (track_id, collection_id)
values (1, 1), (1, 6), (1, 7), (4, 3), (4, 4), (4, 6), (4, 8), (5, 3), (5, 7), (6, 4), (6, 6), (6, 8), (9, 2), (10, 2), (10, 5),
(11, 5), (12, 1), (12, 6), (12, 7), (13, 3), (13, 6), (14, 1), (15, 8), (17, 1), (17, 5);

--delete from artists_albums;
--delete from genres_artists;
--delete from tracks_collections;
--delete from track;
--delete from album;
--delete from artist;
--delete from collection;
--delete from genre;
--
--ALTER SEQUENCE collection_id_seq RESTART WITH 1;
--ALTER SEQUENCE track_id_seq RESTART WITH 1;
--ALTER SEQUENCE genre_id_seq RESTART WITH 1;
--ALTER SEQUENCE artist_id_seq RESTART WITH 1;
--ALTER SEQUENCE album_id_seq RESTART WITH 1;
