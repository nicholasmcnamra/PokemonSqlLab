--1. What are all the types of pokemon that a pokemon can have?
SELECT name from types;
--2. What is the name of the pokemon with id 45?
SELECT name FROM pokemons WHERE Id = 45;
--3. How many pokemon are there?
SELECT COUNT(*) FROM pokemons;
--4. How many types are there?
SELECT COUNT(*) FROM types;
--5. How many pokemon have a secondary type?
SELECT COUNT(*) FROM pokemons WHERE secondary_type IS NOT NULL;