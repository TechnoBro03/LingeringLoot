# Do nothing at first install (player will have no score)
execute unless score @s lingering_loot.despawnTime matches -2147483648..2147483647 run scoreboard players set @s lingering_loot.despawnTime -2147483648

# Enables /trigger commands for OPs
scoreboard players enable @s lingering_loot.despawnTime
scoreboard players enable @s lingering_loot.invItems

# Sets despawn time
execute if score @s lingering_loot.despawnTime matches -2147483647.. run function lingering_loot:internal/change_despawn_time

# Sets invulnerability
execute unless score @s lingering_loot.invItems matches 0 run function lingering_loot:internal/change_invulnerability