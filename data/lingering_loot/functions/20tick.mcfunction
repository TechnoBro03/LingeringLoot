# Runs every 20 ticks (1 second)

# Enables /trigger commands for OPs
scoreboard players enable @a[tag=OP] despawnTime
scoreboard players enable @a[tag=OP] invItems

# Sets despawn time
execute as @a[tag=OP,scores={despawnTime=1..}] run scoreboard players operation .custom despawnTime = @s despawnTime
scoreboard players set @a despawnTime 0

# Sets invulnerability
execute as @a[tag=OP,scores={invItems=0..}] run scoreboard players operation .invItems invItems = @s invItems
scoreboard players set @a invItems -1

# Call itself
schedule function lingering_loot:20tick 20t