#> pk_no_creeper_grief:base/tick
# Main tick

execute if score $pk.no_cr.settings.mode pk.value matches 1 run function pk_no_creeper_grief:mode/proper/tick
execute unless score $pk.no_cr.settings.mode pk.value matches 1 run function pk_no_creeper_grief:mode/safe/tick
