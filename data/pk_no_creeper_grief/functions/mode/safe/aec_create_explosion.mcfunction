#> pk_no_creeper_grief:mode/safe/aec_create_explosion

# Summon the bomb creeper
summon creeper ~ ~ ~ {ignited:true,Fuse:0s,Tags:["pk.no_cr.ignore","pk.temp.current.creeper"],Silent:1b}

# A powered creeper is represented by luck's effect being ambient
data modify entity @e[type=creeper,tag=pk.temp.current.creeper,distance=..0.1,limit=1] powered set from entity @s Effects[{Id:26}].Ambient
tag @e[type=creeper,tag=pk.temp.current.creeper,distance=..0.1,limit=1] remove pk.temp.current.creeper

# Clean AEC
data remove entity @s Effects[{Id:26,Amplifier:17b}]
execute unless data entity @s Effects[{}] run kill @s

# Store and change mobGriefing
execute unless score $pk.gamerule.mob_griefing.saved pk.value matches 1 store success score $pk.gamerule.mob_griefing.previous_value pk.value run gamerule mobGriefing false
scoreboard players set $pk.gamerule.mob_griefing.saved pk.value 1
schedule function pk_no_creeper_grief:mode/safe/restore_gamerule 2t replace