execute as @e[tag=tuteng] store result score @s temp run data get entity @s HurtTime
execute as @e[tag=tuteng] if score @s temp matches 9 run function kards:game/ingame/tuteng/health/2

#execute as @e[tag=ceshi] if data entity @s {HurtTime:9s} run function kards:ceshi/2