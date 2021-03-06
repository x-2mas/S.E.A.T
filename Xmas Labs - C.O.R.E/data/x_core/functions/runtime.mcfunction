#######
# Compiled from data/x_core/functions/runtime.mcscript
# to .//Xmas Labs - C.O.R.E/data/x_core/functions/runtime.mcfunction
#
# Generated by Minecraft Script for 1.16
######


# C.O.R.E | runtime
# Performs C.O.R.E tasks requested by packs.
# Runs every tick.


execute unless data storage x_core flags{loadCPU:0} if data storage x_core flags.loadCPU unless data storage x_core flags{loadEIDs:0} if data storage x_core flags.loadEIDs run function x_core:manage_eids
execute unless data storage x_core flags{loadCPU:0} if data storage x_core flags.loadCPU unless data storage x_core flags{loadEIDs:0} if data storage x_core flags.loadEIDs as @e[tag=x_SAVE_EDATA,limit=1] at @s run function x_core:save_edata
execute unless data storage x_core flags{loadCPU:0} if data storage x_core flags.loadCPU unless data storage x_core flags{loadEIDs:0} if data storage x_core flags.loadEIDs as @e[tag=x_LOAD_EDATA,limit=1] at @s run function x_core:load_edata
execute unless data storage x_core flags{loadCPU:0} if data storage x_core flags.loadCPU unless data storage x_core flags{loadEIDs:0} if data storage x_core flags.loadEIDs as @e[tag=x_LOAD_INV,limit=1] at @s run function x_core:load_inventory
execute unless data storage x_core flags{loadCPU:0} if data storage x_core flags.loadCPU unless data storage x_core flags{loadEIDs:0} if data storage x_core flags.loadEIDs unless data storage x_core flags{attach:0} if data storage x_core flags.attach unless data storage x_core flags{loadAttachmentRegisters:0} if data storage x_core flags.loadAttachmentRegisters run function x_core:manage_attachments
execute unless data storage x_core flags{loadCPU:0} if data storage x_core flags.loadCPU unless data storage x_core flags{loadEIDs:0} if data storage x_core flags.loadEIDs unless data storage x_core flags{loadSearchKeyRegister:0} if data storage x_core flags.loadSearchKeyRegister as @e[tag=x_SEARCH,limit=1] at @s run function x_core:search
execute unless data storage x_core flags{loadCPU:0} if data storage x_core flags.loadCPU unless data storage x_core flags{scrollBar:0} if data storage x_core flags.scrollBar unless data storage x_core flags{loadScrollBarRegisters:0} if data storage x_core flags.loadScrollBarRegisters run function x_core:scrollbar
execute unless data storage x_core flags{loadCPU:0} if data storage x_core flags.loadCPU unless data storage x_core flags{trackRotation:0} if data storage x_core flags.trackRotation unless data storage x_core flags{loadRotationRegisters:0} if data storage x_core flags.loadRotationRegisters run function x_core:rotation_tracking

execute unless data storage x_core flags{ticker:0} if data storage x_core flags.ticker unless data storage x_core flags{loadTickRegister:0} if data storage x_core flags.loadTickRegister run function x_core:ticker

execute unless data storage x_core flags{blockCollisions:0} if data storage x_core flags.blockCollisions unless data storage x_core flags{loadCollisionRegisters:0} if data storage x_core flags.loadCollisionRegisters run function x_core:collision_blocking

execute unless data storage x_core flags{monitorItems:0} if data storage x_core flags.monitorItems run function x_core:monitor_items

execute unless data storage x_core flags{trackSneakTime:0} if data storage x_core flags.trackSneakTime unless data storage x_core flags{loadSneakTimeRegisters:0} if data storage x_core flags.loadSneakTimeRegisters run function x_core:sneak_time_tracking

execute unless data storage x_core flags{tpKill:0} if data storage x_core flags.tpKill run function x_core:tp_kill

execute unless data storage x_core flags{clearABTitle:0} if data storage x_core flags.clearABTitle run schedule function x_core:clear_abtitles 2t
execute unless data storage x_core flags{clearABTitle:0} if data storage x_core flags.clearABTitle run data remove storage x_core flags.clearABTitle

execute if data storage x_core flags{loadCPU:0} run data remove storage x_core flags.loadCPU

