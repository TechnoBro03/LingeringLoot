tag @a remove lingering_loot.OP
scoreboard objectives remove lingering_loot.deaths
scoreboard objectives remove lingering_loot.despawnTime
scoreboard objectives remove lingering_loot.invItems

tellraw @a ["","<",{"text":"Lingering Loot","color":"aqua"},"> Datapack ",{"text":"uninstalled","color":"red"}]
