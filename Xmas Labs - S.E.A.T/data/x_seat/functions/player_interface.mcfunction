#######
# Compiled from data/x_seat/functions/player_interface.mcscript
# to .//Xmas Labs - S.E.A.T/data/x_seat/functions/player_interface.mcfunction
#
# Generated by Minecraft Script for 1.16
######


# S.E.A.T | player_interface 
# Handles player-S.E.A.T interactions


execute as @a[scores={x_SEAT_MENU=101..199}] at @s if score @s x_SEAT_MENU matches 111 run data modify storage x_seat flags.physics set value 0
execute as @a[scores={x_SEAT_MENU=101..199}] at @s if score @s x_SEAT_MENU matches 112 run data modify storage x_seat flags.physics set value 1
execute as @a[scores={x_SEAT_MENU=101..199}] at @s if score @s x_SEAT_MENU matches 121 run data modify storage x_seat flags.rotationLock set value 0
execute as @a[scores={x_SEAT_MENU=101..199}] at @s if score @s x_SEAT_MENU matches 122 run data modify storage x_seat flags.rotationLock set value 1
execute as @a[scores={x_SEAT_MENU=101..199}] at @s if score @s x_SEAT_MENU matches 131 run data modify storage x_seat flags.onlyIfSneaking set value 0
execute as @a[scores={x_SEAT_MENU=101..199}] at @s if score @s x_SEAT_MENU matches 132 run data modify storage x_seat flags.onlyIfSneaking set value 1
execute as @a[scores={x_SEAT_MENU=101..199}] at @s run scoreboard players set @s x_SEAT_MENU 100
execute as @a[scores={x_SEAT_MENU=201..299}] at @s if score @s x_SEAT_MENU matches 211 run data modify storage x_seat flags.bounceOffFloor set value 0
execute as @a[scores={x_SEAT_MENU=201..299}] at @s if score @s x_SEAT_MENU matches 212 run data modify storage x_seat flags.bounceOffFloor set value 1
execute as @a[scores={x_SEAT_MENU=201..299}] at @s if score @s x_SEAT_MENU matches 221 run data modify storage x_seat flags.onlySitDown set value 0
execute as @a[scores={x_SEAT_MENU=201..299}] at @s if score @s x_SEAT_MENU matches 222 run data modify storage x_seat flags.onlySitDown set value 1
execute as @a[scores={x_SEAT_MENU=201..299}] at @s if score @s x_SEAT_MENU matches 231 run data modify storage x_seat flags.freezeRideOnAdjust set value 0
execute as @a[scores={x_SEAT_MENU=201..299}] at @s if score @s x_SEAT_MENU matches 232 run data modify storage x_seat flags.freezeRideOnAdjust set value 1
execute as @a[scores={x_SEAT_MENU=201..299}] at @s run scoreboard players set @s x_SEAT_MENU 200
execute as @a[scores={x_SEAT_MENU=301..399}] at @s if score @s x_SEAT_MENU matches 311 run data modify storage x_seat flags.fallDamage set value 0
execute as @a[scores={x_SEAT_MENU=301..399}] at @s if score @s x_SEAT_MENU matches 312 run data modify storage x_seat flags.fallDamage set value 1
execute as @a[scores={x_SEAT_MENU=301..399}] at @s if score @s x_SEAT_MENU matches 321 run data modify storage x_seat flags.blockInventory set value 0
execute as @a[scores={x_SEAT_MENU=301..399}] at @s if score @s x_SEAT_MENU matches 322 run data modify storage x_seat flags.blockInventory set value 1
execute as @a[scores={x_SEAT_MENU=301..399}] at @s if score @s x_SEAT_MENU matches 331 run data modify storage x_seat flags.showPrompts set value 0
execute as @a[scores={x_SEAT_MENU=301..399}] at @s if score @s x_SEAT_MENU matches 332 run data modify storage x_seat flags.showPrompts set value 1
execute as @a[scores={x_SEAT_MENU=301..399}] at @s run scoreboard players set @s x_SEAT_MENU 300
execute as @a[scores={x_SEAT_MENU=100..399}] at @s run tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
execute as @a[scores={x_SEAT_MENU=100..399}] at @s run function x_seat:menu
execute as @a[scores={x_SEAT_MENU=100..399}] at @s run scoreboard players reset @s x_SEAT_MENU
execute as @a[scores={x_SEAT_MENU=400}] at @s run tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
execute as @a[scores={x_SEAT_MENU=400}] at @s run scoreboard players reset @s x_SEAT_MENU
execute as @a[tag=!x_MAY_SIT,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT]}}}] at @s if entity @s[x_rotation=80..90] if entity @s[nbt={SelectedItem:{}}] if data storage x_seat flags{showPrompts:1} run title @s actionbar ["",{"text":"You must clear your main-hand before sitting!"}]   
execute as @a[tag=!x_MAY_SIT,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT]}}}] at @s if entity @s[x_rotation=80..90] if entity @s[nbt={SelectedItem:{}}] if data storage x_seat flags{showPrompts:1} run tag @s add x_CLEAR_ABTITLE
execute as @a[tag=!x_MAY_SIT,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT]}}}] at @s if entity @s[x_rotation=80..90] if entity @s[nbt={SelectedItem:{}}] if data storage x_seat flags{showPrompts:1} run data modify storage x_core flags merge value {clearABTitle:1}     
execute as @a[tag=!x_MAY_SIT,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT]}}}] at @s if entity @s[x_rotation=80..90] if entity @s[nbt=!{SelectedItem:{}}] if data storage x_seat flags{showPrompts:1} if data storage x_seat flags{onlyIfSneaking:1} unless entity @e[distance=..2,tag=x_SEAT_NS,tag=x_SEAT_SURFACE,tag=!x_SEAT_OCCUPIED] run title @s actionbar ["",{"text":"Hold "},{"keybind":"key.sneak","color":"gold","bold":true},{"text":" to begin sitting"}]  
execute as @a[tag=!x_MAY_SIT,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT]}}}] at @s if entity @s[x_rotation=80..90] if entity @s[nbt=!{SelectedItem:{}}] if data storage x_seat flags{showPrompts:1} if data storage x_seat flags{onlyIfSneaking:1} unless entity @e[distance=..2,tag=x_SEAT_NS,tag=x_SEAT_SURFACE,tag=!x_SEAT_OCCUPIED] run tag @s add x_CLEAR_ABTITLE
execute as @a[tag=!x_MAY_SIT,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT]}}}] at @s if entity @s[x_rotation=80..90] if entity @s[nbt=!{SelectedItem:{}}] if data storage x_seat flags{showPrompts:1} if data storage x_seat flags{onlyIfSneaking:1} unless entity @e[distance=..2,tag=x_SEAT_NS,tag=x_SEAT_SURFACE,tag=!x_SEAT_OCCUPIED] run data modify storage x_core flags merge value {clearABTitle:1}     
execute as @a[tag=!x_MAY_SIT,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT]}}}] at @s if entity @s[x_rotation=80..90] if entity @s[nbt=!{SelectedItem:{}}] if data storage x_seat flags{onlyIfSneaking:0} run tag @s add x_SEAT_NS
execute as @a[tag=!x_MAY_SIT,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT]}}}] at @s if entity @s[x_rotation=80..90] if entity @s[nbt=!{SelectedItem:{}}] if score @s x_SNEAK_TIME matches 5.. run tag @s add x_SEAT_NS
execute as @a[tag=!x_MAY_SIT,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT]}}}] at @s if entity @s[x_rotation=80..90] if entity @s[nbt=!{SelectedItem:{}}] if data storage x_seat flags{onlyIfSneaking:0} run tag @s add x_MAY_SIT
execute as @a[tag=!x_MAY_SIT,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT]}}}] at @s if entity @s[x_rotation=80..90] if entity @s[nbt=!{SelectedItem:{}}] if score @s x_SNEAK_TIME matches 5.. run tag @s add x_MAY_SIT
execute as @a[tag=x_SEAT_NS,tag=x_MAY_SIT,tag=!x_MAY_SIT_SKIP,limit=1] at @s unless score @s x_EID matches 1.. run tag @s add x_EID__SEAT
execute as @a[tag=x_SEAT_NS,tag=x_MAY_SIT,tag=!x_MAY_SIT_SKIP,limit=1] at @s unless score @s x_EID matches 1.. run scoreboard players add @s x_EID__T 1
execute as @a[tag=x_SEAT_NS,tag=x_MAY_SIT,tag=!x_MAY_SIT_SKIP,limit=1] at @s unless score @s x_EID matches 1.. run tag @s add x_EID
execute as @a[tag=x_SEAT_NS,tag=x_MAY_SIT,tag=!x_MAY_SIT_SKIP,limit=1] at @s unless score @s x_EID matches 1.. run function x_core:assign_eid
execute as @a[tag=x_SEAT_NS,tag=x_MAY_SIT,tag=!x_MAY_SIT_SKIP,limit=1] at @s as @e[tag=x_SEAT_NS,tag=!x_SEAT_OCCUPIED,tag=x_SEAT_BASE] at @s if score @s x_SEAT_ID = @a[tag=x_MAY_SIT,tag=!x_MAY_SIT_SKIP,limit=1,sort=nearest] x_EID run tag @s add x_SEAT_PLAYER_BASE
execute as @a[tag=x_SEAT_NS,tag=x_MAY_SIT,tag=!x_MAY_SIT_SKIP,limit=1] at @s unless entity @e[tag=x_SEAT_NS,tag=x_SEAT_PLAYER_BASE] if data storage x_seat flags{onlyIfSneaking:0} run function x_seat:create_seat
execute as @a[tag=x_SEAT_NS,tag=x_MAY_SIT,tag=!x_MAY_SIT_SKIP,limit=1] at @s unless entity @e[tag=x_SEAT_NS,tag=x_SEAT_PLAYER_BASE] if data storage x_seat flags{onlyIfSneaking:1} if score @s x_SNEAK_TIME matches 1.. run function x_seat:create_seat
execute as @a[tag=x_SEAT_NS,tag=x_MAY_SIT,tag=!x_MAY_SIT_SKIP,limit=1] at @s rotated ~ 0 run tp @e[tag=x_SEAT_NS,tag=x_SEAT_PLAYER_BASE,sort=nearest,limit=1] ~ ~-1.4 ~ facing ^ ^-1.6 ^2
execute as @a[tag=x_SEAT_NS,tag=x_MAY_SIT,tag=!x_MAY_SIT_SKIP,limit=1] at @s if data storage x_seat flags{onlyIfSneaking:0} run scoreboard players set @e[tag=x_SEAT_NS,tag=x_SEAT_PLAYER_BASE,sort=nearest,limit=1] x_SEAT_TICK 40
execute as @a[tag=x_SEAT_NS,tag=x_MAY_SIT,tag=!x_MAY_SIT_SKIP,limit=1] at @s if entity @s[x_rotation=80..90] if data storage x_seat flags{showPrompts:1} if data storage x_seat flags{onlyIfSneaking:0} if entity @e[distance=..2,tag=x_SEAT_NS,tag=x_SEAT_SURFACE,tag=!x_SEAT_OCCUPIED] run title @s actionbar ["",{"text":"Press "},{"keybind":"key.use","color":"gold","bold":true},{"text":" to sit"}]      
execute as @a[tag=x_SEAT_NS,tag=x_MAY_SIT,tag=!x_MAY_SIT_SKIP,limit=1] at @s if entity @s[x_rotation=80..90] if data storage x_seat flags{showPrompts:1} if data storage x_seat flags{onlyIfSneaking:1} if score @s x_SNEAK_TIME matches ..19 unless entity @e[distance=..2,tag=x_SEAT_NS,tag=x_SEAT_SURFACE,tag=!x_SEAT_OCCUPIED] run title @s actionbar ["",{"text":"Hold "},{"keybind":"key.sneak","color":"gold","bold":true},{"text":" to begin sitting"}]  
execute as @a[tag=x_SEAT_NS,tag=x_MAY_SIT,tag=!x_MAY_SIT_SKIP,limit=1] at @s if entity @s[x_rotation=80..90] if data storage x_seat flags{showPrompts:1} if data storage x_seat flags{onlyIfSneaking:1} if score @s x_SNEAK_TIME matches 20.. if entity @e[distance=..2,tag=x_SEAT_NS,tag=x_SEAT_SURFACE,tag=!x_SEAT_OCCUPIED] run title @s actionbar ["",{"text":"Release "},{"keybind":"key.sneak","color":"gold","bold":true},{"text":" and quickly press "},{"keybind":"key.use","color":"gold","bold":true},{"text":" to sit"}]  
execute as @a[tag=x_SEAT_NS,tag=x_MAY_SIT,tag=!x_MAY_SIT_SKIP,limit=1] at @s if entity @s[x_rotation=80..90] if data storage x_seat flags{showPrompts:1} if entity @s[nbt={SelectedItem:{}}] run title @s actionbar ["",{"text":"You must clear your main-hand before sitting!"}]   
execute as @a[tag=x_SEAT_NS,tag=x_MAY_SIT,tag=!x_MAY_SIT_SKIP,limit=1] at @s run tag @e remove x_SEAT_PLAYER_BASE
execute as @a[tag=x_SEAT_NS,tag=x_MAY_SIT,tag=!x_MAY_SIT_SKIP,limit=1] at @s run tag @s add x_MAY_SIT_SKIP
execute unless entity @a[tag=x_SEAT_NS,tag=x_MAY_SIT,tag=!x_MAY_SIT_SKIP] run tag @a remove x_MAY_SIT_SKIP

