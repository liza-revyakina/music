CREATE TABLE IF NOT EXISTS genre (
    id SERIAL PRIMARY KEY,
    title VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS artist (
    id SERIAL PRIMARY KEY,
    nickname VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS album (
    id SERIAL PRIMARY KEY,
    title VARCHAR(60) NOT NULL,
    album_year INTEGER CHECK (album_year > 1900 AND album_year < 2030)
);

CREATE TABLE IF NOT EXISTS song (
    id SERIAL PRIMARY KEY,
    song_name VARCHAR(60) NOT NULL,
    song_year INTEGER CHECK (song_year > 1900 AND song_year < 2030),
    album_id INTEGER NOT NULL REFERENCES album(id)
);

CREATE TABLE IF NOT EXISTS album_artist (
    album_id INTEGER REFERENCES album(id) ON DELETE CASCADE,
    artist_id INTEGER REFERENCES artist(id),
    CONSTRAINT album_artist_pk PRIMARY KEY(album_id, artist_id)
);

CREATE TABLE IF NOT EXISTS mixtape (
    id SERIAL PRIMARY KEY,
    mixtape_name VARCHAR(60),
    mixtape_year INTEGER CHECK (mixtape_year > 1900 AND mixtape_year < 2030)
);

CREATE TABLE IF NOT EXISTS song_mixtape (
    song_id INTEGER REFERENCES song(id),
    mixtape_id INTEGER REFERENCES mixtape(id),
    CONSTRAINT song_mixtape_pk PRIMARY KEY(song_id, mixtape_id)
);

CREATE TABLE IF NOT EXISTS genre_artist (
    genre_id INTEGER REFERENCES genre(id),
    artist_id INTEGER REFERENCES artist(id),
    CONSTRAINT genre_artist_pk PRIMARY KEY(genre_id, artist_id)
);
