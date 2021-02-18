#######
# Compiled from data/x_seat/functions/menu.mcscript
# to .//Xmas Labs - S.E.A.T/data/x_seat/functions/menu.mcfunction
#
# Generated by Minecraft Script for 1.16
######


# S.E.A.T | menu
# A chat menu for configuring S.E.A.T


scoreboard players reset @s S.E.A.T
execute unless score @s x_SEAT_MENU matches 100.. run scoreboard players set @s x_SEAT_MENU 100

execute if score @s x_SEAT_MENU matches 100..499 if data storage x_seat flags{enabled:1} run tellraw @s ["",{"text":"\n Xmas Labs ¦ S.E.A.T v1.16.5.06 \n","color":"gold","bold":true},{"text":" • GLOBAL Menu •   ","color":"aqua"},{"text":" ⏸ ","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 11"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Pause Pack for ALL players","color":"white"}]}},{"text":"⏏ ","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 21"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Uninstall Pack","color":"white"}]}},"\n"]
execute if score @s x_SEAT_MENU matches 100..499 unless data storage x_seat flags{enabled:1} run tellraw @s ["",{"text":"\n Xmas Labs ¦ S.E.A.T v1.16.5.06\n","color":"gold","bold":true},{"text":" • GLOBAL Menu •   ","color":"aqua"},{"text":" ▶ ","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 12"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Unpause Pack","color":"white"}]}},{"text":"⏏ ","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 21"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Uninstall Pack","color":"white"}]}},"\n"]

execute if score @s x_SEAT_MENU matches 100..199 if data storage x_seat flags{physics:2} run tellraw @s [{"text":" ☑ FORCE Physics  ","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 111"},"hoverEvent":{"action":"show_text","contents":["",{"text":"FORCE Physics","bold":true,"underlined":true,"color":"gold"},"\nThis feature FORCES ALL players to be responsive to world physics while seated. Keep it ON if you want them to fall, bounce, slide, etc while sitting. Turn it OFF to improve performance and avoid glitches."]}}]
execute if score @s x_SEAT_MENU matches 100..199 if data storage x_seat flags{physics:1} run tellraw @s [{"text":" ☑ ALLOW Physics  ","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 112"},"hoverEvent":{"action":"show_text","contents":["",{"text":"ALLOW Physics","bold":true,"underlined":true,"color":"gold"},"\nThis feature ALLOWS ALL players to be responsive to world physics while seated. Keep it ON if you want to allow them to fall, bounce, slide, etc while sitting. Turn it OFF to improve performance and avoid glitches."]}}]
execute if score @s x_SEAT_MENU matches 100..199 if data storage x_seat flags{physics:0} run tellraw @s [{"text":" ☒ ALLOW Physics  ","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 113"},"hoverEvent":{"action":"show_text","contents":["",{"text":"ALLOW Physics","bold":true,"underlined":true,"color":"gold"},"\nThis feature makes ALL players responsive to world physics while seated. Keep it ON if you want to allow them to fall, bounce, slide, etc while sitting. Turn it OFF to improve performance and avoid glitches."]}}]
execute if score @s x_SEAT_MENU matches 100..199 if data storage x_seat flags{rotationLock:2} run tellraw @s [{"text":" ☑ FORCE Rotation Lock  ","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 121"},"hoverEvent":{"action":"show_text","contents":["",{"text":"FORCE Rotation Lock","bold":true,"underlined":true,"color":"gold"},"\nTurn ON to FORCE-lock S.E.A.T rotation for ALL players. Makes seated movement look more natural, especially when riding mobs, but restricts their freedom of rotation. Also causes a bug where their inventory will auto-close if sitting on an entity that rotates. This setting is ignored in S.E.A.T Adjustment Mode. "]}}]
execute if score @s x_SEAT_MENU matches 100..199 if data storage x_seat flags{rotationLock:1} run tellraw @s [{"text":" ☑ ALLOW Rotation Lock  ","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 122"},"hoverEvent":{"action":"show_text","contents":["",{"text":"ALLOW Rotation Lock","bold":true,"underlined":true,"color":"gold"},"\nTurn ON to ALLOW ALL players to lock their S.E.A.T rotation. Makes seated movement look more natural, especially when riding mobs, but restricts their freedom of rotation. Also causes a bug where their inventory will auto-close if sitting on an entity that rotates. This setting is ignored in S.E.A.T Adjustment Mode. "]}}]
execute if score @s x_SEAT_MENU matches 100..199 if data storage x_seat flags{rotationLock:0} run tellraw @s [{"text":" ☒ ALLOW Rotation Lock  ","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 123"},"hoverEvent":{"action":"show_text","contents":["",{"text":"ALLOW Rotation Lock","bold":true,"underlined":true,"color":"gold"},"\nTurn ON to ALLOW ALL players to lock their S.E.A.T rotation. Makes seated movement look more natural, especially when riding mobs, but restricts their freedom of rotation. Also causes a bug where their inventory will auto-close if sitting on an entity that rotates. This setting is ignored in S.E.A.T Adjustment Mode."]}}]
execute if score @s x_SEAT_MENU matches 100..199 if data storage x_seat flags{onlyIfSneaking:2} run tellraw @s [{"text":" ☑ FORCE Only If Sneaking  ","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 131"},"hoverEvent":{"action":"show_text","contents":["",{"text":"FORCE Only If Sneaking","bold":true,"underlined":true,"color":"gold"},"\nMakes sitting slightly more complicated. If ON, FORCES ALL players to sneak for a bit while looking down, then release sneak and right-click to sit. Takes some getting used to, but stops them from unintentionally sitting on things. Also looks more realistic."]}}]
execute if score @s x_SEAT_MENU matches 100..199 if data storage x_seat flags{onlyIfSneaking:1} run tellraw @s [{"text":" ☑ ALLOW Only If Sneaking  ","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 132"},"hoverEvent":{"action":"show_text","contents":["",{"text":"ALLOW Only If Sneaking","bold":true,"underlined":true,"color":"gold"},"\nMakes sitting slightly more complicated. If ON, ALLOWS ALL players to sneak for a bit while looking down, then release sneak and right-click to sit. Takes some getting used to, but stops them from unintentionally sitting on things. Also looks more realistic."]}}]
execute if score @s x_SEAT_MENU matches 100..199 if data storage x_seat flags{onlyIfSneaking:0} run tellraw @s [{"text":" ☒ ALLOW Only If Sneaking  ","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 133"},"hoverEvent":{"action":"show_text","contents":["",{"text":"ALLOW Only If Sneaking","bold":true,"underlined":true,"color":"gold"},"\nMakes sitting slightly more complicated. If ON, ALLOWS ALL players to sneak for a bit while looking down, then release sneak and right-click to sit. Takes some getting used to, but stops them from unintentionally sitting on things. Also looks more realistic."]}}]
execute if score @s x_SEAT_MENU matches 100..199 run tellraw @s ["",{"text":"\n ◀ ","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"Previous Page","color":"white"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 400"}},{"text":"Page 1/4","color":"aqua"},{"text":" ▶","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"Next Page","color":"white"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 200"}},"      ",{"text":"✕ Close Menu","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"Clear Chat & Menu","color":"white"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 500"}}]

