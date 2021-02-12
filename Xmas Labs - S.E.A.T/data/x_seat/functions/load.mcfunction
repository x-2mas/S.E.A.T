#######
# Compiled from data/x_seat/functions/load.mcscript
# to .//Xmas Labs - S.E.A.T/data/x_seat/functions/load.mcfunction
#
# Generated by Minecraft Script for 1.16
######
function x_seat:mcscript/load


# S.E.A.T | load
# Loads scoreboard objectives, players, teams, world storage data, etc required by S.E.A.T tasks
# Runs when world loads. Also runs when running the /reload command


datapack enable x_seat after "file/x_core"
data remove storage x_core packs.x_seat
execute unless data storage x_core flags.loadCPU run data modify storage x_core flags merge value {reload:1}
execute unless data storage x_core flags.loadCPU run data modify storage x_core flags merge value {loadCPU:1}

execute unless data storage x_core flags.loadCPU__Packs[{x_SEAT:1}] run data modify storage x_core flags.loadCPU__Packs append value {x_SEAT:1}

execute unless data storage x_core flags.loadEIDs run data modify storage x_core flags merge value {reload:1}
execute unless data storage x_core flags.loadEIDs run data modify storage x_core flags merge value {loadEIDs:1}

execute unless data storage x_core flags.loadEIDs__Packs[{x_SEAT:1}] run data modify storage x_core flags.loadEIDs__Packs append value {x_SEAT:1}

execute unless data storage x_core flags.loadSneakTimeRegisters run data modify storage x_core flags merge value {reload:1}
execute unless data storage x_core flags.loadSneakTimeRegisters run data modify storage x_core flags merge value {loadSneakTimeRegisters:1}

execute unless data storage x_core flags.loadSneakTimeRegisters__Packs[{x_SEAT:1}] run data modify storage x_core flags.loadSneakTimeRegisters__Packs append value {x_SEAT:1}

execute unless data storage x_core flags.loadAttachmentRegisters run data modify storage x_core flags merge value {reload:1}
execute unless data storage x_core flags.loadAttachmentRegisters run data modify storage x_core flags merge value {loadAttachmentRegisters:1}

execute unless data storage x_core flags.loadAttachmentRegisters__Packs[{x_SEAT:1}] run data modify storage x_core flags.loadAttachmentRegisters__Packs append value {x_SEAT:1}

execute unless data storage x_core flags.loadCollisionRegisters run data modify storage x_core flags merge value {reload:1}
execute unless data storage x_core flags.loadCollisionRegisters run data modify storage x_core flags merge value {loadCollisionRegisters:1}

execute unless data storage x_core flags.loadCollisionRegisters__Packs[{x_SEAT:1}] run data modify storage x_core flags.loadCollisionRegisters__Packs append value {x_SEAT:1}

execute unless data storage x_core flags.loadScrollBarRegisters run data modify storage x_core flags merge value {reload:1}
execute unless data storage x_core flags.loadScrollBarRegisters run data modify storage x_core flags merge value {loadScrollBarRegisters:1}

execute unless data storage x_core flags.loadScrollBarRegisters__Packs[{x_SEAT:1}] run data modify storage x_core flags.loadScrollBarRegisters__Packs append value {x_SEAT:1}

execute unless data storage x_core flags{reload:1} run data modify storage x_core packs merge value {x_seat:116501} 

execute if data storage x_core packs{x_seat:116501} run data remove storage x_seat flags.loadNotified
execute if data storage x_core packs{x_seat:116501} run schedule function x_seat:load_notify 3s
execute if data storage x_core packs{x_seat:116501} store result score x_CPU x_R0 run data get storage x_core packs.x_core 1
execute if data storage x_core packs{x_seat:116501} run scoreboard players set x_CPU x_R1 116501
execute if data storage x_core packs{x_seat:116501} run scoreboard players operation x_CPU x_R0 -= x_CPU x_R1
execute if data storage x_core packs{x_seat:116501} unless score x_CPU x_R0 matches ..-1 run scoreboard objectives add x_SEAT_ID dummy "Xmas Labs: S.E.A.T ID Register"
execute if data storage x_core packs{x_seat:116501} unless score x_CPU x_R0 matches ..-1 run scoreboard objectives add x_SEAT_TICK dummy "Xmas Labs: S.E.A.T Tick Register"
execute if data storage x_core packs{x_seat:116501} unless score x_CPU x_R0 matches ..-1 run scoreboard objectives add x_SEAT_SCROLLED dummy "Xmas Labs: S.E.A.T Scroll Tracking Register"
execute if data storage x_core packs{x_seat:116501} unless score x_CPU x_R0 matches ..-1 run scoreboard objectives add x_SEAT_MENU dummy "Xmas Labs: S.E.A.T Menu Register"
execute if data storage x_core packs{x_seat:116501} unless score x_CPU x_R0 matches ..-1 unless data storage x_seat flags run data modify storage x_seat flags set value {physics:1, rotationLock:0, bounceOffFloor:0, onlySitDown:0, onlyIfSneaking:0, safetyEjects:1, fallDamage:1, blockInventory:1, freezeRideOnAdjust:1, showPrompts:1}
