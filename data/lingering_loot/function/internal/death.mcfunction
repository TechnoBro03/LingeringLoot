# Sets item age (if no age is set, MC will default to 0, resulting in the correct 6000 tick despawn time)
execute as @e[type=item,distance=..10] store result entity @s Age short 1 run scoreboard players get .age lingering_loot.despawnTime

# Sets invulnerability
execute as @e[type=item,distance=..10] run data merge entity @s {Invulnerable:0}
execute if score .invItems lingering_loot.invItems matches 1 as @e[type=item,distance=..10] run data merge entity @s {Invulnerable:1}
execute if score .invItems lingering_loot.invItems matches 1 as @e[type=item,distance=..10] run data merge entity @s {Health:32767s}

# Resets player deaths
scoreboard players set @s lingering_loot.deaths 0