execute if score @s x_SEAT_MENU matches 200..299 if data storage x_seat flags{bounceOffFloor:2} run tellraw @s [{"text":" ☑ FORCE Bounce Off Floor  ","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 211"},"hoverEvent":{"action":"show_text","contents":["",{"text":"FORCE Bounce Off Floor","bold":true,"underlined":true,"color":"gold"},"\nBy default, falling on bouncy surfaces looks strange as the player seems to bounce mid-air. Turning this ON will FORCE-fix that for ALL players but might cause the bounce to look less realistic."]}}]
execute if score @s x_SEAT_MENU matches 200..299 if data storage x_seat flags{bounceOffFloor:1} run tellraw @s [{"text":" ☑ ALLOW Bounce Off Floor  ","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 212"},"hoverEvent":{"action":"show_text","contents":["",{"text":"ALLOW Bounce Off Floor","bold":true,"underlined":true,"color":"gold"},"\nBy default, falling on bouncy surfaces looks strange as the player seems to bounce mid-air. Turning this ON will ALLOW ALL players to fix that but might cause the bounce to look less realistic."]}}]
execute if score @s x_SEAT_MENU matches 200..299 if data storage x_seat flags{bounceOffFloor:0} run tellraw @s [{"text":" ☒ ALLOW Bounce Off Floor  ","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 213"},"hoverEvent":{"action":"show_text","contents":["",{"text":"ALLOW Bounce Off Floor","bold":true,"underlined":true,"color":"gold"},"\nBy default, falling on bouncy surfaces looks strange as the player seems to bounce mid-air. Turning this ON will ALLOW ALL players to fix that but might cause the bounce to look less realistic."]}}]
execute if score @s x_SEAT_MENU matches 200..299 if data storage x_seat flags{onlySitDown:2} run tellraw @s [{"text":" ☑ FORCE Only Sit Down  ","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 221"},"hoverEvent":{"action":"show_text","contents":["",{"text":"FORCE Only Sit Down","bold":true,"underlined":true,"color":"gold"},"\nBy default, S.E.A.T tries to seat players on any sittable surface directly behind them. If it doesn't find any, it seats them on/in whatever block they're standing on/in. Turning this ON makes S.E.A.T FORCE ALL players to only use the block they're standing on/in."]}}]
execute if score @s x_SEAT_MENU matches 200..299 if data storage x_seat flags{onlySitDown:1} run tellraw @s [{"text":" ☑ ALLOW Only Sit Down  ","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 222"},"hoverEvent":{"action":"show_text","contents":["",{"text":"ALLOW Only Sit Down","bold":true,"underlined":true,"color":"gold"},"\nBy default, S.E.A.T tries to seat players on any sittable surface directly behind them. If it doesn't find any, it seats them on/in whatever block they're standing on/in. Turning this ON makes S.E.A.T ALLOW ALL players to only use the block they're standing on/in."]}}]
execute if score @s x_SEAT_MENU matches 200..299 if data storage x_seat flags{onlySitDown:0} run tellraw @s [{"text":" ☒ ALLOW Only Sit Down  ","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 223"},"hoverEvent":{"action":"show_text","contents":["",{"text":"ALLOW Only Sit Down","bold":true,"underlined":true,"color":"gold"},"\nBy default, S.E.A.T tries to seat players on any sittable surface directly behind them. If it doesn't find any, it seats them on/in whatever block they're standing on/in. Turning this ON makes S.E.A.T ALLOW ALL players to only use the block they're standing on/in."]}}]
execute if score @s x_SEAT_MENU matches 200..299 if data storage x_seat flags{freezeRideOnAdjust:2} run tellraw @s [{"text":" ☑ FORCE Freeze Ride On Adjust  ","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 231"},"hoverEvent":{"action":"show_text","contents":["",{"text":"FORCE Freeze Ride On Adjust","bold":true,"underlined":true,"color":"gold"},"\nKeeping this ON will FORCE ALL players to temporarily disable AI in the entity/mob they're sitting on while in S.E.A.T Adjustment Mode. This makes adjustment much easier but might cause issues with the mob/entity they're sitting on since it resets their state."]}}]
execute if score @s x_SEAT_MENU matches 200..299 if data storage x_seat flags{freezeRideOnAdjust:1} run tellraw @s [{"text":" ☑ ALLOW Freeze Ride On Adjust  ","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 232"},"hoverEvent":{"action":"show_text","contents":["",{"text":"ALLOW Freeze Ride On Adjust","bold":true,"underlined":true,"color":"gold"},"\nKeeping this ON will ALLOW ALL players to temporarily disable AI in the entity/mob they're sitting on while in S.E.A.T Adjustment Mode. This makes adjustment much easier but might cause issues with the mob/entity they're sitting on since it resets their state."]}}]
execute if score @s x_SEAT_MENU matches 200..299 if data storage x_seat flags{freezeRideOnAdjust:0} run tellraw @s [{"text":" ☒ ALLOW Freeze Ride On Adjust  ]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 233"},"hoverEvent":{"action":"show_text","contents":["",{"text":"ALLOW Freeze Ride On Adjust","bold":true,"underlined":true,"color":"gold"},"\nKeeping this ON will ALLOW ALL players to temporarily disable AI in the entity/mob they're sitting on while in S.E.A.T Adjustment Mode. This makes adjustment much easier but might cause issues with the mob/entity they're sitting on since it resets their state."]}}]
execute if score @s x_SEAT_MENU matches 200..299 run tellraw @s ["",{"text":"\n ◀ ","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"Previous Page","color":"white"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 100"}},{"text":"Page 2/4","color":"aqua"},{"text":" ▶","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"Next Page","color":"white"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 300"}},"      ",{"text":"✕ Close Menu","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"Clear Chat & Menu","color":"white"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 500"}}]

