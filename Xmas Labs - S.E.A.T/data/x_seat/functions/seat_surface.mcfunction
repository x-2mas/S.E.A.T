#######
# Compiled from data/x_seat/functions/seat_surface.mcscript
# to .//Xmas Labs - S.E.A.T/data/x_seat/functions/seat_surface.mcfunction
#
# Generated by Minecraft Script for 1.16
######


# S.E.A.T | seat_surface 
# Handles S.E.A.T surface tasks


execute if data storage x_seat flags{blockInventory:0} run tag @s add x_SEAT_SURFACE_DISABLED_INVENTORY_BLOCK

execute if data storage x_seat flags{blockInventory:1} if entity @e[tag=x_SEAT_SURFACE_PLAYER,tag=!x_SEAT_DISABLED_INVENTORY_BLOCK,limit=1,sort=nearest] run tag @s remove x_SEAT_SURFACE_DISABLED_INVENTORY_BLOCK

execute if data storage x_seat flags{blockInventory:1} if entity @e[tag=x_SEAT_SURFACE_PLAYER,tag=x_SEAT_DISABLED_INVENTORY_BLOCK,limit=1,sort=nearest] run tag @s add x_SEAT_SURFACE_DISABLED_INVENTORY_BLOCK

execute if data storage x_seat flags{blockInventory:2} run tag @s remove x_SEAT_SURFACE_DISABLED_INVENTORY_BLOCK

execute store result score @s x_R0 run data get entity @s Rotation[0] 1
execute store result score @s x_R1 run data get entity @e[tag=x_SEAT_SURFACE_BASE,sort=nearest,limit=1] Rotation[0] 1
execute unless score @s x_R0 = @s x_R1 run data modify entity @s Rotation[0] set from entity @e[tag=x_SEAT_SURFACE_BASE,sort=nearest,limit=1] Rotation[0]

execute store result score @s x_R0 run data get entity @s Rotation[1] 1
execute unless score @s x_R0 matches 0 run data modify entity @s Rotation[1] set value 0

execute if data entity @s {Glowing:1b} run data modify entity @s {} merge value {Glowing:0}  

execute if entity @s[tag=x_SEAT_SURFACE_READY] unless data entity @s Attributes[{Name:"minecraft:generic.max_health",Base:0.1d}] run data modify entity @s Attributes[{Name:"generic.max_health"}].Base set value 0.1
execute if entity @s[tag=x_SEAT_SURFACE_READY] unless entity @e[tag=x_SEAT_SURFACE_BASE] unless entity @s[tag=x_KILL_SEAT] run schedule function x_seat:kill_seat 2t
execute if entity @s[tag=x_SEAT_SURFACE_READY] unless entity @e[tag=x_SEAT_SURFACE_BASE] unless entity @s[tag=x_KILL_SEAT] run tag @s add x_KILL_SEAT
execute if entity @s[tag=x_SEAT_SURFACE_READY] unless entity @a[tag=x_SEAT_SURFACE_PLAYER] unless entity @s[tag=x_KILL_SEAT] run schedule function x_seat:kill_seat 2t
execute if entity @s[tag=x_SEAT_SURFACE_READY] unless entity @a[tag=x_SEAT_SURFACE_PLAYER] unless entity @s[tag=x_KILL_SEAT] run tag @s add x_KILL_SEAT
execute if entity @s[tag=x_SEAT_SURFACE_READY] if entity @s[nbt={Leash:{}}] unless entity @s[tag=x_KILL_SEAT] run schedule function x_seat:kill_seat 2t
execute if entity @s[tag=x_SEAT_SURFACE_READY] if entity @s[nbt={Leash:{}}] unless entity @s[tag=x_KILL_SEAT] run tag @s add x_KILL_SEAT

execute if entity @s[nbt={DecorItem:{}}] run summon minecraft:item ~ ~1.5 ~ {Tags:[x_INV_LOADER,x_KILL_ON_UNINSTALL],PickupDelay:0,Item:{id:"minecraft:white_carpet",Count:1b,tag:{x_ITEM_TAGS:[x_INV_PLACEHOLDER,x_CLEAR_FROM_INV],x_ITEM_SLOT:0,display:{Name:"{\"text\":\"Empty\"}"}}},CustomName:"{\"text\":\"Xmas Labs Inventory Loader\"}"}
execute if entity @s[nbt={DecorItem:{}}] positioned ~ ~1.5 ~ run data modify entity @e[tag=x_INV_LOADER,sort=nearest,limit=1] Item set from entity @s DecorItem
execute if entity @s[nbt={DecorItem:{}}] run data modify entity @s DecorItem set value {}

execute if entity @s[nbt={ChestedHorse:1b}] if entity @s[tag=!x_SEAT_CONTROLS] run summon minecraft:item ~ ~1.5 ~ {Tags:[x_INV_LOADER,x_KILL_ON_UNINSTALL],PickupDelay:0,Item:{id:"minecraft:chest",Count:1b}}
execute if entity @s[nbt={ChestedHorse:1b}] if entity @s[tag=!x_SEAT_CONTROLS] run data modify entity @s ChestedHorse set value 0

execute if entity @s[tag=!x_SEAT_SURFACE_DISABLED_INVENTORY_BLOCK] if entity @s[nbt={Tame:1b}] run data modify entity @s {} merge value {Tame:0} 

execute if entity @s[tag=x_SEAT_SURFACE_DISABLED_INVENTORY_BLOCK] if entity @s[tag=x_SEAT_OCCUPIED] unless entity @s[nbt={Tame:1b}] run data modify entity @s {} merge value {Tame:1} 

execute if entity @a[tag=x_SEAT_SURFACE_PLAYER,nbt={SelectedItem:{id:"minecraft:sweet_berries"}}] run tag @a[tag=x_SEAT_SURFACE_PLAYER,limit=1,sort=nearest] add x_SEAT_BLOCKING_INTERACTIONS     
execute if entity @a[tag=x_SEAT_SURFACE_PLAYER,nbt={SelectedItem:{id:"minecraft:wheat"}}] run tag @a[tag=x_SEAT_SURFACE_PLAYER,limit=1,sort=nearest] add x_SEAT_BLOCKING_INTERACTIONS     
execute if entity @a[tag=x_SEAT_SURFACE_PLAYER,nbt={SelectedItem:{id:"minecraft:hay_bale"}}] run tag @a[tag=x_SEAT_SURFACE_PLAYER,limit=1,sort=nearest] add x_SEAT_BLOCKING_INTERACTIONS     
execute if entity @a[tag=x_SEAT_SURFACE_PLAYER,nbt={SelectedItem:{id:"minecraft:lead"}}] run tag @a[tag=x_SEAT_SURFACE_PLAYER,limit=1,sort=nearest] add x_SEAT_BLOCKING_INTERACTIONS     

tag @s add x_SEAT_SURFACE_READY