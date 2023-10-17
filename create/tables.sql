CREATE TABLE games (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  description TEXT
);

CREATE TABLE characters (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
);

CREATE TABLE gameCharacters (
  idGame INTEGER,
  idCharacter INTEGER,
  FOREIGN KEY(idGame) REFERENCES games(id),
  FOREIGN KEY(idCharacter) REFERENCES characters(id)
);

CREATE TABLE genres (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
);

CREATE TABLE gameGenres (
  idGame INTEGER,
  idGenre INTEGER,
  FOREIGN KEY(idGame) REFERENCES games(id),
  FOREIGN KEY(idGenre) REFERENCES genres(id)
);

