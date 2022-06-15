create table if not exists Genre (
id serial primary key,
genre_name varchar(60) not null
);

create table if not exists Artist (
id serial primary key,
artist_name varchar(60) not null
);

create table if not exists Album (
id serial primary key,
album_name varchar(60) not null,
released integer not null
);

create table if not exists Track (
id serial primary key,
track_album integer references Album(id),
track_name varchar(60) not null,
duration integer not null
);

create table if not exists Collection (
id serial primary key,
collection_name varchar(60) not null,
released integer not null
);

create table if not exists Genres_Artists (
genre_id integer references Genre(id),
artist_id integer references Artist(id),
constraint pk_genre_artists primary key (genre_id, artist_id)
);

create table if not exists Artists_Albums (
artist_id integer references Artist(id),
album_id integer references Album(id),
constraint pk_artists_albums primary key (artist_id, album_id)
);

create table if not exists Tracks_Collections (
track_id integer references Track(id),
collection_id integer references Collection(id),
constraint pk_tracks_collections primary key (track_id, collection_id)
);