execute as @a[tag=x_SEAT_NS,tag=x_MAY_SIT,tag=!x_MAY_NOT_SIT] at @s if data storage x_seat flags{onlyIfSneaking:0} if entity @s[x_rotation=-90..80] run tag @s add x_MAY_NOT_SIT
execute as @a[tag=x_SEAT_NS,tag=x_MAY_SIT,tag=!x_MAY_NOT_SIT] at @s if data storage x_seat flags{onlyIfSneaking:1} if score @s x_SNEAK_TIME matches 0 unless entity @e[distance=..3,tag=x_SEAT_NS,tag=x_SEAT_SURFACE,tag=!x_SEAT_OCCUPIED] run tag @s add x_MAY_NOT_SIT
execute as @a[tag=x_SEAT_NS,tag=x_MAY_NOT_SIT] at @s if entity @s[nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT]}}},tag=!x_SEATED] if data storage x_seat flags{showPrompts:1} run tag @s add x_CLEAR_ABTITLE
execute as @a[tag=x_SEAT_NS,tag=x_MAY_NOT_SIT] at @s if entity @s[nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT]}}},tag=!x_SEATED] if data storage x_seat flags{showPrompts:1} run data modify storage x_core flags merge value {clearABTitle:1}     
execute as @a[tag=x_SEAT_NS,tag=x_MAY_NOT_SIT] at @s if entity @s[nbt=!{RootVehicle: {Entity:{Tags:[x_SEAT_NS,x_SEAT]}}},tag=!x_SEATED,tag=x_EID__SEAT] run scoreboard players remove @s x_EID__T 1
execute as @a[tag=x_SEAT_NS,tag=x_MAY_NOT_SIT] at @s if entity @s[nbt=!{RootVehicle: {Entity:{Tags:[x_SEAT_NS,x_SEAT]}}},tag=!x_SEATED,tag=x_EID__SEAT] run tag @s remove x_EID__SEAT
execute as @a[tag=x_SEAT_NS,tag=x_MAY_NOT_SIT] at @s run tag @s remove x_MAY_SIT_SKIP
execute as @a[tag=x_SEAT_NS,tag=x_MAY_NOT_SIT] at @s run tag @s remove x_MAY_SIT
execute as @a[tag=x_SEAT_NS,tag=x_MAY_NOT_SIT] at @s run tag @s remove x_MAY_NOT_SIT
execute as @a[tag=x_SEAT_NS,tag=x_SEATED,tag=!x_ADJUSTING_SEAT] at @s run scoreboard players reset @s x_SEAT_TICK
execute as @a[tag=x_SEAT_NS,tag=x_SEATED,tag=!x_ADJUSTING_SEAT] at @s if entity @s[x_rotation=80..90] if data storage x_seat flags{showPrompts:1} run title @s actionbar ["",{"text":"Scroll Up/Down","color":"gold","bold":true},{"text":" rapidly to enter "},{"text":"S.E.A.T Adjustment","color":"green","bold":true},{"text":" mode"}]      
execute as @a[tag=x_SEAT_NS,tag=x_SEATED,tag=!x_ADJUSTING_SEAT] at @s if entity @s[x_rotation=80..90] unless entity @s[tag=x_SCROLLBAR__SEAT] run tag @s add x_SEAT_NS
execute as @a[tag=x_SEAT_NS,tag=x_SEATED,tag=!x_ADJUSTING_SEAT] at @s if entity @s[x_rotation=80..90] unless entity @s[tag=x_SCROLLBAR__SEAT] run scoreboard players add @s x_SCROLLBAR__T 1
execute as @a[tag=x_SEAT_NS,tag=x_SEATED,tag=!x_ADJUSTING_SEAT] at @s if entity @s[x_rotation=80..90] unless entity @s[tag=x_SCROLLBAR__SEAT] run tag @s add x_SCROLLBAR
execute as @a[tag=x_SEAT_NS,tag=x_SEATED,tag=!x_ADJUSTING_SEAT] at @s if entity @s[x_rotation=80..90] unless entity @s[tag=x_SCROLLBAR__SEAT] run tag @s add x_SCROLLBAR__SEAT
execute as @a[tag=x_SEAT_NS,tag=x_SEATED,tag=!x_ADJUSTING_SEAT] at @s if entity @s[x_rotation=80..90] run tag @s add x_MAY_ADJUST_SEAT
execute as @a[tag=x_SEAT_NS,tag=x_MAY_ADJUST_SEAT,tag=!x_MAY_ADJUST_SEAT_SKIP,limit=1] at @s if entity @s[x_rotation=-90..80] if data storage x_seat flags{showPrompts:1} run tag @s add x_CLEAR_ABTITLE
execute as @a[tag=x_SEAT_NS,tag=x_MAY_ADJUST_SEAT,tag=!x_MAY_ADJUST_SEAT_SKIP,limit=1] at @s if entity @s[x_rotation=-90..80] if data storage x_seat flags{showPrompts:1} run data modify storage x_core flags merge value {clearABTitle:1}  
execute as @a[tag=x_SEAT_NS,tag=x_MAY_ADJUST_SEAT,tag=!x_MAY_ADJUST_SEAT_SKIP,limit=1] at @s if entity @s[x_rotation=-90..80] run scoreboard players reset @s x_SEAT_SCROLLED
execute as @a[tag=x_SEAT_NS,tag=x_MAY_ADJUST_SEAT,tag=!x_MAY_ADJUST_SEAT_SKIP,limit=1] at @s if entity @s[x_rotation=-90..80] if entity @s[tag=x_SCROLLBAR__SEAT] run scoreboard players remove @s x_SCROLLBAR__T 1
execute as @a[tag=x_SEAT_NS,tag=x_MAY_ADJUST_SEAT,tag=!x_MAY_ADJUST_SEAT_SKIP,limit=1] at @s if entity @s[x_rotation=-90..80] if entity @s[tag=x_SCROLLBAR__SEAT] run tag @s remove x_SCROLLBAR__SEAT
execute as @a[tag=x_SEAT_NS,tag=x_MAY_ADJUST_SEAT,tag=!x_MAY_ADJUST_SEAT_SKIP,limit=1] at @s if entity @s[x_rotation=-90..80] run tag @s remove x_MAY_ADJUST_SEAT
execute as @a[tag=x_SEAT_NS,tag=x_MAY_ADJUST_SEAT,tag=!x_MAY_ADJUST_SEAT_SKIP,limit=1] at @s if score @s x_SCROLL_DIR matches 0 run scoreboard players remove @s x_SEAT_SCROLLED 1
execute as @a[tag=x_SEAT_NS,tag=x_MAY_ADJUST_SEAT,tag=!x_MAY_ADJUST_SEAT_SKIP,limit=1] at @s unless score @s x_SCROLL_DIR matches 0 run scoreboard players add @s x_SEAT_SCROLLED 2
execute as @a[tag=x_SEAT_NS,tag=x_MAY_ADJUST_SEAT,tag=!x_MAY_ADJUST_SEAT_SKIP,limit=1] at @s if score @s x_SEAT_SCROLLED matches ..-1 run scoreboard players reset @s x_SEAT_SCROLLED
execute as @a[tag=x_SEAT_NS,tag=x_MAY_ADJUST_SEAT,tag=!x_MAY_ADJUST_SEAT_SKIP,limit=1] at @s if score @s x_SEAT_SCROLLED matches 18.. run scoreboard players set @s x_SEAT_TICK -20
execute as @a[tag=x_SEAT_NS,tag=x_MAY_ADJUST_SEAT,tag=!x_MAY_ADJUST_SEAT_SKIP,limit=1] at @s if score @s x_SEAT_SCROLLED matches 18.. as @e[tag=x_SEAT_ANCHOR] at @s if score @s x_SEAT_ID = @a[tag=x_MAY_ADJUST_SEAT,tag=!x_MAY_ADJUST_SEAT_SKIP,limit=1,sort=nearest] x_EID run tag @s add x_SEAT_ANCHOR_ADJUSTING
execute as @a[tag=x_SEAT_NS,tag=x_MAY_ADJUST_SEAT,tag=!x_MAY_ADJUST_SEAT_SKIP,limit=1] at @s if score @s x_SEAT_SCROLLED matches 18.. run tag @s add x_ADJUSTING_SEAT   
execute as @a[tag=x_SEAT_NS,tag=x_MAY_ADJUST_SEAT,tag=!x_MAY_ADJUST_SEAT_SKIP,limit=1] at @s if score @s x_SEAT_SCROLLED matches 18.. run tag @s remove x_MAY_ADJUST_SEAT
execute as @a[tag=x_SEAT_NS,tag=x_MAY_ADJUST_SEAT,tag=!x_MAY_ADJUST_SEAT_SKIP,limit=1] at @s run tag @s[tag=x_MAY_ADJUST_SEAT] add x_MAY_ADJUST_SEAT_SKIP
execute unless entity @a[tag=x_SEAT_NS,tag=x_MAY_ADJUST_SEAT,tag=!x_MAY_ADJUST_SEAT_SKIP] run tag @a remove x_MAY_ADJUST_SEAT_SKIP

execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s run scoreboard players reset @s x_SEAT_SCROLLED
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s if data storage x_seat flags{showPrompts:1} run title @s actionbar ["",{"text":"[S.E.A.T Adjustment Mode] ","color":"green","bold":true},{"text":"Look", "color":"gold", "bold":true},{"text":": Set Direction  ","color":"white"},{"text":"Scroll","color":"gold","bold":true},{"text":": Move  ","color":"white"},{"text":"Wait","color":"gold","bold":true},{"text":": Exit","color":"white"}]      
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s as @e[tag=x_SEAT_NS,tag=x_SEAT_OCCUPIED,tag=x_SEAT_BASE] at @s if score @s x_SEAT_ID = @a[tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_EID run tag @s add x_SEAT_PLAYER_BASE
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s if score @s x_SEAT_TICK matches 0.. if score @s x_SCROLL_DIR matches 1 as @e[tag=x_SEAT_PLAYER_BASE,limit=1,sort=nearest] at @s rotated as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] run tp @s ^ ^ ^-0.1
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s if score @s x_SEAT_TICK matches 0.. if score @s x_SCROLL_DIR matches 1 run scoreboard players reset @s x_SEAT_TICK
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s if score @s x_SEAT_TICK matches 0.. if score @s x_SCROLL_DIR matches -1 as @e[tag=x_SEAT_PLAYER_BASE,limit=1,sort=nearest] at @s rotated as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] run tp @s ^ ^ ^0.1
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s if score @s x_SEAT_TICK matches 0.. if score @s x_SCROLL_DIR matches -1 run scoreboard players reset @s x_SEAT_TICK
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s as @e[tag=x_SEAT_NS,tag=x_SEAT_ANCHOR] at @s if score @s x_SEAT_ID = @a[tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_EID store result score @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_R0 run data get entity @s Pos[0] 1000000
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s as @e[tag=x_SEAT_NS,tag=x_SEAT_ANCHOR] at @s if score @s x_SEAT_ID = @a[tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_EID store result score @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_R1 run data get entity @s Pos[1] 1000000
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s as @e[tag=x_SEAT_NS,tag=x_SEAT_ANCHOR] at @s if score @s x_SEAT_ID = @a[tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_EID store result score @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_R2 run data get entity @s Pos[2] 1000000
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s as @e[tag=x_SEAT_NS,tag=x_SEAT_OCCUPIED,tag=x_SEAT_BASE] at @s if score @s x_SEAT_ID = @a[tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_EID run tag @s remove x_ADJUST_ROTATE
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s as @e[tag=x_SEAT_NS,tag=x_SEAT_OCCUPIED,tag=x_SEAT_BASE] at @s if score @s x_SEAT_ID = @a[tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_EID run data modify entity @s Rotation[0] set from entity @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] Rotation[0]
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s as @e[tag=x_SEAT_NS,tag=x_SEAT_OCCUPIED,tag=x_SEAT_BASE] at @s if score @s x_SEAT_ID = @a[tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_EID store result score @s x_R0 run data get entity @s Pos[0] 1000000
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s as @e[tag=x_SEAT_NS,tag=x_SEAT_OCCUPIED,tag=x_SEAT_BASE] at @s if score @s x_SEAT_ID = @a[tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_EID run scoreboard players operation @s x_R0 -= @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_R0
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s as @e[tag=x_SEAT_NS,tag=x_SEAT_OCCUPIED,tag=x_SEAT_BASE] at @s if score @s x_SEAT_ID = @a[tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_EID run scoreboard players operation @s x_ATTACH_X = @s x_R0
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s as @e[tag=x_SEAT_NS,tag=x_SEAT_OCCUPIED,tag=x_SEAT_BASE] at @s if score @s x_SEAT_ID = @a[tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_EID store result score @s x_R0 run data get entity @s Pos[1] 1000000
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s as @e[tag=x_SEAT_NS,tag=x_SEAT_OCCUPIED,tag=x_SEAT_BASE] at @s if score @s x_SEAT_ID = @a[tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_EID run scoreboard players operation @s x_R0 -= @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_R1
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s as @e[tag=x_SEAT_NS,tag=x_SEAT_OCCUPIED,tag=x_SEAT_BASE] at @s if score @s x_SEAT_ID = @a[tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_EID run scoreboard players operation @s x_ATTACH_Y = @s x_R0
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s as @e[tag=x_SEAT_NS,tag=x_SEAT_OCCUPIED,tag=x_SEAT_BASE] at @s if score @s x_SEAT_ID = @a[tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_EID store result score @s x_R0 run data get entity @s Pos[2] 1000000
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s as @e[tag=x_SEAT_NS,tag=x_SEAT_OCCUPIED,tag=x_SEAT_BASE] at @s if score @s x_SEAT_ID = @a[tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_EID run scoreboard players operation @s x_R0 -= @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_R2
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s as @e[tag=x_SEAT_NS,tag=x_SEAT_OCCUPIED,tag=x_SEAT_BASE] at @s if score @s x_SEAT_ID = @a[tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_EID run scoreboard players operation @s x_ATTACH_Z = @s x_R0
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s if score @s x_SEAT_TICK matches 140.. if data storage x_seat flags{showPrompts:1} run tag @s add x_CLEAR_ABTITLE
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s if score @s x_SEAT_TICK matches 140.. if data storage x_seat flags{showPrompts:1} run data modify storage x_core flags merge value {clearABTitle:1}  
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s if score @s x_SEAT_TICK matches 140.. as @e[tag=x_SEAT_NS,tag=x_SEAT_ANCHOR] at @s if score @s x_SEAT_ID = @a[tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_EID store result score @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_R0 run data get entity @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] Rotation[0] 10
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s if score @s x_SEAT_TICK matches 140.. as @e[tag=x_SEAT_NS,tag=x_SEAT_ANCHOR] at @s if score @s x_SEAT_ID = @a[tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_EID store result score @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_R1 run data get entity @s Rotation[0] 10
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s if score @s x_SEAT_TICK matches 140.. as @e[tag=x_SEAT_NS,tag=x_SEAT_ANCHOR] at @s if score @s x_SEAT_ID = @a[tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_EID run scoreboard players operation @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_R0 -= @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_R1
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s if score @s x_SEAT_TICK matches 140.. as @e[tag=x_SEAT_NS,tag=x_SEAT_ANCHOR] at @s if score @s x_SEAT_ID = @a[tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_EID run tag @s remove x_SEAT_ANCHOR_ADJUSTING
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s if score @s x_SEAT_TICK matches 140.. as @e[tag=x_SEAT_NS,tag=x_SEAT_PLAYER_BASE,limit=1,sort=nearest] at @s run scoreboard players operation @s x_ATTACH_RY = @a[tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1,sort=nearest] x_R0
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s if score @s x_SEAT_TICK matches 140.. as @e[tag=x_SEAT_NS,tag=x_SEAT_PLAYER_BASE,limit=1,sort=nearest] at @s run tag @s add x_ATTACH_ROTATE
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s if score @s x_SEAT_TICK matches 140.. run tag @s remove x_ADJUSTING_SEAT
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s run scoreboard players add @s x_SEAT_TICK 1
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s run tag @e remove x_SEAT_PLAYER_BASE
execute as @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP,limit=1] at @s run tag @s[tag=x_ADJUSTING_SEAT] add x_ADJUSTING_SEAT_SKIP
execute unless entity @a[tag=x_SEAT_NS,tag=x_ADJUSTING_SEAT,tag=!x_ADJUSTING_SEAT_SKIP] run tag @a remove x_ADJUSTING_SEAT_SKIP

execute as @a[tag=x_SEAT_NS,tag=x_SEATED,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT_OCCUPIED,x_SEAT_BASE]}}},limit=1] at @s run tag @s add x_UNSEATING
execute as @a[tag=x_SEAT_NS,tag=x_SEATED,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT_OCCUPIED,x_SEAT_BASE]}}},limit=1] at @s as @e[tag=x_SEAT_NS,tag=x_SEAT_OCCUPIED,tag=x_SEAT_BASE] at @s if score @s x_SEAT_ID = @a[tag=x_UNSEATING,limit=1,sort=nearest] x_EID run tp @e[tag=x_SEAT_NS,tag=x_SEAT_OCCUPIED,tag=x_SEAT_SURFACE,limit=1,distance=..1,sort=nearest] ~ ~0.5 ~
execute as @a[tag=x_SEAT_NS,tag=x_SEATED,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT_OCCUPIED,x_SEAT_BASE]}}},limit=1] at @s as @e[tag=x_SEAT_NS,tag=x_SEAT_OCCUPIED,tag=x_SEAT_BASE] at @s if score @s x_SEAT_ID = @a[tag=x_UNSEATING,limit=1,sort=nearest] x_EID run tag @s add x_KILL_SEAT
execute as @a[tag=x_SEAT_NS,tag=x_SEATED,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT_OCCUPIED,x_SEAT_BASE]}}},limit=1] at @s as @e[tag=x_SEAT_NS,tag=x_SEAT_OCCUPIED,tag=x_SEAT_BASE] at @s if score @s x_SEAT_ID = @a[tag=x_UNSEATING,limit=1,sort=nearest] x_EID run schedule function x_seat:kill_seat 2t
execute as @a[tag=x_SEAT_NS,tag=x_SEATED,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT_OCCUPIED,x_SEAT_BASE]}}},limit=1] at @s as @e[tag=x_SEAT_NS,tag=x_SEAT_OCCUPIED,tag=x_SEAT_BASE] at @s if score @s x_SEAT_ID = @a[tag=x_UNSEATING,limit=1,sort=nearest] x_EID run tag @s remove x_SEAT_OCCUPIED
execute as @a[tag=x_SEAT_NS,tag=x_SEATED,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT_OCCUPIED,x_SEAT_BASE]}}},limit=1] at @s as @e[tag=x_SEAT_NS,tag=x_SEAT_OCCUPIED,tag=x_SEAT_SURFACE] at @s if score @s x_SEAT_ID = @a[tag=x_UNSEATING,limit=1,sort=nearest] x_EID unless entity @s[tag=x_KILL_SEAT] run schedule function x_seat:kill_seat 2t
execute as @a[tag=x_SEAT_NS,tag=x_SEATED,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT_OCCUPIED,x_SEAT_BASE]}}},limit=1] at @s as @e[tag=x_SEAT_NS,tag=x_SEAT_OCCUPIED,tag=x_SEAT_SURFACE] at @s if score @s x_SEAT_ID = @a[tag=x_UNSEATING,limit=1,sort=nearest] x_EID unless entity @s[tag=x_KILL_SEAT] run tag @s add x_KILL_SEAT
execute as @a[tag=x_SEAT_NS,tag=x_SEATED,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT_OCCUPIED,x_SEAT_BASE]}}},limit=1] at @s as @e[tag=x_SEAT_NS,tag=x_SEAT_OCCUPIED,tag=x_SEAT_SURFACE] at @s if score @s x_SEAT_ID = @a[tag=x_UNSEATING,limit=1,sort=nearest] x_EID run tag @s remove x_SEAT_OCCUPIED
execute as @a[tag=x_SEAT_NS,tag=x_SEATED,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT_OCCUPIED,x_SEAT_BASE]}}},limit=1] at @s run tag @s remove x_MAY_ADJUST_SEAT
execute as @a[tag=x_SEAT_NS,tag=x_SEATED,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT_OCCUPIED,x_SEAT_BASE]}}},limit=1] at @s run tag @s remove x_ADJUSTING_SEAT
execute as @a[tag=x_SEAT_NS,tag=x_SEATED,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT_OCCUPIED,x_SEAT_BASE]}}},limit=1] at @s run scoreboard players reset @s x_SEAT_SCROLLED
execute as @a[tag=x_SEAT_NS,tag=x_SEATED,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT_OCCUPIED,x_SEAT_BASE]}}},limit=1] at @s if entity @s[tag=x_SCROLLBAR__SEAT] run scoreboard players remove @s x_SCROLLBAR__T 1
execute as @a[tag=x_SEAT_NS,tag=x_SEATED,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT_OCCUPIED,x_SEAT_BASE]}}},limit=1] at @s if entity @s[tag=x_SCROLLBAR__SEAT] run tag @s remove x_SCROLLBAR__SEAT
execute as @a[tag=x_SEAT_NS,tag=x_SEATED,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT_OCCUPIED,x_SEAT_BASE]}}},limit=1] at @s if entity @s[tag=x_EID__SEAT] run scoreboard players remove @s x_EID__T 1
execute as @a[tag=x_SEAT_NS,tag=x_SEATED,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT_OCCUPIED,x_SEAT_BASE]}}},limit=1] at @s if entity @s[tag=x_EID__SEAT] run tag @s remove x_EID__SEAT
execute as @a[tag=x_SEAT_NS,tag=x_SEATED,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT_OCCUPIED,x_SEAT_BASE]}}},limit=1] at @s run scoreboard players reset @s x_SEAT_TICK
execute as @a[tag=x_SEAT_NS,tag=x_SEATED,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT_OCCUPIED,x_SEAT_BASE]}}},limit=1] at @s run tag @s remove x_UNSEATING
execute as @a[tag=x_SEAT_NS,tag=x_SEATED,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT_OCCUPIED,x_SEAT_BASE]}}},limit=1] at @s if data storage x_seat flags{showPrompts:1} run tag @s add x_CLEAR_ABTITLE
execute as @a[tag=x_SEAT_NS,tag=x_SEATED,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT_OCCUPIED,x_SEAT_BASE]}}},limit=1] at @s if data storage x_seat flags{showPrompts:1} run data modify storage x_core flags merge value {clearABTitle:1}  
execute as @a[tag=x_SEAT_NS,tag=x_SEATED,nbt=!{RootVehicle:{Entity:{Tags:[x_SEAT_NS,x_SEAT_OCCUPIED,x_SEAT_BASE]}}},limit=1] at @s run tag @s remove x_SEATED