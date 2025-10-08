#蜜蜂
execute if entity @e[type=bee,distance=0.1..] as @e[type=bee] run data modify entity @s HasStung set value 0b
#末影人
execute if entity @e[type=enderman,distance=0.1..] run function kards:game/ingame/mob/enderman
#潜影贝
execute if entity @e[type=shulker,distance=0.1..] run function kards:game/ingame/mob/shulker
#无人机
execute if entity @e[tag=wurenji,distance=0.1..] run function kards:game/ingame/mob/wurenji
#唤魔者
execute if entity @e[type=evoker,distance=0.1..] run function kards:game/ingame/mob/evoker
#幻术师
execute if entity @e[type=illusioner,distance=0.1..] run function kards:game/ingame/mob/illusioner
#死灵巫师
execute if entity @e[type=skeleton,tag=silingwushi,distance=0.1..] run function kards:game/ingame/mob/silingwushi
#监守者
execute if entity @e[type=warden,tag=warden,distance=0.1..] run function kards:game/ingame/mob/warden
#舞王僵尸
execute if entity @e[tag=wuwangjiangshi,distance=0.1..] run function kards:game/ingame/mob/wuwangjiangshi
#三人成众
execute if entity @e[tag=sanrenchengzhong,distance=0.1..] run function kards:game/ingame/mob/sanrenchengzhong
#尸帝
execute if entity @e[tag=sanrenchengzhong,distance=0.1..] as @e[tag=shidi_master,team=red,distance=0.1..] at @s run effect give @e[tag=!shidi_master,team=red,distance=..5] minecraft:resistance 1 0 false
execute if entity @e[tag=sanrenchengzhong,distance=0.1..] as @e[tag=shidi_master,team=blue,distance=0.1..] at @s run effect give @e[tag=!shidi_master,team=blue,distance=..5] minecraft:resistance 1 0 false
#爆炸军团
execute if entity @e[tag=baozhajuntuan,distance=0.1..] run function kards:game/ingame/mob/baozhajuntuan/1
#末日来临
execute if entity @e[tag=morilailing,distance=0.1..] run function kards:game/ingame/mob/morilailing/1
#亡灵大军
execute if entity @e[tag=wanglingdajun,distance=0.1..] run function kards:game/ingame/mob/wanglingdajun
#小鬼当家
execute if entity @e[tag=xiaoguidangjia,distance=0.1..] run function kards:game/ingame/mob/xiaoguidangjia
