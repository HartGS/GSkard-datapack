#燃己为光
execute as @a[tag=Talent_ranjiweiguang,gamemode=spectator] run function kards:game/player/talent/enable/ranjiweiguang/bossbar/1
execute as @a[tag=Talent_ranjiweiguang,gamemode=spectator] store result score @s Spectator_Pos.Y run data get entity @s Pos[1]
execute as @a[tag=Talent_ranjiweiguang,gamemode=spectator] unless score @s Spectator_Pos.Y matches 5..12 at @s run tp @s ~ 9 ~ ~ ~
scoreboard players add @a[tag=Talent_ranjiweiguang,gamemode=spectator] Talent_ranjiweiguang_Attack_Time 1
execute as @a[tag=Talent_ranjiweiguang,scores={Talent_ranjiweiguang_Attack_Time=100..}] at @s run function kards:game/player/talent/enable/ranjiweiguang/2
scoreboard players add @e[tag=Talent_ranjiweiguang,gamemode=spectator] Talent_ranjiweiguang_Ball_LifeTime 1
scoreboard players add @e[tag=Talent_ranjiweiguang_Ball] Talent_ranjiweiguang_Ball_LifeTime 1
execute if entity @e[tag=Talent_ranjiweiguang_Ball,type=marker] as @e[tag=Talent_ranjiweiguang_Ball] if score @s Talent_ranjiweiguang_Ball_DeathTime matches 1.. at @s run function kards:game/player/talent/enable/ranjiweiguang/4

#共生
execute as @a[tag=Talent_gongsheng,gamemode=adventure] run function kards:game/player/talent/enable/gongsheng/1

#永远忠诚
execute as @a[tag=Talent_yongyuanzhongcheng,gamemode=!spectator] run function kards:game/player/talent/enable/yongyuanzhongcheng/1

execute if entity @e[tag=yongyuanzhongcheng_Marker,team=red] as @e[tag=yongyuanzhongcheng_Marker,team=red] unless entity @a[team=red,gamemode=!spectator] run kill @s
execute if entity @e[tag=yongyuanzhongcheng_Marker,team=blue] as @e[tag=yongyuanzhongcheng_Marker,team=blue] unless entity @a[team=blue,gamemode=!spectator] run kill @s