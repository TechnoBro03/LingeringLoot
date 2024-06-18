# Runs on load/reload

tellraw @a ["",{"text":"<","color":"white"},{"text":"Lingering Loot","color":"aqua"},{"text":"> Datapack loaded! Click ","color":"white"},{"text":"here","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/tag @s add lingering_loot.OP"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click Me!","color":"aqua"}]}},{"text":" for access to datapack commands (OP only)","color":"white"}]

scoreboard objectives add lingering_loot.deaths deathCount
scoreboard objectives add lingering_loot.despawnTime trigger
scoreboard objectives add lingering_loot.invItems trigger

scoreboard players set .custom lingering_loot.despawnTime 6000
scoreboard players set .default lingering_loot.despawnTime 6000
scoreboard players set .1200 lingering_loot.despawnTime 1200
scoreboard players set .12 lingering_loot.despawnTime 12
scoreboard players set .100 lingering_loot.despawnTime 100
scoreboard players set .-1 lingering_loot.invItems -1

# Save previous state of invItems
execute unless score .invItems lingering_loot.invItems matches -1..1 run scoreboard players set .invItems lingering_loot.invItems -1