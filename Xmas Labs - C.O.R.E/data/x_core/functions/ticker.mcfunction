#######
# Compiled from data/x_core/functions/ticker.mcscript
# to .//Xmas Labs - C.O.R.E/data/x_core/functions/ticker.mcfunction
#
# Generated by Minecraft Script for 1.16
######


# C.O.R.E | ticker
# Manage tickers.


execute if score x_CPU x_TICK matches 2147483647.. run scoreboard players set x_CPU x_TICK 0

execute if score x_CPU x_TICK matches ..2147483647 run scoreboard players add x_CPU x_TICK 1

execute as @e[scores={x_TICK=2147483647..}] at @s run scoreboard players set @s x_TICK 0
execute as @e[scores={x_TICK=..2147483647}] at @s run scoreboard players add @s x_TICK 1