execute unless data storage x_core flags.loadCPU run data remove storage x_core flags.loadEIDs
execute unless data storage x_core flags.loadCPU run data remove storage x_core flags.loadScrollBarRegisters
execute unless data storage x_core flags.loadCPU run data remove storage x_core flags.scrollBar
execute unless data storage x_core flags.loadCPU run data remove storage x_core flags.trackRotation
execute unless data storage x_core flags.loadCPU run data remove storage x_core flags.loadRotationRegisters

execute if data storage x_core flags{loadEIDs:0} run data remove storage x_core flags.loadEIDs

execute unless data storage x_core flags.loadEIDs run tag @e remove x_EID
execute unless data storage x_core flags.loadEIDs run tag @e remove x_PID
execute unless data storage x_core flags.loadEIDs run tag @e remove x_SAVE_EDATA
execute unless data storage x_core flags.loadEIDs run tag @e remove x_SAVED_EDATA
execute unless data storage x_core flags.loadEIDs run tag @e remove x_LOAD_EDATA 
execute unless data storage x_core flags.loadEIDs run tag @e remove x_LOADED_EDATA
execute unless data storage x_core flags.loadEIDs run tag @e remove x_LOAD_INV 
execute unless data storage x_core flags.loadEIDs run tag @e[tag=x_KEEP] remove x_INV_LOADER 
execute unless data storage x_core flags.loadEIDs run tag @e[tag=x_KEEP] remove x_INV_ITEM 
execute unless data storage x_core flags.loadEIDs run tag @e[tag=x_KEEP] remove x_INV_ARMOR 
execute unless data storage x_core flags.loadEIDs run tag @e[tag=x_KEEP] remove x_INV_OFFHAND 
execute unless data storage x_core flags.loadEIDs run kill @e[tag=x_INV_LOADER]
execute unless data storage x_core flags.loadEIDs run kill @e[tag=x_INV_ITEM]
execute unless data storage x_core flags.loadEIDs run kill @e[tag=x_INV_ARMOR]
execute unless data storage x_core flags.loadEIDs run kill @e[tag=x_INV_OFFHAND]
execute unless data storage x_core flags.loadEIDs run data remove storage x_core flags.loadAttachmentRegisters
execute unless data storage x_core flags.loadEIDs run data remove storage x_core flags.attach
execute unless data storage x_core flags.loadEIDs run data remove storage x_core flags.loadSearchKeyRegister

execute if data storage x_core flags{attach:0} run data remove storage x_core flags.attach

execute if data storage x_core flags{loadAttachmentRegisters:0} run data remove storage x_core flags.attach
execute if data storage x_core flags{loadAttachmentRegisters:0} run data remove storage x_core flags.loadAttachmentRegisters

execute unless data storage x_core flags.attach run tag @e remove x_ATTACH 
execute unless data storage x_core flags.attach run tag @e remove x_ATTACH_ROTATE
execute unless data storage x_core flags.attach run tag @e remove x_ATTACHING 
execute unless data storage x_core flags.attach run tag @e remove x_ATTACHED 
execute unless data storage x_core flags.attach run tag @e remove x_ATTACH_NEW_PRIMARY
execute unless data storage x_core flags.attach run tag @e remove x_ATTACH_NEW_SECONDARY
execute unless data storage x_core flags.attach run kill @e[tag=x_ATTACHING_ANCHOR]

execute if data storage x_core flags{loadSearchKeyRegister:0} run data remove storage x_core flags.loadSearchKeyRegister

execute unless data storage x_core flags.loadSearchKeyRegister run tag @e remove x_SEARCH 
execute unless data storage x_core flags.loadSearchKeyRegister run tag @e remove x_SEARCHING 
execute unless data storage x_core flags.loadSearchKeyRegister run tag @e remove x_FOUND 

execute if data storage x_core flags{blockCollisions:0} run data remove storage x_core flags.blockCollisions

execute if data storage x_core flags{loadCollisionRegisters:0} run data remove storage x_core flags.blockCollisions
execute if data storage x_core flags{loadCollisionRegisters:0} run data remove storage x_core flags.loadCollisionRegisters

execute unless data storage x_core flags.blockCollisions run tag @e remove x_NO_COLLIDE
execute unless data storage x_core flags.blockCollisions run tag @e remove x_DRAW_COLLISION_BARRIER
execute unless data storage x_core flags.blockCollisions run tag @e remove x_DRAW_COLLISION_ARMOR_STAND
execute unless data storage x_core flags.blockCollisions run kill @e[tag=x_COLLISION_ARMOR_STAND]
execute unless data storage x_core flags.blockCollisions run kill @e[tag=x_COLLISION_BARRIER]

