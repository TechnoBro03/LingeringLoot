# Despawn time must be within bounds
execute unless score @s lingering_loot.despawnTime matches 1..38768 run scoreboard players set @s lingering_loot.despawnTime 38768

# Sets age to new value (default - custom)
scoreboard players operation .custom lingering_loot.despawnTime = @s lingering_loot.despawnTime
scoreboard players reset @s lingering_loot.despawnTime

scoreboard players operation .age lingering_loot.despawnTime = .default lingering_loot.despawnTime
scoreboard players operation .age lingering_loot.despawnTime -= .custom lingering_loot.despawnTime

# Calculate minutes and seconds
scoreboard players operation .minutes lingering_loot.despawnTime = .custom lingering_loot.despawnTime
scoreboard players operation .minutes lingering_loot.despawnTime /= .1200 lingering_loot.despawnTime
scoreboard players operation .seconds lingering_loot.despawnTime = .custom lingering_loot.despawnTime
scoreboard players operation .seconds lingering_loot.despawnTime /= .12 lingering_loot.despawnTime
scoreboard players operation .seconds lingering_loot.despawnTime %= .100 lingering_loot.despawnTime

tellraw @s ["","<",{"text":"Lingering Loot","color":"aqua"},"> Item despawn time set to ",{"score":{"name":".custom","objective":"lingering_loot.despawnTime"},"color":"green"}," ticks or ",{"score":{"name":".minutes","objective":"lingering_loot.despawnTime"},"color":"green"},{"text":".","color":"green"},{"score":{"name":".seconds","objective":"lingering_loot.despawnTime"},"color":"green"}," minutes"]