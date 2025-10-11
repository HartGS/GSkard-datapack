function kards:game/yongpaiku/use_general/kard_general

execute if entity @s[team=red] at @e[tag=r_tuteng,limit=1] run summon ocelot ~ 0 ~ {Team:red,Tags:["tuteng","Mob_Start"],Age:0,Silent:1b,attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:20.0d}],Health:20.0f}

execute if entity @s[team=blue] at @e[tag=b_tuteng,limit=1] run summon ocelot ~ 0 ~ {Team:blue,Tags:["tuteng","Mob_Start"],Age:0,Silent:1b,attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:20.0d}],Health:20.0f}

execute as @e[tag=Mob_Start] store result score @s Mob_Health_last run data get entity @s Health 10
tag @e[tag=Mob_Start] remove Mob_Start

item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_baomao kardCount
