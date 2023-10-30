#> pk_no_creeper_grief:mode/safe/aec_check

tag @s add pk.no_cr.checked
execute if entity @s[tag=!pk.no_cr.ignore,nbt={effects:[{id:"minecraft:luck",amplifier:17b}]}] run function pk_no_creeper_grief:mode/safe/aec_create_explosion