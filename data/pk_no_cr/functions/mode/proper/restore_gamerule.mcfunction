#> pk_no_cr:mode/proper/restore_gamerule

execute if score $gamerule.mob_griefing.previous_value pk.value matches 1 run gamerule mobGriefing true
scoreboard players set $gamerule.mob_griefing.saved pk.value 0