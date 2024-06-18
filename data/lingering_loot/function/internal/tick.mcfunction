# Runs every tick

# Runs on player death
execute as @a if score @s lingering_loot.deaths matches 1.. at @s run function lingering_loot:internal/death

# Runs as all OPs
execute as @a[tag=lingering_loot.OP] run function lingering_loot:internal/as_op