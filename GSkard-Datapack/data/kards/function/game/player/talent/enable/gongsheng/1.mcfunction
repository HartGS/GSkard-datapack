#获取双方生命最多的玩家

tag @s add Talent_gongsheng_temp

scoreboard players reset @s temp

execute as @s[team=red] run scoreboard players operation @s temp > @a[team=red,gamemode=adventure,tag=!Talent_gongsheng_temp] Health
execute as @s[team=blue] run scoreboard players operation @s temp > @a[team=blue,gamemode=adventure,tag=!Talent_gongsheng_temp] Health

execute if score @s health = @s temp run scoreboard players set @s Talent_gongsheng 2
execute if score @s health > @s temp run scoreboard players set @s Talent_gongsheng 1
execute if score @s health < @s temp run scoreboard players set @s Talent_gongsheng 0

execute if score @s Talent_gongsheng matches 1 as @s[team=red] run scoreboard players operation @s Talent_gongsheng_damage > @a[team=red,gamemode=adventure,tag=!Talent_gongsheng_temp] Health
execute if score @s Talent_gongsheng matches 1 as @s[team=blue] run scoreboard players operation @s Talent_gongsheng_damage > @a[team=blue,gamemode=adventure,tag=!Talent_gongsheng_temp] Health
execute if score @s Talent_gongsheng matches 1 run scoreboard players operation @s Talent_gongsheng_damage -= @s health

execute if score @s Talent_gongsheng matches 1 run function kards:game/player/talent/enable/gongsheng/2

tag @s remove Talent_gongsheng_temp