execute if score @s x_SEAT_MENU matches 300..399 if data storage x_seat flags{seatAdjustment:2} run tellraw @s [{"text":" ☑ FORCE Seated Adjustment  ","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 311"},"hoverEvent":{"action":"show_text","contents":["",{"text":"FORCE Seated Adjustment","bold":true,"underlined":true,"color":"gold"},"\nTurn ON to FORCE-enable S.E.A.T Adjustment Mode for ALL players. Seated players can scroll while looking down to start adjusting."]}}]
execute if score @s x_SEAT_MENU matches 300..399 if data storage x_seat flags{seatAdjustment:1} run tellraw @s [{"text":" ☑ ALLOW Seated Adjustment  ","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 312"},"hoverEvent":{"action":"show_text","contents":["",{"text":"ALLOW Seated Adjustment","bold":true,"underlined":true,"color":"gold"},"\nTurn ON to ALLOW S.E.A.T Adjustment Mode for ALL players. Seated players can scroll while looking down to start adjusting."]}}]
execute if score @s x_SEAT_MENU matches 300..399 if data storage x_seat flags{seatAdjustment:0} run tellraw @s [{"text":" ☒ ALLOW Seated Adjustment  ","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 313"},"hoverEvent":{"action":"show_text","contents":["",{"text":"ALLOW Seated Adjustment","bold":true,"underlined":true,"color":"gold"},"\nTurn ON to ALLOW S.E.A.T Adjustment Mode for ALL players. Seated players can scroll while looking down to start adjusting."]}}]
execute if score @s x_SEAT_MENU matches 300..399 if data storage x_seat flags{sitOnMobs:2} run tellraw @s [{"text":" ☑ FORCE Sit On Mobs  ","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 321"},"hoverEvent":{"action":"show_text","contents":["",{"text":"FORCE Sit On Mobs","bold":true,"underlined":true,"color":"gold"},"\nKeep this ON to ALLOW ALL players to sit on mobs. This might prevent sitting in some spots that are too close to mobs."]}}]
execute if score @s x_SEAT_MENU matches 300..399 if data storage x_seat flags{sitOnMobs:1} run tellraw @s [{"text":" ☑ ALLOW Sit On Mobs  ","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 322"},"hoverEvent":{"action":"show_text","contents":["",{"text":"ALLOW Sit On Mobs","bold":true,"underlined":true,"color":"gold"},"\nKeep this ON to ALLOW ALL players to sit on mobs. This might prevent sitting in some spots that are too close to mobs."]}}]
execute if score @s x_SEAT_MENU matches 300..399 if data storage x_seat flags{sitOnMobs:0} run tellraw @s [{"text":" ☒ ALLOW Sit On Mobs  ","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 323"},"hoverEvent":{"action":"show_text","contents":["",{"text":"ALLOW Sit On Mobs","bold":true,"underlined":true,"color":"gold"},"\nKeep this ON to ALLOW ALL players to sit on mobs. This might prevent sitting in some spots that are too close to mobs."]}}]
execute if score @s x_SEAT_MENU matches 300..399 if data storage x_seat flags{adjustmentLimits:2} run tellraw @s [{"text":" ☑ FORCE Adjustment Limits  ","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 331"},"hoverEvent":{"action":"show_text","contents":["",{"text":"FORCE Adjustment Limits","bold":true,"underlined":true,"color":"gold"},"\nTurning this ON FORCE-prevents ALL players from adjusting too far away from their initial position. This stops players from exploiting Adjustment Mode to fly or move through walls."]}}]
execute if score @s x_SEAT_MENU matches 300..399 if data storage x_seat flags{adjustmentLimits:1} run tellraw @s [{"text":" ☑ ALLOW Adjustment Limits  ","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 332"},"hoverEvent":{"action":"show_text","contents":["",{"text":"ALLOW Adjustment Limits","bold":true,"underlined":true,"color":"gold"},"\nTurning this ON ALLOWS ALL players to avoid adjusting too far away from their initial position. This stops players from exploiting Adjustment Mode to fly or move through walls."]}}]
execute if score @s x_SEAT_MENU matches 300..399 if data storage x_seat flags{adjustmentLimits:0} run tellraw @s [{"text":" ☒ ALLOW Adjustment Limits  ","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 333"},"hoverEvent":{"action":"show_text","contents":["",{"text":"ALLOW Adjustment Limits","bold":true,"underlined":true,"color":"gold"},"\nTurning this ON ALLOWS ALL players to avoid adjusting too far away from their initial position. This stops players from exploiting Adjustment Mode to fly or move through walls."]}}]
execute if score @s x_SEAT_MENU matches 300..399 run tellraw @s ["",{"text":"\n ◀ ","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"Previous Page","color":"white"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 200"}},{"text":"Page 3/4","color":"aqua"},{"text":" ▶","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"Next Page","color":"white"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 400"}},"      ",{"text":"✕ Close Menu","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"Clear Chat & Menu","color":"white"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 500"}}]

