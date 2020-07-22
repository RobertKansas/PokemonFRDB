#Pokemon weaknesses by Trainer Title
SELECT Title, TrainerName, PokemonName, Weaknesses, PokemonLevel
FROM TrainerPokemon
INNER JOIN Trainer
ON TrainerPokemon.TrainerID = Trainer.TrainerID
INNER JOIN Pokemon
ON TrainerPokemon.PokeDex = Pokemon.PokeDex
WHERE Title = 'Elite Four';

#Pokemon by Location
SELECT PokemonLocation.LocationID, PokemonLocation.PokeDex, PokemonName, LocationName
FROM PokemonLocation
INNER JOIN Pokemon
ON PokemonLocation.PokeDex = Pokemon.PokeDex
INNER JOIN Location
ON PokemonLocation.LocationID = Location.LocationID
WHERE LocationName = 'Victory Road';

#View routes in numerical order
SELECT LocationID, LocationName
FROM Location
WHERE (LocationName Like '%Route%')
ORDER BY length(LocationName), LocationName ASC;

SELECT Trainer.TrainerID, Title, TrainerName, LocationName
FROM Trainer
INNER JOIN Location
ON Trainer.LocationID = Location.LocationID
ORDER BY TrainerID ASC;

#View Trainers by Location
SELECT Trainer.TrainerID,Location.LocationID,LocationName,Title,TrainerName
FROM Trainer
INNER JOIN Location
ON Trainer.LocationID = Location.LocationID
WHERE LocationName = 'Route 20';

#View Pokemon that do not appear in the wild
SELECT Pokemon.PokeDex, PokemonName
FROM Pokemon
LEFT JOIN PokemonLocation
ON Pokemon.PokeDex = PokemonLocation.PokeDex
WHERE PokemonLocation.PokeDex is null;

#View Pokemon that are not owned by Trainers
SELECT Pokemon.PokeDex, PokemonName
FROM Pokemon
LEFT JOIN TrainerPokemon
ON Pokemon.PokeDex = TrainerPokemon.PokeDex
WHERE TrainerPokemon.PokeDex is Null;

#Pokemon that are not owned by trainers AND do not appear in the wild


#Much like the PokeDex, this query list is not complete, you can create your own queries! 
#If you are not the DB's original creator (That is me) then feel free to edit these or add your own!