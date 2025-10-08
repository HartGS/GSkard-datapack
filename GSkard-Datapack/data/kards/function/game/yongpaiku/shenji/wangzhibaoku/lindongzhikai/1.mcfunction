
scoreboard players remove @s lindongzhikai_lingyu 40

execute if entity @s[tag=lindongzhikai,team=red] run scoreboard players add @e[team=blue,distance=..6,tag=!tuteng,limit=3,sort=random,tag=!spectator,tag=!random_creaking] YongHan 3
execute if entity @s[tag=lindongzhikai,team=blue] run scoreboard players add @e[team=red,distance=..6,tag=!tuteng,limit=3,sort=random,tag=!spectator,tag=!random_creaking] YongHan 3

execute summon marker run function kards:game/yongpaiku/shenji/wangzhibaoku/lindongzhikai/particle/1