execute if score @s x_SEAT_MENU matches 400..499 if data storage x_seat flags{fallDamage:2} run tellraw @s [{"text":" ☑ FORCE Fall Damage  ","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 311"},"hoverEvent":{"action":"show_text","contents":["",{"text":"FORCE Fall Damage","bold":true,"underlined":true,"color":"gold"},"\nKeep this ON to FORCE-apply fall damage to ALL seated players when falling. No reason to turn this OFF unless you're playing it super safe."]}}]
execute if score @s x_SEAT_MENU matches 400..499 if data storage x_seat flags{fallDamage:1} run tellraw @s [{"text":" ☑ ALLOW Fall Damage  ","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 412"},"hoverEvent":{"action":"show_text","contents":["",{"text":"ALLOW Fall Damage","bold":true,"underlined":true,"color":"gold"},"\nKeep this ON to ALLOW ALL seated players to take fall damage while falling. No reason to turn this OFF unless you're playing it super safe."]}}]
execute if score @s x_SEAT_MENU matches 400..499 if data storage x_seat flags{fallDamage:0} run tellraw @s [{"text":" ☒ ALLOW Fall Damage  ","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 413"},"hoverEvent":{"action":"show_text","contents":["",{"text":"ALLOW Fall Damage","bold":true,"underlined":true,"color":"gold"},"\nKeep this ON to ALLOW ALL seated players to take fall damage while falling. No reason to turn this OFF unless you're playing it super safe."]}}]
execute if score @s x_SEAT_MENU matches 400..499 if data storage x_seat flags{blockInventory:2} run tellraw @s [{"text":" ☑ FORCE Block Inventory  ","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 421"},"hoverEvent":{"action":"show_text","contents":["",{"text":"FORCE Block Inventory","bold":true,"underlined":true,"color":"gold"},"\nFORCE-prevents ALL players from accessing their inventory while seated. This 'feature' only exists to hide the non-functional inventory GUI added by S.E.A.T components. Turning this OFF will allow seated inventory access but might break immersion."]}}]
execute if score @s x_SEAT_MENU matches 400..499 if data storage x_seat flags{blockInventory:1} run tellraw @s [{"text":" ☑ ALLOW Block Inventory  ","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 422"},"hoverEvent":{"action":"show_text","contents":["",{"text":"ALLOW Block Inventory","bold":true,"underlined":true,"color":"gold"},"\nALLOWS ALL players to avoid accessing their inventory while seated. This 'feature' only exists to hide the non-functional inventory GUI added by S.E.A.T components. Turning this OFF will allow seated inventory access but might break immersion."]}}]
execute if score @s x_SEAT_MENU matches 400..499 if data storage x_seat flags{blockInventory:0} run tellraw @s [{"text":" ☒ ALLOW Block Inventory  ","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 423"},"hoverEvent":{"action":"show_text","contents":["",{"text":"ALLOW Block Inventory","bold":true,"underlined":true,"color":"gold"},"\nALLOWS ALL players to avoid accessing their inventory while seated. This 'feature' only exists to hide the non-functional inventory GUI added by S.E.A.T components. Turning this OFF will allow seated inventory access but might break immersion."]}}]
execute if score @s x_SEAT_MENU matches 400..499 if data storage x_seat flags{showPrompts:2} run tellraw @s [{"text":" ☑ FORCE Show Prompts  ","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 431"},"hoverEvent":{"action":"show_text","contents":["",{"text":"FORCE Show Prompts","bold":true,"underlined":true,"color":"gold"},"\nTurn this ON to FORCE sitting instruction prompts for ALL players. This will make things easier for players new to the pack."]}}]
execute if score @s x_SEAT_MENU matches 400..499 if data storage x_seat flags{showPrompts:1} run tellraw @s [{"text":" ☑ ALLOW Show Prompts  ","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 432"},"hoverEvent":{"action":"show_text","contents":["",{"text":"ALLOW Show Prompts","bold":true,"underlined":true,"color":"gold"},"\nTurn this ON to ALLOW sitting instruction prompts for ALL players.This will make things easier for players new to the pack."]}}]
execute if score @s x_SEAT_MENU matches 400..499 if data storage x_seat flags{showPrompts:0} run tellraw @s [{"text":" ☒ ALLOW Show Prompts  ","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 433"},"hoverEvent":{"action":"show_text","contents":["",{"text":"ALLOW Show Prompts","bold":true,"underlined":true,"color":"gold"},"\nTurn this ON to ALLOW sitting instruction prompts for ALL players. This will make things easier for players new to the pack."]}}]
execute if score @s x_SEAT_MENU matches 400..499 run tellraw @s ["",{"text":"\n ◀ ","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"Previous Page","color":"white"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 300"}},{"text":"Page 4/4","color":"aqua"},{"text":" ▶","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"Next Page","color":"white"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 100"}},"      ",{"text":"✕ Close Menu","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"Clear Chat & Menu","color":"white"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set @s x_SEAT_MENU 500"}}]

tellraw @s ""