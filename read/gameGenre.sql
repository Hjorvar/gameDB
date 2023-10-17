SELECT games.name AS "Game", GROUP_CONCAT(genres.name) AS "Genres"
FROM games INNER JOIN gameGenres ON games.id = gameGenres.idGame
INNER JOIN genres ON gameGenres.idGenre = genres.id
GROUP BY games.name;