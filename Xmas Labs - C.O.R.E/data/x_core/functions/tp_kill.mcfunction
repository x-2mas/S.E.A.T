#######
# Compiled from data/x_core/functions/tp_kill.mcscript
# to .//Xmas Labs - C.O.R.E/data/x_core/functions/tp_kill.mcfunction
#
# Generated by Minecraft Script for 1.16
######


# C.O.R.E | tp_kill
# Teleports and kills entity below world (to hide death animation))


tag @e[tag=x_TP_KILL,tag=!global.ignore.kill,tag=!x_IGNORE_OVERRIDE] remove x_TP_KILL
tag @e[tag=x_TP_KILL,tag=!global.ignore.pos,tag=!x_IGNORE_OVERRIDE] remove x_TP_KILL
tag @e[tag=x_TP_KILL,tag=!global.ignore,tag=!x_IGNORE_OVERRIDE] remove x_TP_KILL
tp @e[tag=x_TP_KILL] ~ ~999 ~
kill @e[tag=x_TP_KILL]