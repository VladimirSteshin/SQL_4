select album_name, released from album
where released = 2018;

select track_name, round(duration::decimal / 60, 2) from track
order by duration desc
limit 1;

select track_name, round(duration::decimal / 60, 2) from track
where round(duration::decimal / 60, 2) >= 3.5;

select collection_name from collection
where released between 2018 and 2020;

select artist_name from artist
where artist_name not like '% %';

select track_name from track
where lower(track_name) like '%my%' or track_name like '%мой%';

select genre_name, count(*) from genre g
join genres_artists ga on g.id = ga.genre_id
group by genre_name
order by count(*) desc;

select count(*) from track t
join album a on t.track_album = a.id
where released between 2018 and 2020;

select album_name, round(avg(duration::decimal), 1) from track t
join album a on t.track_album = a.id
group by album_name;

select artist_name from artist a
join artists_albums aa on a.id = aa.artist_id
join album al on aa.album_id = al.id
where released != 2020;

select collection_name from collection c
join tracks_collections tc on c.id = tc.collection_id
join track t on tc.track_id = t.id
join album a on t.track_album = a.id
join artists_albums aa on a.id = aa.album_id
join artist ar on aa.artist_id = ar.id
where artist_name = 'Rammstein'
group by collection_name


select album_name from album a
join artists_albums aa on a.id = aa.album_id
join artist ar on aa.artist_id = ar.id
join genres_artists ga on ar.id = ga.artist_id
join genre g on ga.genre_id = g.id
group by album_name
having count(genre_name) > 1;

select track_name from track t 
left join tracks_collections tc on t.id = tc.track_id 
left join collection c on tc.collection_id = c.id
where collection_name is null;

select artist_name from artist a
join artists_albums aa on a.id = aa.artist_id
join album al on aa.album_id = al.id
join track t on al.id = t.track_album
where duration = (select min(duration) from track);
