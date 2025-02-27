## QUESTION 1
require 'pry'
pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]
# How would you get the url for Bulbasaur's ability?
puts pokemon[0][:abilities][0][:ability][:url]
# How would you return the first pokemon with base experience over 40?
answer = pokemon.find do |poke|
    poke[:base_experience] > 40
end
puts answer
# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
over_forty = pokemon.filter do |poke|
    poke[:base_experience] > 40
end
puts over_forty
# How would you return an array of all of the pokemon's names?
pokemon_names = pokemon.map do |poke|
    poke[:name]
end
puts pokemon_names
# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
#  whatever method you use should return true if there are any such pokemon, false if not.
over_sixty = pokemon.any? do |poke|
    poke[:weight] > 60
end
puts over_sixty
over_60 = pokemon.map do |poke|
    if poke[:weight] >= 60
        poke
   end
end
puts over_60