#######
# Compiled from data/x_core/functions/create_attachment.mcscript
# to .//Xmas Labs - C.O.R.E/data/x_core/functions/create_attachment.mcfunction
#
# Generated by Minecraft Script for 1.16
######


# C.O.R.E | create_attachment
# Create attachments between entities


execute as @e[tag=x_ATTACH_NEW_PRIMARY,limit=1,sort=nearest] at @s unless score @s x_EID matches 1.. run function x_core:assign_eid
execute unless score @s x_EID matches 1.. run function x_core:assign_eid

execute as @e[tag=x_ATTACH_NEW_SECONDARY] at @s run scoreboard players operation @s x_PID = @e[tag=x_ATTACH_NEW_PRIMARY,limit=1,sort=nearest] x_EID
execute as @e[tag=x_ATTACH_NEW_SECONDARY] at @s store result score @s x_R0 run data get entity @e[tag=x_ATTACH_NEW_PRIMARY,limit=1,sort=nearest] Pos[0] 1000000
execute as @e[tag=x_ATTACH_NEW_SECONDARY] at @s store result score @s x_ATTACH_X run data get entity @s Pos[0] 1000000
execute as @e[tag=x_ATTACH_NEW_SECONDARY] at @s run scoreboard players operation @s x_ATTACH_X -= @s x_R0
execute as @e[tag=x_ATTACH_NEW_SECONDARY] at @s store result score @s x_R0 run data get entity @e[tag=x_ATTACH_NEW_PRIMARY,limit=1,sort=nearest] Pos[1] 1000000
execute as @e[tag=x_ATTACH_NEW_SECONDARY] at @s store result score @s x_ATTACH_Y run data get entity @s Pos[1] 1000000
execute as @e[tag=x_ATTACH_NEW_SECONDARY] at @s run scoreboard players operation @s x_ATTACH_Y -= @s x_R0
execute as @e[tag=x_ATTACH_NEW_SECONDARY] at @s store result score @s x_R0 run data get entity @e[tag=x_ATTACH_NEW_PRIMARY,limit=1,sort=nearest] Pos[2] 1000000
execute as @e[tag=x_ATTACH_NEW_SECONDARY] at @s store result score @s x_ATTACH_Z run data get entity @s Pos[2] 1000000
execute as @e[tag=x_ATTACH_NEW_SECONDARY] at @s run scoreboard players operation @s x_ATTACH_Z -= @s x_R0
execute as @e[tag=x_ATTACH_NEW_SECONDARY] at @s store result score @s x_R0 run data get entity @e[tag=x_ATTACH_NEW_PRIMARY,limit=1,sort=nearest] Rotation[0] 10
execute as @e[tag=x_ATTACH_NEW_SECONDARY] at @s store result score @s x_ATTACH_RY run data get entity @s Rotation[0] 10
execute as @e[tag=x_ATTACH_NEW_SECONDARY] at @s run scoreboard players operation @s x_ATTACH_RY -= @s x_R0
execute as @e[tag=x_ATTACH_NEW_SECONDARY] at @s store result score @s x_R0 run data get entity @e[tag=x_ATTACH_NEW_PRIMARY,limit=1,sort=nearest] Rotation[1] 10
execute as @e[tag=x_ATTACH_NEW_SECONDARY] at @s store result score @s x_ATTACH_RX run data get entity @s Rotation[1] 10
execute as @e[tag=x_ATTACH_NEW_SECONDARY] at @s run scoreboard players operation @s x_ATTACH_RX -= @s x_R0
execute as @e[tag=x_ATTACH_NEW_SECONDARY] at @s run tag @e[tag=x_ATTACH_NEW_PRIMARY,limit=1,sort=nearest] remove x_ATTACH_NEW_PRIMARY
execute as @e[tag=x_ATTACH_NEW_SECONDARY] at @s run tag @s remove x_ATTACH_NEW_SECONDARY