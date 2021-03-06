#######
# Compiled from data/x_core/functions/manage_attachments.mcscript
# to .//Xmas Labs - C.O.R.E/data/x_core/functions/manage_attachments.mcfunction
#
# Generated by Minecraft Script for 1.16
######


# C.O.R.E | manage_attachments
# Attachment management tasks


execute as @e[scores={x_ATTACH__T=..0}] at @s run scoreboard players reset @s x_ATTACH_X
execute as @e[scores={x_ATTACH__T=..0}] at @s run scoreboard players reset @s x_ATTACH_Y
execute as @e[scores={x_ATTACH__T=..0}] at @s run scoreboard players reset @s x_ATTACH_Z
execute as @e[scores={x_ATTACH__T=..0}] at @s run tag @s remove x_ATTACH
execute as @e[scores={x_ATTACH__T=..0}] at @s run scoreboard players reset @s x_ATTACH__T
execute as @e[tag=x_ATTACH] at @s unless entity @s[scores={x_ATTACH__T=0..}] run scoreboard players set @s x_ATTACH__T 1
tag @e[scores={x_ATTACH__T=1..}] add x_ATTACH
execute as @e[scores={x_ATTACH__T=1..},limit=1] at @s run function x_core:attach