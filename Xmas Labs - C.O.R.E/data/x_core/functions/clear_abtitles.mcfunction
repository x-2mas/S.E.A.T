#######
# Compiled from data/x_core/functions/clear_abtitles.mcscript
# to .//Xmas Labs - C.O.R.E/data/x_core/functions/clear_abtitles.mcfunction
#
# Generated by Minecraft Script for 1.16
######


# C.O.R.E | clear_abtitles
# Clear action bar titles from tagged entities


execute as @a[tag=x_CLEAR_ABTITLE] at @s run title @s actionbar " "
execute as @a[tag=x_CLEAR_ABTITLE] at @s run title @s clear
execute as @a[tag=x_CLEAR_ABTITLE] at @s run tag @s remove x_CLEAR_ABTITLE