function kards:game/yongpaiku/use_general/kard_general

execute if entity @s[team=red] at @e[tag=r_tuteng,limit=1] run summon zombie ~ 0 ~ {Team:red,Tags:["tuteng","peiyangshi"],attributes:[{id:"minecraft:max_health",base:40.0d}],Health:40.0f,Silent:1b,equipment:{head:{id:leather_helmet},chest:{id:leather_chestplate,components:{dyed_color:16711680}},legs:{id:leather_leggings},feet:{id:leather_boots}}}
execute if entity @s[team=blue] at @e[tag=b_tuteng,limit=1] run summon zombie ~ 0 ~ {Team:blue,Tags:["tuteng","peiyangshi"],attributes:[{id:"minecraft:max_health",base:40.0d}],Health:40.0f,Silent:1b,equipment:{head:{id:leather_helmet},chest:{id:leather_chestplate,components:{dyed_color:1966335}},legs:{id:leather_leggings},feet:{id:leather_boots}}}

execute if entity @s[team=red] if entity @e[type=villager,tag=tuteng,team=red] run scoreboard players add @e[tag=peiyangshi,team=red,limit=1] peiyangshi 20
execute if entity @s[team=blue] if entity @e[type=villager,tag=tuteng,team=blue] run scoreboard players add @e[tag=peiyangshi,team=blue,limit=1] peiyangshi 20

execute if entity @s[team=red] if entity @e[type=villager,tag=tuteng,team=red] run kill @e[type=villager,tag=tuteng,team=red]
execute if entity @s[team=blue] if entity @e[type=villager,tag=tuteng,team=blue] run kill @e[type=villager,tag=tuteng,team=blue]

execute as @e[tag=Mob_Start] store result score @s Mob_Health_last run data get entity @s Health 10
tag @e[tag=Mob_Start] remove Mob_Start

item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_peiyangshi kardCount


