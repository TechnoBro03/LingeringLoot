# Enables /trigger commands for OPs
scoreboard players enable @s lingering_loot.despawnTime
scoreboard players enable @s lingering_loot.invItems

# Sets despawn time
execute if score @s lingering_loot.despawnTime matches 1.. run function lingering_loot:internal/change_despawn_time

# Sets invulnerability
execute if score @s lingering_loot.invItems matches 1.. run function lingering_loot:internal/change_invulnerability