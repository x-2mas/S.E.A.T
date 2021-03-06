#######
# Compiled from data/x_core/functions/load_edata.mcscript
# to .//Xmas Labs - C.O.R.E/data/x_core/functions/load_edata.mcfunction
#
# Generated by Minecraft Script for 1.16
######


# C.O.R.E | load_edata
# Load calling entity's data from storage.


tag @s add x_LOAD_EDATA
tag @s[tag=global.ignore,tag=!x_IGNORE_OVERRIDE] remove x_LOAD_EDATA
execute as @s[tag=x_LOAD_EDATA] at @s store result score x_CPU x_EID run scoreboard players get @s x_EID
execute as @s[tag=x_LOAD_EDATA] at @s if score x_CPU x_EID matches 0 run tellraw @a ["",{"text":"\n\nXmas Labs C.O.R.E Error!\n\n","bold":true,"underlined":true,"color":"gold"},{"text":"Tried loading entity data of an entity with no ID! \n\n","color":"gold"}]        
execute as @s[tag=x_LOAD_EDATA] at @s if score x_CPU x_EID matches 0 run tag @s remove x_LOAD_EDATA
execute as @s[tag=x_LOAD_EDATA] at @s store result score x_CPU x_EID run data get storage minecraft:x_core shared.entities[-1].eid 1
execute as @s[tag=x_LOAD_EDATA] at @s if score @s x_EID = x_CPU x_EID unless entity @s[tag=x_LOADED_EDATA] run data modify entity @s {} merge from storage x_core shared.entities[-1].data
execute as @s[tag=x_LOAD_EDATA] at @s if score @s x_EID = x_CPU x_EID unless entity @s[tag=x_LOADED_EDATA] run tag @s remove x_SAVE_EDATA
execute as @s[tag=x_LOAD_EDATA] at @s if score @s x_EID = x_CPU x_EID unless entity @s[tag=x_LOADED_EDATA] run tag @s remove x_UNSAVED_EDATA
execute as @s[tag=x_LOAD_EDATA] at @s if score @s x_EID = x_CPU x_EID unless entity @s[tag=x_LOADED_EDATA] run tag @s add x_LOADED_EDATA
execute as @s[tag=x_LOAD_EDATA] at @s unless data storage x_core shared._entities run data modify storage x_core shared merge value {_entities:[]}
execute as @s[tag=x_LOAD_EDATA] at @s run data modify storage x_core shared._entities prepend from storage x_core shared.entities[-1]
execute as @s[tag=x_LOAD_EDATA] at @s run data remove storage x_core shared.entities[-1]
execute as @s[tag=x_LOAD_EDATA] at @s if data storage x_core shared.entities[0] run function x_core:load_edata
execute as @s[tag=x_LOAD_EDATA] at @s unless data storage x_core shared.entities[0] unless entity @s[tag=x_LOADED_EDATA] store result score x_CPU x_EID run scoreboard players get @s x_EID
execute as @s[tag=x_LOAD_EDATA] at @s unless data storage x_core shared.entities[0] unless entity @s[tag=x_LOADED_EDATA] run tellraw @a ["",{"text":"\n\nXmas Labs C.O.R.E Error!\n\n","bold":true,"underlined":true,"color":"gold"},{"text":"Data for entity with ","color":"gold"}, {"text":"EID:","color":"blue","bold":true},{"score":{"name":"x_CPU","objective":"x_EID"},"color":"blue","bold":true},{"text":" missing in world storage.\n\n","color":"gold"}]        
execute as @s[tag=x_LOAD_EDATA] at @s unless data storage x_core shared.entities[0] unless entity @s[tag=x_LOADED_EDATA] run tag @s add x_LOADED_EDATA
execute as @s[tag=x_LOAD_EDATA] at @s run data modify storage x_core shared.entities set from storage x_core shared._entities
execute as @s[tag=x_LOAD_EDATA] at @s run tag @s remove x_LOADED_EDATA
execute as @s[tag=x_LOAD_EDATA] at @s run data remove storage x_core shared._entities
execute as @s[tag=x_LOAD_EDATA] at @s run tag @s remove x_LOAD_EDATA 