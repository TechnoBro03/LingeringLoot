# Despawn time must be within bounds

# Trigger w/out set (set to default)
execute if score @s lingering_loot.despawnTime matches -2147483647 run scoreboard players set @s lingering_loot.despawnTime 6000
# Trigger with set below 0 (set to 0)
execute if score @s lingering_loot.despawnTime matches -2147483646..0 run scoreboard players set @s lingering_loot.despawnTime 0
# Trigger with set above 38768 (set to 38768)
execute if score @s lingering_loot.despawnTime matches 38769.. run scoreboard players set @s lingering_loot.despawnTime 38768

# Sets age to new value (default - custom)
scoreboard players operation .custom lingering_loot.despawnTime = @s lingering_loot.despawnTime
scoreboard players set @s lingering_loot.despawnTime -2147483648

scoreboard players operation .age lingering_loot.despawnTime = .default lingering_loot.despawnTime
scoreboard players operation .age lingering_loot.despawnTime -= .custom lingering_loot.despawnTime

# Calculate minutes and seconds
scoreboard players operation .minutes lingering_loot.despawnTime = .custom lingering_loot.despawnTime
scoreboard players operation .minutes lingering_loot.despawnTime /= .1200 lingering_loot.despawnTime
scoreboard players operation .seconds lingering_loot.despawnTime = .custom lingering_loot.despawnTime
scoreboard players operation .seconds lingering_loot.despawnTime /= .12 lingering_loot.despawnTime
scoreboard players operation .seconds lingering_loot.despawnTime %= .100 lingering_loot.despawnTime

tellraw @a[tag=lingering_loot.OP] ["","<",{"text":"Lingering Loot","color":"aqua"},"> Item despawn time set to ",{"score":{"name":".custom","objective":"lingering_loot.despawnTime"},"color":"green"}," ticks or ",{"score":{"name":".minutes","objective":"lingering_loot.despawnTime"},"color":"green"},{"text":".","color":"green"},{"score":{"name":".seconds","objective":"lingering_loot.despawnTime"},"color":"green"}," minutes"]