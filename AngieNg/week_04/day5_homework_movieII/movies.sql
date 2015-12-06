CREATE TABLE movies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  imdbID VARCHAR,  
  title TEXT,
  poster TEXT
);

INSERT INTO movies (imdbID, title, poster) VALUES ('tt0073195', 'Jaws', 'http://ia.media-imdb.com/images/M/MV5BNDcxODkyMjY4MF5BMl5BanBnXkFtZTgwOTk5NTc5MDE@._V1_SX300.jpg');