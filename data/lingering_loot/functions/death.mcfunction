# Sets age to new value (default - custom)
scoreboard players operation .age despawnTime = .default despawnTime
scoreboard players operation .age despawnTime -= .custom despawnTime
execute as @e[type=item,distance=..10] store result entity @s Age short 1 run scoreboard players get .age despawnTime

# Sets invulnerability
execute as @e[type=item,distance=..10] store result entity @s Invulnerable byte 1 run scoreboard players get .invItems invItems

# Resets player deaths
scoreboard players set @s deaths 0