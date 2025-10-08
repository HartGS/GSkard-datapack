scoreboard players set @s death 0

tag @s remove XuanYun

scoreboard players reset @s Fire
scoreboard players reset @s DongJie
scoreboard players reset @s XuanYun
scoreboard players reset @s XuanZhuan

execute if entity @e[tag=droll,type=block_display] run advancement grant @s only kards:advancement/death_in_chunriying

function kards:game/end/bossbar_reset/1

execute as @s[tag=Talent_fushengzuzhou,tag=!Talent_fushengzuzhou_end] run return run function kards:game/player/talent/enable/fushengzuzhou/1

function kards:game/player/death/item/1
gamemode spectator @s

execute as @s[team=red,tag=!Talent_ranjiweiguang] as @a[tag=Talent_gongsheng,team=red,gamemode=adventure] run damage @s 1024 kards:gongsheng
execute as @s[team=blue,tag=!Talent_ranjiweiguang] as @a[tag=Talent_gongsheng,team=blue,gamemode=adventure] run damage @s 1024 kards:gongsheng

execute if entity @s[team=red] run scoreboard players add #system r_death 1
execute if entity @s[team=blue] run scoreboard players add #system b_death 1
tp @s @r[gamemode=adventure]

execute if score @s jinzijue matches 5..9 run advancement grant @s only kards:advancement/jinzijue/zhongdaobengcu
