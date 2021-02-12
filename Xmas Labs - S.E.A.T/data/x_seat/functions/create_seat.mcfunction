#######
# Compiled from data/x_seat/functions/create_seat.mcscript
# to .//Xmas Labs - S.E.A.T/data/x_seat/functions/create_seat.mcfunction
#
# Generated by Minecraft Script for 1.16
######


# S.E.A.T | create_seat
# Creates a new S.E.A.T


execute positioned as @s run summon minecraft:fox ~ 999 ~ {Tags:[x_SYSTEM,x_EID,x_SEAT_NS,x_SEAT_UNLINKED,x_SEAT,x_SEAT_BASE,x_SEAT_NO_RIDE,x_NO_COLLIDE,x_KILL_ON_UNINSTALL],CustomName:"[\"\",{\"text\":\"S.E.A.T BASE\"}]",ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b,Ambient:1b}],Glowing:0,DeathTime:10,NoAI:1,Health:1000000,Silent:1,Invulnerable:0,DeathLootTable:"minecraft:empty", Age:-2147483648, Sleeping:1, ForcedAge:-2147483648, InLove:0, Attributes:[{Name:"generic.movement_speed",Base:-1000},{Name:"generic.max_health",Base:1000000}], Passengers:[{id:"minecraft:llama",Tags:[x_SYSTEM,x_SEAT_NS,x_SEAT_UNLINKED,x_SEAT,x_SEAT_SURFACE,x_SEAT_NO_RIDE,x_NO_COLLIDE,x_KILL_ON_UNINSTALL],CustomName:"[\"\",{\"text\":\" \"}]",Attributes:[{Name:"generic.movement_speed",Base:-1000},{Name:"generic.max_health",Base:10}],Tame:1,Silent:1,Glowing:0,DeathTime:10,NoAI:1,Health:10,Invulnerable:1,DeathLootTable:"minecraft:empty",Saddle:1,ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b,Ambient:1b}]}]}
execute positioned as @s rotated ~ 0 run tp @e[tag=x_SEAT_NS,tag=x_SEAT_BASE,tag=x_SEAT_UNLINKED,tag=!x_TP_KILL,sort=nearest,limit=1] ~ ~-1.4 ~ facing ^ ^-1.6 ^2
execute positioned as @s as @e[tag=x_SEAT_NS,tag=x_SEAT_SURFACE,tag=x_SEAT_UNLINKED,tag=!x_TP_KILL,sort=nearest,limit=1] at @s run scoreboard players operation @s x_SEAT_ID = @a[tag=x_EID,tag=x_SEAT_NS,tag=x_MAY_SIT,tag=!x_MAY_SIT_SKIP,sort=nearest,limit=1] x_EID
execute positioned as @s as @e[tag=x_SEAT_NS,tag=x_SEAT_SURFACE,tag=x_SEAT_UNLINKED,tag=!x_TP_KILL,sort=nearest,limit=1] at @s run tag @s remove x_SEAT_UNLINKED
execute positioned as @s as @e[tag=x_SEAT_NS,tag=x_SEAT_BASE,tag=x_SEAT_UNLINKED,tag=!x_TP_KILL,sort=nearest,limit=1] at @s run scoreboard players operation @s x_SEAT_ID = @a[tag=x_EID,tag=x_SEAT_NS,tag=x_MAY_SIT,tag=!x_MAY_SIT_SKIP,sort=nearest,limit=1] x_EID
execute positioned as @s as @e[tag=x_SEAT_NS,tag=x_SEAT_BASE,tag=x_SEAT_UNLINKED,tag=!x_TP_KILL,sort=nearest,limit=1] at @s run scoreboard players set @s x_SEAT_TICK 40
execute positioned as @s as @e[tag=x_SEAT_NS,tag=x_SEAT_BASE,tag=x_SEAT_UNLINKED,tag=!x_TP_KILL,sort=nearest,limit=1] at @s run tag @s remove x_SEAT_UNLINKED