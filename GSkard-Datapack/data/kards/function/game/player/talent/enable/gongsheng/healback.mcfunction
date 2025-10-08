#获取双方生命最多的玩家

tag @s add Talent_gongsheng_temp

scoreboard players reset @s temp

execute store result score @s temp_2 run data get entity @s Health

execute as @s[team=red] run scoreboard players operation @s temp > @a[team=red,gamemode=adventure,tag=!Talent_gongsheng_temp] Health
execute as @s[team=blue] run scoreboard players operation @s temp > @a[team=blue,gamemode=adventure,tag=!Talent_gongsheng_temp] Health

execute store result score @s HealBack run scoreboard players operation @s temp -= @s temp_2

scoreboard players reset @s[scores={HealBack=..-1}] HealBack

tag @s remove Talent_gongsheng_temp
