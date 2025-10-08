advancement revoke @s only kards:talent/dengshenchangjie
execute unless entity @s[tag=Talent_dengshenchangjie] run return fail

scoreboard players add @s Talent_dengshenchangjie 1
execute store result storage kards:talent dengshenchangjie double 0.0075 store result storage kards:talent dengshenchangjie_tellraw double 0.75 run scoreboard players get @s Talent_dengshenchangjie


function kards:game/player/talent/enable/dengshenchangjie/1 with storage kards:talent