create table if not exists Genre(
	id SERIAL primary key,
	name VARCHAR(50) not null unique
);

create table if not exists Genre_singer(
	id_genre INTEGER references Genre(id),
	id_singer INTEGER references Singer(id),
	constraint pk1 primary key (id_genre, id_singer) 
);

create table if not exists Singer(
	id SERIAL primary key,
	nickname VARCHAR(100) not null unique
);

create table if not exists Album(
	id SERIAL primary key,
	album_title VARCHAR(100) not null,
	release_year INTEGER not null CHECK(release_year > 0)
);

create table if not exists Album_singer(
	id_album INTEGER references Album(id),
	id_singer INTEGER references Singer(id),
	constraint pk1 primary key (id_album, id_singer) 
);

create table if not exists Track(
	id SERIAL primary key,
	id_album INTEGER references Album(id),
	track_name VARCHAR(100) not null,
	duration NUMERIC not null CHECK(duration > 0)
);

create table if not exists Collection(
  id serial primary key,  
  name_collection varchar(50) not null,
  release_year integer not null CHECK(release_year > 0)
);

create table if not exists Track_collection(
	id_collection INTEGER references Collection(id),
	id_track INTEGER references Track(id),
	constraint pk3 primary key (id_collectiond, id_track)
);