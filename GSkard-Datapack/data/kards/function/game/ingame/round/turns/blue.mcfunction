title @a title [{text: "蓝方回合",color:"blue",bold:true}]
bossbar set minecraft:roundtime color white
scoreboard players set @a[team=red] CanuseKard 0
scoreboard players set @a[team=blue] CanuseKard 1
scoreboard players set @a[team=red] Skip_Round 0
scoreboard players set @a[team=blue] Skip_Round 1
execute as @e[type=#kards:mob,tag=!tuteng,team=red] run data modify entity @s NoAI set value 1b
execute as @e[type=#kards:mob,tag=!tuteng,team=red] run data modify entity @s Invulnerable set value 1b
execute as @e[type=#kards:mob,tag=!tuteng,team=red] run data modify entity @s Silent set value 1b

execute as @e[type=#kards:mob,tag=!tuteng,team=blue] run data modify entity @s NoAI set value 0b
execute as @e[type=#kards:mob,tag=!tuteng,team=blue] run data modify entity @s Invulnerable set value 0b
execute as @e[type=#kards:mob,tag=!tuteng,team=blue] run data modify entity @s Silent set value 0b