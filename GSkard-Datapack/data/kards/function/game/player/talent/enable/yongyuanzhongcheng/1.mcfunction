execute as @s[team=red,tag=Talent_yongyuanzhongcheng] as @e[type=#kards:mob,tag=!tuteng,team=red,tag=!yongyuanzhongcheng_rided] at @s run function kards:game/player/talent/enable/yongyuanzhongcheng/2
execute as @s[team=blue,tag=Talent_yongyuanzhongcheng] as @e[type=#kards:mob,tag=!tuteng,team=blue,tag=!yongyuanzhongcheng_rided] at @s run function kards:game/player/talent/enable/yongyuanzhongcheng/2

execute if entity @e[tag=yongyuanzhongcheng_Marker] as @e[tag=yongyuanzhongcheng_Marker] run function kards:game/player/talent/enable/yongyuanzhongcheng/3