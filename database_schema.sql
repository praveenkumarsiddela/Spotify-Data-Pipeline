-- Table for storing track details
CREATE TABLE spotify_tracks (
    track_id VARCHAR(255) PRIMARY KEY,
    track_name VARCHAR(255) NOT NULL,
    album_id VARCHAR(255),
    duration_ms INT,
    popularity INT,
    FOREIGN KEY (album_id) REFERENCES spotify_albums(album_id)
);

-- Table for storing artist details
CREATE TABLE spotify_artists (
    artist_id VARCHAR(255) PRIMARY KEY,
    artist_name VARCHAR(255) NOT NULL,
    followers INT,
    genres TEXT
);

-- Table for storing album details
CREATE TABLE spotify_albums (
    album_id VARCHAR(255) PRIMARY KEY,
    album_name VARCHAR(255) NOT NULL,
    release_date DATE,
    artist_id VARCHAR(255),
    FOREIGN KEY (artist_id) REFERENCES spotify_artists(artist_id)
);

-- Table to associate tracks with genres
CREATE TABLE track_genres (
    track_id VARCHAR(255),
    genre VARCHAR(255),
    PRIMARY KEY (track_id, genre),
    FOREIGN KEY (track_id) REFERENCES spotify_tracks(track_id)
);

-- Table to associate albums with artists
CREATE TABLE album_artists (
    album_id VARCHAR(255),
    artist_id VARCHAR(255),
    PRIMARY KEY (album_id, artist_id),
    FOREIGN KEY (album_id) REFERENCES spotify_albums(album_id),
    FOREIGN KEY (artist_id) REFERENCES spotify_artists(artist_id)
);
