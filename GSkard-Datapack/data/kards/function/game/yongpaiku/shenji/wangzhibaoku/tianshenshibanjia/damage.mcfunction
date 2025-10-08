

scoreboard players remove @s tianshenshibanjia_damage 1
damage @e[team=blue,distance=..4,limit=1,sort=random,tag=!spectator,tag=!random_creaking] 1 kards:tianshenshibanjia by @s[team=red]
damage @e[team=red,distance=..4,limit=1,sort=random,tag=!spectator,tag=!random_creaking] 1 kards:tianshenshibanjia by @s[team=blue]
execute if score @s tianshenshibanjia_damage matches 1.. run function kards:game/yongpaiku/shenji/wangzhibaoku/tianshenshibanjia/damage
