--1. What is each pokemon's primary type?
SELECT pokemons.name, types.name
FROM pokemons
JOIN types ON pokemons.primary_type=types.id;
--2. What is Rufflet's secondary type?
SELECT pokemons.name, types.name FROM pokemons
--3. What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT pokemons.name
FROM pokemons
JOIN pokemon_trainer
ON pokemon_trainer.pokemon_id=pokemons.id
WHERE pokemon_trainer.trainerID=303;
--4. How many pokemon have a secondary type Poison?
SELECT COUNT(*)
FROM pokemons
JOIN types ON types.id=pokemons.secondary_type
WHERE types.name='poison';
--5. What are all the primary types and how many pokemon have that type?
SELECT types.name, COUNT(pokemons.name)
FROM pokemons
JOIN types ON pokemons.primary_type=types.id
GROUP BY types.id;
--6. How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer)
SELECT pokemon_trainer.trainerid, COUNT(pokemon_trainer.pokelevel)
FROM pokemons
JOIN pokemon_trainer ON pokemons.id=pokemon_trainer.pokemon_id
WHERE pokemon_trainer.pokelevel >= 100
GROUP BY pokemon_trainer.trainerid;
--7. How many pokemon only belong to one trainer and no other?
SELECT COUNT(*) AS t_with_one_poke
FROM (SELECT pokemon_id, COUNT(trainerid) AS num_pokemon
FROM pokemon_trainer GROUP BY pokemon_id HAVING num_pokemon = 1)
AS t_with_one_poke;