execute if data storage x_core flags{tpKill:0} run data remove storage x_core flags.tpKill

execute unless data storage x_core flags.tpKill run tag @e remove x_TP_KILL

execute if data storage x_core flags{scrollBar:0} run data remove storage x_core flags.scrollBar

execute if data storage x_core flags{loadScrollBarRegisters:0} run data remove storage x_core flags.scrollBar
execute if data storage x_core flags{loadScrollBarRegisters:0} run data remove storage x_core flags.loadScrollBarRegisters

execute unless data storage x_core flags.scrollBar run tag @e remove x_SCROLLBAR

execute if data storage x_core flags{trackRotation:0} run data remove storage x_core flags.trackRotation

execute if data storage x_core flags{loadRotationRegisters:0} run data remove storage x_core flags.trackRotation
execute if data storage x_core flags{loadRotationRegisters:0} run data remove storage x_core flags.loadRotationRegisters

execute unless data storage x_core flags.trackRotation run tag @e remove x_TRACK_ROTATION

execute if data storage x_core flags{clearABTitle:0} run data remove storage x_core flags.clearABTitle

execute if data storage x_core flags.hideCommandFeedback if data storage x_core flags{hideCommandFeedback:0} run gamerule sendCommandFeedback true
execute if data storage x_core flags.hideCommandFeedback unless data storage x_core flags{hideCommandFeedback:0} run gamerule sendCommandFeedback false
execute if data storage x_core flags.hideCommandFeedback run data remove storage x_core flags.hideCommandFeedback 

execute if data storage x_core flags{loadNotified:1} run advancement grant @a only x_core:root_tab
execute if data storage x_core flags{loadNotified:1} run advancement grant @a only x_core:pack_loaded
execute if data storage x_core flags{loadNotified:1} if data storage x_core flags{reload:1} run tellraw @a ["",{"text":"\n\nC.O.R.E Reload Requested!\n\n","bold":true,"underlined":true,"color":"gold"},{"text":"Please use the ","color":"white"},{"text":"/reload","color":"light_purple","underlined":true,"clickEvent":{"action":"run_command","value":"/reload"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to reload all datapacks! \n"},{"text":"Only works if you have the right permissions...","italic":true}]}},{"text":" command to reload Xmas Labs Packs! \nIf you can't run commands, just exit and re-enter the world.\nIf you're on a server, you may need to restart/reload it.\n\n","color":"white"},{"text":"Sorry for the inconvenience! \n\n","color":"white","italic":true}]
execute if data storage x_core flags{loadNotified:1} if data storage x_core flags{reload:1} run data modify storage x_core flags merge value {reload:-1}

execute unless data storage x_core flags.loadCPU__Packs[0] run data remove storage x_core flags.loadCPU

execute unless data storage x_core flags.loadEIDs__Packs[0] run data remove storage x_core flags.loadEIDs

execute unless data storage x_core flags.loadSearchKeyRegister__Packs[0] run data remove storage x_core flags.loadSearchKeyRegister

execute unless data storage x_core flags.loadCollisionRegisters__Packs[0] run data remove storage x_core flags.loadCollisionRegisters

execute unless data storage x_core flags.loadSneakTimeRegisters__Packs[0] run data remove storage x_core flags.loadSneakTimeRegisters

execute unless data storage x_core flags.loadAttachmentRegisters__Packs[0] run data remove storage x_core flags.loadAttachmentRegisters

execute unless data storage x_core flags.loadRotationRegisters__Packs[0] run data remove storage x_core flags.loadRotationRegisters

execute unless data storage x_core flags.loadScrollBarRegisters__Packs[0] run data remove storage x_core flags.loadScrollBarRegisters

execute unless data storage x_core flags.attach__Packs[0] run data remove storage x_core flags.attach

execute unless data storage x_core flags.blockCollisions__Packs[0] run data remove storage x_core flags.blockCollisions

execute unless data storage x_core flags.monitorItems__Packs[0] run data remove storage x_core flags.monitorItems

execute unless data storage x_core flags.trackSneakTime__Packs[0] run data remove storage x_core flags.trackSneakTime

execute unless data storage x_core flags.tpKill__Packs[0] run data remove storage x_core flags.tpKill

execute unless data storage x_core flags.scrollBar__Packs[0] run data remove storage x_core flags.scrollBar
