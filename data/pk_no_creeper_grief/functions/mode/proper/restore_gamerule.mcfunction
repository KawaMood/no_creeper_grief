#> pk_no_creeper_grief:mode/proper/restore_gamerule

execute if score $pk.no_cr.mob_griefing.previous_value pk.value matches 1 run gamerule mobGriefing true
scoreboard players set $pk.no_cr.mob_griefing.saved pk.value 0