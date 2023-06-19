# Runs on load/reload

tellraw @a ["",{"text":"<","color":"white"},{"text":"Lingering Loot","color":"aqua"},{"text":"> Datapack loaded! Click ","color":"white"},{"text":"here","bold":true,"underlined":true,"color":"white","clickEvent":{"action":"run_command","value":"/tag @s add OP"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click Me!","color":"aqua"}]}},{"text":" for access to datapack commands (OP only)","color":"white"}]

scoreboard objectives add deaths deathCount
scoreboard objectives add despawnTime trigger
scoreboard objectives add invItems trigger

scoreboard players set .custom despawnTime 6000
scoreboard players set .default despawnTime 6000
scoreboard players set .invItems invItems 0

function lingering_loot:20tick