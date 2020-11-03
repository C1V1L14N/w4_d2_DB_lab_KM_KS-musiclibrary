
DROP TABLE lightsabers;
DROP TABLE characters;

CREATE TABLE characters(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    darkside BOOLEAN,
    age INT
);

CREATE TABLE lightsabers (
    id SERIAL PRIMARY KEY,
    hilt_metal VARCHAR(255) NOT NULL,
    colour VARCHAR(255) NOT  NULL,
    character_id INT REFERENCES characters(id)
);

-- CREATE

INSERT INTO characters (name, darkside, age) VALUES ('Obi-Wan Kenobi', false, 27);

INSERT INTO characters (name, darkside, age) VALUES ('Anakin Skywalker', false, 19);

INSERT INTO characters (name, darkside, age) VALUES ('Darth Maul', true, 32);

INSERT INTO characters (name, darkside) VALUES ('Yoda', false);

-- READ

-- SELECT name , age FROM characters;

-- SELECT * FROM characters WHERE darkside = false;

-- UPDATE

-- - Add a new character Luke Skywalker with age 17 and darkside set to false. 
-- - Update Obi-Wan Kenobi to be age 65

UPDATE characters SET (name, darkside) = ('Darth Vader', true) WHERE name = 'Anakin Skywalker';

INSERT INTO characters (name, darkside, age) VALUES ('Luke Skywalker', false, 17);

UPDATE characters SET age = 65 WHERE name = 'Obi-Wan Kenobi';

-- DELETE

DELETE FROM characters WHERE name = 'Darth Maul';

-- ID's

INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);

UPDATE characters SET age = 26 WHERE id = 9;

-- Lightsabers Table

INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('green', 'palladium', 1);
INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('red', 'gold', 2);
INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('tropical magenta', 'vibranium', 2);

-- UPDATE lightsabers SET ID = 1;



SELECT * FROM characters;
SELECT * FROM lightsabers;
SELECT * FROM lightsabers WHERE character_id = 2;