execute as @e[tag=ceshi] store result score @s temp run data get entity @s HurtTime
execute as @e[tag=ceshi] if score @s temp matches 9 run function kards:ceshi/2

#execute as @e[tag=ceshi] if data entity @s {HurtTime:9s} run function kards:ceshi/2