#######
# Compiled from data/x_core/functions/check_compatibility.mcscript
# to .//Xmas Labs - C.O.R.E/data/x_core/functions/check_compatibility.mcfunction
#
# Generated by Minecraft Script for 1.16
######


# C.O.R.E | check_compatibility
# Runs compatability checks on packs and world


execute if data storage x_core packs{x_seat:116401} run tellraw @a ["",{"text":"\n\nCompatibility Issue!\n\n","bold":true,"underlined":true,"color":"gold"},{"text":"The Xmas Labs S.E.A.T datapack you're using is outdated and won't work with the current C.O.R.E. Please update S.E.A.T pack to the latest version.\n\n","color":"white","italic":true}]
execute if data storage x_core packs{x_seat:116501} run tellraw @a ["",{"text":"\n\nCompatibility Issue!\n\n","bold":true,"underlined":true,"color":"gold"},{"text":"The Xmas Labs S.E.A.T datapack you're using is outdated and won't work with the current C.O.R.E. Please update S.E.A.T pack to the latest version.\n\n","color":"white","italic":true}]
execute if data storage x_core packs{x_seat:116401} run data remove storage x_core packs.x_seat
execute if data storage x_core packs{x_seat:116501} run data remove storage x_core packs.x_seat