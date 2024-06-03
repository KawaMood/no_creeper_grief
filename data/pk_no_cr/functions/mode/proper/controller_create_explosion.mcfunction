#> pk_no_cr:mode/proper/controller_create_explosion

# Summon the bomb creeper
summon creeper ~ ~-1.8 ~ {ignited:true,Fuse:0s,Tags:["pk.no_cr.ignore","pk.current.creeper"],Silent:1b}

# A powered creeper is represented by luck's effect being ambient
execute if entity @s[tag=pk.no_cr.powered] run data modify entity @e[type=creeper,tag=pk.current.creeper,distance=..2,limit=1] powered set value 1b
tag @e[type=creeper,tag=pk.current.creeper,distance=..2,limit=1] remove pk.current.creeper

# Store and change mobGriefing
execute unless score $gamerule.mob_griefing.saved pk.value matches 1 store success score $gamerule.mob_griefing.previous_value pk.value run gamerule mobGriefing false
scoreboard players set $gamerule.mob_griefing.saved pk.value 1
schedule function pk_no_cr:mode/proper/restore_gamerule 2t replace