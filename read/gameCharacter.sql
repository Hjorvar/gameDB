SELECT games.name AS "Game", characters.name AS "Character"
FROM games INNER JOIN gameCharacters
ON games.id = gameCharacters.idGame
INNER JOIN characters
ON gameCharacters.idCharacter = characters.id;