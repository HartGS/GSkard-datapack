scoreboard players remove @s Talent_ranjiweiguang_Ball_DeathTime 1

execute as @s[team=red] unless entity @e[distance=..5,type=!#kards:display,tag=!tuteng,tag=!spectator,team=red] run tp @s ^ ^ ^0.25
execute as @s[team=blue] unless entity @e[distance=..5,type=!#kards:display,tag=!tuteng,tag=!spectator,team=blue] run tp @s ^ ^ ^0.25
execute as @s[team=red] if entity @e[distance=..5,type=!#kards:display,tag=!tuteng,tag=!spectator,team=red] facing entity @n[distance=..5,type=!#kards:display,tag=!tuteng,tag=!spectator,team=red] feet run tp @s ^ ^ ^0.25
execute as @s[team=blue] if entity @e[distance=..5,type=!#kards:display,tag=!tuteng,tag=!spectator,team=blue] facing entity @n[distance=..5,type=!#kards:display,tag=!tuteng,tag=!spectator,team=blue] feet run tp @s ^ ^ ^0.25

particle end_rod ~ ~ ~ 0 0 0 0 1

scoreboard players add @s Talent_ranjiweiguang_Ball_MoveTime 1
execute if score @s Talent_ranjiweiguang_Ball_MoveTime matches 4 run particle end_rod ~ ~ ~ 0.2 0.2 0.2 0 25
execute if score @s Talent_ranjiweiguang_Ball_MoveTime matches 4 run scoreboard players reset @s Talent_ranjiweiguang_Ball_MoveTime

execute unless block ~ ~ ~ air positioned ^ ^ ^-0.25 run scoreboard players set @s Talent_ranjiweiguang_Ball_DeathTime 0
execute as @s[team=red] if entity @e[team=blue,distance=..0.25,tag=!spectator] run scoreboard players set @s Talent_ranjiweiguang_Ball_DeathTime 0
execute as @s[team=blue] if entity @e[team=red,distance=..0.25,tag=!spectator] run scoreboard players set @s Talent_ranjiweiguang_Ball_DeathTime 0

execute if score @s Talent_ranjiweiguang_Ball_DeathTime matches 0 run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.25 30
execute if score @s Talent_ranjiweiguang_Ball_DeathTime matches 0 run tag @s add Talent_ranjiweiguang_Ball_Damage
execute if score @s Talent_ranjiweiguang_Ball_DeathTime matches 0 as @a[tag=Talent_ranjiweiguang,gamemode=spectator] if score @s Talent_ranjiweiguang_Ball_LifeTime = @n[tag=Talent_ranjiweiguang_Ball_Damage,type=marker] Talent_ranjiweiguang_Ball_LifeTime run tag @s add Talent_ranjiweiguang_Ball_Damage

execute as @s[team=red] if score @s Talent_ranjiweiguang_Ball_DeathTime matches 0 as @e[distance=..2.5,team=blue,tag=!tuteng,type=#kards:mob] run damage @s 8 explosion by @p[tag=Talent_ranjiweiguang_Ball_Damage,team=red]
execute as @s[team=blue] if score @s Talent_ranjiweiguang_Ball_DeathTime matches 0 as @e[distance=..2.5,team=red,tag=!tuteng,type=#kards:mob] run damage @s 8 explosion by @p[tag=Talent_ranjiweiguang_Ball_Damage,team=blue]

execute as @s[team=red] if score @s Talent_ranjiweiguang_Ball_DeathTime matches 0 as @e[distance=..2.5,team=red,tag=!tuteng] run scoreboard players add @s HealBack 4
execute as @s[team=red] if score @s Talent_ranjiweiguang_Ball_DeathTime matches 0 run effect give @e[distance=..2.5,team=red,tag=!tuteng] speed 3 1 true
execute as @s[team=red] if score @s Talent_ranjiweiguang_Ball_DeathTime matches 0 run effect give @e[distance=..2.5,team=red,tag=!tuteng] strength 3 0 true

execute as @s[team=blue] if score @s Talent_ranjiweiguang_Ball_DeathTime matches 0 as @e[distance=..2.5,team=blue,tag=!tuteng] run scoreboard players add @s HealBack 4
execute as @s[team=blue] if score @s Talent_ranjiweiguang_Ball_DeathTime matches 0 run effect give @e[distance=..2.5,team=blue,tag=!tuteng] speed 3 1 true
execute as @s[team=blue] if score @s Talent_ranjiweiguang_Ball_DeathTime matches 0 run effect give @e[distance=..2.5,team=blue,tag=!tuteng] strength 3 0 true

execute as @s[team=red] if score @s Talent_ranjiweiguang_Ball_DeathTime matches 0 as @e[distance=..2.5,team=red,tag=!spectator,type=!#kards:display,tag=!tuteng] at @s run particle heart ~ ~2 ~ 0 0 0 0 1 force @a
execute as @s[team=blue] if score @s Talent_ranjiweiguang_Ball_DeathTime matches 0 as @e[distance=..2.5,team=blue,tag=!spectator,type=!#kards:display,tag=!tuteng] at @s run particle heart ~ ~2 ~ 0 0 0 0 1 force @a

execute if score @s Talent_ranjiweiguang_Ball_DeathTime matches 0 summon marker at @s run function kards:game/player/talent/enable/ranjiweiguang/particle/1
execute if score @s Talent_ranjiweiguang_Ball_DeathTime matches 0 run tag @a[tag=Talent_ranjiweiguang_Ball_Damage] remove Talent_ranjiweiguang_Ball_Damage
execute if score @s Talent_ranjiweiguang_Ball_DeathTime matches 0 run kill @s