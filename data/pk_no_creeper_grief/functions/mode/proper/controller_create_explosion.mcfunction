#> pk_no_creeper_grief:mode/proper/controller_create_explosion

# Summon the bomb creeper
summon creeper ~ ~ ~ {ignited:true,Fuse:0s,Tags:["pk.no_cr.ignore","pk.temp.current.creeper"],Silent:1b}

# A powered creeper is represented by luck's effect being ambient
execute if entity @s[tag=pk.no_cr.powered] run data modify entity @e[type=creeper,tag=pk.temp.current.creeper,distance=..0.1,limit=1] powered set value 1b
tag @e[type=creeper,tag=pk.temp.current.creeper,distance=..0.1,limit=1] remove pk.temp.current.creeper

# Store and change mobGriefing
execute if score $pk.no_cr.mob_griefing.saved pk.value matches 0 store success score $pk.no_cr.mob_griefing.previous_value pk.value run gamerule mobGriefing false
scoreboard players set $pk.no_cr.mob_griefing.saved pk.value 1
schedule function pk_no_creeper_grief:mode/proper/restore_gamerule 2t replace