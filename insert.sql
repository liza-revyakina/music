INSERT INTO artist (nickname)
VALUES ('Blur');

INSERT INTO artist (nickname)
VALUES ('The Beatles');

INSERT INTO artist (nickname)
VALUES ('Taylor Swift');

INSERT INTO artist (nickname)
VALUES ('Eminem');

INSERT INTO genre (title)
VALUES ('Brit-pop');

INSERT INTO genre (title)
VALUES ('Rock');

INSERT INTO genre (title)
VALUES ('Pop');

INSERT INTO genre (title)
VALUES ('Hip-hop');

INSERT INTO album (title, album_year)
VALUES ('Parklife', '1994');

INSERT INTO album (title, album_year)
VALUES ('Revolver', '1996');

INSERT INTO album (title, album_year)
VALUES ('Lover', '2019');

INSERT INTO album (title, album_year)
VALUES ('Relapse', '2009');

INSERT INTO album_artist (album_id, artist_id)
VALUES (1, 1);

INSERT INTO album_artist (album_id, artist_id)
VALUES (2, 2);

INSERT INTO album_artist (album_id, artist_id)
VALUES (3, 3);

INSERT INTO album_artist (album_id, artist_id)
VALUES (4, 4);

INSERT INTO genre_artist (genre_id, artist_id)
VALUES (1, 1);

INSERT INTO genre_artist (genre_id, artist_id)
VALUES (2, 2);

INSERT INTO genre_artist (genre_id, artist_id)
VALUES (3, 3);

INSERT INTO genre_artist (genre_id, artist_id)
VALUES (4, 4);

INSERT INTO mixtape (mixtape_name, mixtape_year)
VALUES ('Blur: The Best Of', 2000);

INSERT INTO mixtape (mixtape_name, mixtape_year)
VALUES ('20 Greatest Hits', 1982);

INSERT INTO mixtape (mixtape_name, mixtape_year)
VALUES ('The More Lover Chapter', 2023);

INSERT INTO mixtape (mixtape_name, mixtape_year)
VALUES ('The Vinyl LPs', 2015);

INSERT INTO song (song_name, song_year, album_id)
VALUES ('End of a Century', 1994, 1);

INSERT INTO song (song_name, song_year, album_id)
VALUES ('Eleanor Rigby', 1966, 2);

INSERT INTO song (song_name, song_year, album_id)
VALUES ('The Archer', 2019, 3);

INSERT INTO song (song_name, song_year, album_id)
VALUES ('Beautiful', 2009, 4);

INSERT INTO song (song_name, song_year, album_id)
VALUES ('Girls & Boys', 1994, 1);

INSERT INTO song (song_name, song_year, album_id)
VALUES ('Love You To', 1966, 2);

INSERT INTO song_mixtape (song_id, mixtape_id)
VALUES (1, 1);

INSERT INTO song_mixtape (song_id, mixtape_id)
VALUES (2, 2);

INSERT INTO song_mixtape (song_id, mixtape_id)
VALUES (3, 3);

INSERT INTO song_mixtape (song_id, mixtape_id)
VALUES (4, 4);