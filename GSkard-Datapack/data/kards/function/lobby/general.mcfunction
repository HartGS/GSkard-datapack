#大厅buff
execute if score #system GameStatus matches 0 run effect give @a[team=!111,team=!222] minecraft:resistance 1 4 true
execute if score #system GameStatus matches 0 run effect give @a[team=!111,team=!222] instant_health 1 200 true
#视奸buff
execute if score #system GameStatus matches 1 run effect give @a[tag=spectator] minecraft:resistance 1 4 true
execute if score #system GameStatus matches 1 run effect give @a[tag=spectator] minecraft:instant_health 1 4 true
#准备
execute if score #system GameStatus matches 0 run function kards:lobby/ready/general
#大厅小游戏
execute if score #system GameStatus matches 0 run function kards:lobby/game/general
#设置
function kards:lobby/setting/map/general
#队伍
execute if score #system GameStatus matches 0 run function kards:lobby/team/general
#wiki
execute if score #system GameStatus matches 0 run function kards:lobby/wiki/general
#boss栏
execute if score #system GameStatus matches 0 run function kards:lobby/bossbar/general
execute if score #system GameStatus matches 0 run bossbar set minecraft:start_game visible true
execute unless score #system GameStatus matches 0 run bossbar set minecraft:start_game visible false
#神秘打野点
execute positioned 105.5 227 -14.0 as @a[gamemode=!spectator,dx=0.5,dy=4,dz=4] run advancement grant @s only kards:advancement/lobby/shenmidayedian
execute positioned 105.5 227 -14.0 as @a[gamemode=!spectator,dx=0.5,dy=4,dz=4] at @s run playsound entity.enderman.teleport player @s ~ ~ ~ 100 2
execute positioned 105.5 227 -14.0 as @a[gamemode=!spectator,dx=0.5,dy=4,dz=4] run tp @s 103.0 239 -48.0 90 ~
execute positioned 105.5 239 -50.0 as @a[gamemode=!spectator,dx=0.5,dy=4,dz=4] run advancement grant @s only kards:advancement/lobby/bushizhe
execute positioned 105.5 239 -50.0 as @a[gamemode=!spectator,dx=0.5,dy=4,dz=4] at @s run playsound entity.enderman.teleport player @s ~ ~ ~ 100 2
execute positioned 105.5 239 -50.0 as @a[gamemode=!spectator,dx=0.5,dy=4,dz=4] run tp @s 104.0 227 -12.0 90 ~

#跑酷
function kards:lobby/run/general
