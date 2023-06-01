#> pk_no_creeper_grief:mode/proper/creeper_pacify

# Initialize creeper
tag @s add pk.no_cr.pacified
data modify entity @s ExplosionRadius set value 0b

# Summon controller
summon marker ~ ~ ~ {Tags:["pk.no_cr.controller","pk.temp.current.marker"]}
ride @e[type=marker,tag=pk.temp.current.marker,distance=..0.1,limit=1] mount @s
tag @e[type=marker,tag=pk.temp.current.marker,distance=..2,limit=1] remove pk.temp.current.marker