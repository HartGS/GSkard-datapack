execute store result storage temp kardCount int 0.7 run scoreboard players get @s kardCountmax
execute store result score @s temp run data get storage temp kardCount
scoreboard players operation @s kardCount += @s temp