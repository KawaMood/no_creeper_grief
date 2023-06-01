#> pk_no_creeper_grief:cmd/settings/mode/safe

# Logs
execute unless score $pk.no_cr.settings.mode pk.value matches 1 run tellraw @s [{"text": "Mode","color": "light_purple"},{"text": " is already set on ","color": "red"},{"text": "Safe","color": "light_purple"}]
execute if score $pk.no_cr.settings.mode pk.value matches 1 run tellraw @s [{"text": "Mode","color": "light_purple"},{"text": " has been changed to ","color": "yellow"},{"text": "Safe","color": "light_purple"}]

# Redefine score
scoreboard players set $pk.no_cr.settings.mode pk.value 0