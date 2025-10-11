function kards:game/yongpaiku/use_general/kard_general

execute if entity @s[team=red] at @e[tag=r_tuteng,limit=1] run summon chicken ~ 0 ~ {Team:red,Tags:["tuteng","Mob_Start"],attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Age:0,Silent:1b}
execute if entity @s[team=blue] at @e[tag=b_tuteng,limit=1] run summon chicken ~ 0 ~ {Team:blue,Tags:["tuteng","Mob_Start"],attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20.0f,Age:0,Silent:1b}
execute as @e[tag=Mob_Start] store result score @s Mob_Health_last run data get entity @s Health 10
tag @e[tag=Mob_Start] remove Mob_Start
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_ji kardCount
