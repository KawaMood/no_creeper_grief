#> pk_no_creeper_grief:mode/proper/controller_check

# If the controller doesn't have a creeper as vehicle anymore
execute if entity @s[predicate=!pk_no_creeper_grief:vehicle/creeper] run function pk_no_creeper_grief:mode/proper/controller_free

# If the creeper vehicle has been killed
tag @s add pk.temp.current.controller
execute on vehicle if entity @s[nbt={Health:0f}] run kill @e[type=marker,tag=pk.temp.current.controller,distance=..0.1,limit=1]
tag @s remove pk.temp.current.controller