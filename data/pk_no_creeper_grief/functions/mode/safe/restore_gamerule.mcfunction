#> pk_no_creeper_grief:mode/safe/restore_gamerule

execute if score $pk.gamerule.mob_griefing.previous_value pk.value matches 1 run gamerule mobGriefing true
scoreboard players set $pk.gamerule.mob_griefing.saved pk.value 0