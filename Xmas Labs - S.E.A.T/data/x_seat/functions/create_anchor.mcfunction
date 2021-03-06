#######
# Compiled from data/x_seat/functions/create_anchor.mcscript
# to .//Xmas Labs - S.E.A.T/data/x_seat/functions/create_anchor.mcfunction
#
# Generated by Minecraft Script for 1.16
######


# S.E.A.T | create_anchor
# Creates a new S.E.A.T anchor


execute positioned as @s rotated as @s run summon minecraft:armor_stand ^ ^ ^ {Tags:[x_SYSTEM,x_EID,x_SEAT_NS,x_SEAT_UNLINKED,x_SEAT_ANCHOR,x_SEAT_NO_RIDE,x_NO_COLLIDE,x_KILL_ON_UNINSTALL,global.ignore,x_IGNORE_OVERRIDE],CustomName:"[\"\",{\"text\":\"S.E.A.T ANCHOR\"}]",Small:1,Marker:1,Invisible:1,Invulnerable:1} 
execute positioned as @s rotated as @s positioned ~ ~0.2 ~ if entity @s[tag=x_SEAT_LOW_ROOF] run tp @e[tag=x_SEAT_NS,tag=x_SEAT_ANCHOR,tag=x_SEAT_UNLINKED,sort=nearest,limit=1] ^ ^1.9 ^-0.2 facing ^ ^1.9 ^
execute positioned as @s rotated as @s if entity @s[tag=!x_SEAT_LOW_ROOF] run tp @e[tag=x_SEAT_NS,tag=x_SEAT_ANCHOR,tag=x_SEAT_UNLINKED,sort=nearest,limit=1] ^ ^1.9 ^-0.2 facing ^ ^1.9 ^
scoreboard players operation @e[tag=x_SEAT_NS,tag=x_SEAT_ANCHOR,tag=x_SEAT_UNLINKED,sort=nearest,limit=1] x_SEAT_ID = @s x_SEAT_ID
tag @e[tag=x_SEAT_NS,tag=x_SEAT_ANCHOR,tag=x_SEAT_UNLINKED,sort=nearest,limit=1] add x_ATTACH_NEW_PRIMARY
tag @s add x_ATTACH_NEW_SECONDARY
tag @e[tag=x_SEAT_NS,tag=x_SEAT_ANCHOR,tag=x_SEAT_UNLINKED,sort=nearest,limit=1] remove x_SEAT_UNLINKED
function x_core:create_attachment