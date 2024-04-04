SELECT pokemons.name AS Pokemon_Name,
trainers.trainername AS Trainer_Name,
pokemon_trainer.pokelevel AS Level,
pt.name AS Primary_Type,
st.name AS Secondary_Type
FROM pokemons
JOIN pokemon_trainer ON pokemons.id=pokemon_trainer.pokemon_id
JOIN trainers ON trainers.trainerid=pokemon_trainer.trainerid
JOIN types pt ON pt.id=pokemons.primary_type
JOIN types st ON st.id=pokemons.secondary_type
ORDER BY LEVEL DESC;