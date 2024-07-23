-- Задание 1
SELECT song_name, duration FROM song
WHERE duration = (SELECT max(duration) FROM song);

SELECT song_name FROM song
WHERE duration >= '00:03:30';

SELECT mixtape_name FROM mixtape
WHERE mixtape_year BETWEEN 2018 AND 2020;

SELECT nickname FROM artist
WHERE nickname NOT LIKE '% %';

SELECT song_name FROM song
WHERE song_name LIKE '%My%' OR song_name LIKE '%Мой%';


-- Задание 2
SELECT genre_id, count(artist_id) FROM genre_artist ga
GROUP BY ga.genre_id
ORDER BY ga.genre_id; 

SELECT count(song_name) FROM song s 
JOIN album a ON s.album_id = a.id 
WHERE a.album_year BETWEEN 2019 AND 2020;

SELECT avg(duration) FROM song s 
JOIN album a ON s.album_id = a.id
GROUP BY a.title
ORDER BY avg(a.id);

SELECT nickname FROM artist a 
JOIN album_artist aa ON a.id = aa.artist_id 
JOIN album a2 ON aa.album_id = a2.id 
WHERE a2.album_year != 2020;

SELECT mixtape_name FROM mixtape m 
JOIN song_mixtape sm ON m.id = sm.mixtape_id 
JOIN song s ON sm.song_id = s.id 
JOIN album a ON s.album_id = a.id 
JOIN album_artist aa ON a.id = aa.album_id 
JOIN artist a2 ON aa.artist_id = a2.id 
WHERE a2.nickname = 'Blur';