Create Database PokemonKantoDB;

Use PokemonKantoDB;

CREATE TABLE Location(
LocationID int NOT NULL AUTO_INCREMENT,
LocationName varchar(50) NOT NULL,
EnvironmentType varchar(50) NOT NULL,
Primary Key (LocationID)
);

#This table is incomplete, there are still Pokemon yet to be identified

Create Table Pokemon(
PokeDex int NOT NULL,
PokemonName varchar(50) NOT NULL,
PokemonType varchar(100) NOT NULL,
Weaknesses varchar(100) NOT NULL,
PokemonDescription varchar(200) NULL,
PRIMARY KEY (PokeDex)
);

Create Table Trainer(
TrainerID int NOT NULL AUTO_INCREMENT,
Title varchar(50) NOT NULL,
TrainerName varchar(50) NOT NULL,
LocationID int NOT NULL,
FOREIGN KEY (LocationID)
REFERENCES Location(LocationID),
Primary Key (TrainerID)
);

CREATE TABLE TrainerPokemon(
TrainerPokemonNum int NOT NULL AUTO_INCREMENT,
PokeDex int NOT NULL,
TrainerID INT NOT NULL,
PokemonLevel INT NOT NULL,
FOREIGN KEY FKTrainer(TrainerID)
REFERENCES Trainer(TrainerID),
FOREIGN KEY FKPokeDex(PokeDex)
REFERENCES Pokemon(PokeDex),
PRIMARY KEY (TrainerPokemonNum)
);

CREATE TABLE Gym(
GymNum int NOT NULL AUTO_INCREMENT,
GymType varchar(50) NULL,
GymBadge varchar(50) NULL,
LocationID int NOT NULL,
TrainerID int NOT NULL,
FOREIGN KEY FKLocation(LocationID)
REFERENCES Location(LocationID),
FOREIGN KEY FKTrainer(TrainerID)
REFERENCES Trainer(TrainerID),
Primary Key (GymNum)
);

CREATE TABLE PokemonLocation(
PokemonLocationNum int NOT NULL auto_increment,
PokeDex int not null,
LocationID int not null,
FOREIGN KEY FKLocation(LocationID)
REFERENCES Location(LocationID),
FOREIGN KEY FKPokeDex(PokeDex)
REFERENCES Pokemon(PokeDex),
Primary Key (PokemonLocationNum)
);