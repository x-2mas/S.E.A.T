#######
# Compiled from data/x_seat/functions/seat_physics.mcscript
# to .//Xmas Labs - S.E.A.T/data/x_seat/functions/seat_physics.mcfunction
#
# Generated by Minecraft Script for 1.16
######


# S.E.A.T | seat_physics 
# Handles S.E.A.T base physics


execute if entity @s[tag=x_SEAT_POST_FALLING] if entity @s[tag=x_SEAT_BASE_ENABLED_FLOOR_BOUNCE] run tp @s ~ ~-1.9 ~ 
execute if entity @s[tag=x_SEAT_POST_FALLING] if entity @s[tag=!x_SEAT_BASE_DISABLED_PHYSICS] unless entity @e[tag=x_SEAT_NS,tag=x_SEAT_BASE_ANCHOR] run function x_seat:create_anchor
execute if entity @s[tag=x_SEAT_POST_FALLING] if entity @s[tag=!x_SEAT_BASE_DISABLED_PHYSICS] unless entity @e[tag=x_SEAT_NS,tag=x_SEAT_BASE_ANCHOR] run tag @s add x_SEAT_ANCHORED
execute if entity @s[tag=x_SEAT_POST_FALLING] if entity @s[tag=!x_SEAT_BASE_DISABLED_PHYSICS] unless entity @e[tag=x_SEAT_NS,tag=x_SEAT_BASE_ANCHOR] as @e[tag=x_SEAT_NS,tag=x_SEAT_ANCHOR] at @s if score @s x_SEAT_ID = @e[tag=x_SEAT_BASE,tag=!x_SEAT_BASE_SKIP,limit=1] x_EID run data modify entity @s FallDistance set from entity @e[tag=x_SEAT_BASE,tag=!x_SEAT_BASE_SKIP,limit=1] FallDistance
execute if entity @s[tag=x_SEAT_POST_FALLING] if entity @s[tag=!x_SEAT_BASE_DISABLED_PHYSICS] unless entity @e[tag=x_SEAT_NS,tag=x_SEAT_BASE_ANCHOR] as @e[tag=x_SEAT_NS,tag=x_SEAT_ANCHOR] at @s if score @s x_SEAT_ID = @e[tag=x_SEAT_BASE,tag=!x_SEAT_BASE_SKIP,limit=1] x_EID run data modify entity @s Motion set from entity @e[tag=x_SEAT_BASE,tag=!x_SEAT_BASE_SKIP,limit=1] Motion
execute if entity @s[tag=x_SEAT_POST_FALLING] run data modify entity @s {} merge value {NoAI:1}
execute if entity @s[tag=x_SEAT_POST_FALLING] run scoreboard players set @s x_ATTACH_Y -190
execute if entity @s[tag=x_SEAT_POST_FALLING] run tag @s add x_ATTACH
execute if entity @s[tag=x_SEAT_POST_FALLING] run tag @s add x_ATTACH_ROTATE
execute if entity @s[tag=x_SEAT_POST_FALLING] run scoreboard players add @s x_ATTACH__T 1
execute if entity @s[tag=x_SEAT_POST_FALLING] run tag @s remove x_SEAT_FALLING
execute if entity @s[tag=x_SEAT_POST_FALLING] run tag @s remove x_SEAT_POST_FALLING

execute if entity @s[tag=x_SEAT_FALLING] if entity @s[nbt={OnGround:1b}] run data modify entity @s FallDistance set value 0
execute if entity @s[tag=x_SEAT_FALLING] if entity @e[tag=x_SEAT_BASE_ANCHOR,tag=x_ATTACH] run data modify entity @s FallDistance set value 0
execute if entity @s[tag=x_SEAT_FALLING] if entity @s[nbt={OnGround:1b}] run scoreboard players set @s x_ATTACH__T 0
execute if entity @s[tag=x_SEAT_FALLING] if entity @e[tag=x_SEAT_BASE_ANCHOR,tag=x_ATTACH] run scoreboard players set @s x_ATTACH__T 0
execute if entity @s[tag=x_SEAT_FALLING] if entity @s[nbt={OnGround:1b}] run tag @s remove x_ATTACH
execute if entity @s[tag=x_SEAT_FALLING] if entity @e[tag=x_SEAT_BASE_ANCHOR,tag=x_ATTACH] run tag @s remove x_ATTACH
execute if entity @s[tag=x_SEAT_FALLING] if entity @s[nbt={OnGround:1b}] run tag @s add x_SEAT_POST_FALLING
execute if entity @s[tag=x_SEAT_FALLING] if entity @e[tag=x_SEAT_BASE_ANCHOR,tag=x_ATTACH] run tag @s add x_SEAT_POST_FALLING
