#---暂定常加载区域---#
#Tag
tag @a[gamemode=spectator,tag=!spectator] add spectator
tag @a[gamemode=adventure,tag=spectator] remove spectator

#全局buff
effect give @a minecraft:night_vision infinite 0 true
effect give @a minecraft:saturation infinite 0 true
#进入大厅
execute positioned 299.5 -59 307.00 run tp @a[dx=2,dy=4,dz=0] 59 226 -26 -90 0
#暂定命名
function kards:lobby/general
function kards:game/general
#检测人数
execute as @a if score @s Leave_Game matches 1.. run function kards:leave_game/all
execute store result score 人数 p if entity @a
execute store result score 人数 r_alive if entity @a[team=red,gamemode=adventure]
execute store result score 人数 r_dp if entity @a[team=red,gamemode=spectator]
execute store result score 人数 b_dp if entity @a[team=blue,gamemode=spectator]
execute store result score 人数 b_alive if entity @a[team=blue,gamemode=adventure]
#启用trigger
scoreboard players enable @a reset
execute if score #system GameStatus matches 1..2 run scoreboard players enable @a[scores={touxiang=0}] touxiang
execute as @a[scores={Scale=1..}] run function kards:lobby/other/narrow_reset

scoreboard players enable @a stopsound

execute as @a if score @s stopsound matches 1.. run function kards:music/stop
#对话框部分
scoreboard players enable @a dialog
execute as @a[scores={dialog=1..}] run function kards:dialog/trigger
#title @a[scores={dialog=1..}] times 0t 1t 0t
#title @a[scores={dialog=1..}] title {text:"\uE002"}
scoreboard players reset @a[scores={dialog=1..}] dialog
## 整着玩的

scoreboard players add #system Color 1
execute if score #system Color matches 5 run team modify First prefix [{text: "[",color:"red"},{text: "萌",color:"yellow"},{text: "新",color:"green"},{text: "]",color:"aqua"}]
execute if score #system Color matches 5 run team modify First color red
execute if score #system Color matches 10 run team modify First prefix [{text: "[",color:"aqua"},{text: "萌",color:"red"},{text: "新",color:"yellow"},{text: "]",color:"green"}]
execute if score #system Color matches 10 run team modify First color yellow
execute if score #system Color matches 15 run team modify First prefix [{text: "[",color:"green"},{text: "萌",color:"aqua"},{text: "新",color:"red"},{text: "]",color:"yellow"}]
execute if score #system Color matches 15 run team modify First color green
execute if score #system Color matches 20 run team modify First prefix [{text: "[",color:"yellow"},{text: "萌",color:"green"},{text: "新",color:"aqua"},{text: "]",color:"red"}]
execute if score #system Color matches 20 run team modify First color aqua
execute if score #system Color matches 20 run scoreboard players set #system Color 0

#oiiaioiiiiai
execute as @e[type=cat,tag=Oiiaioiiiiai] at @s run rotate @s ~50 ~30
execute as @e[type=cat,tag=Oiiaioiiiiai] if data entity @s {OnGround:1b} run data modify entity @s Motion set value [0f,1f,0f]
effect give @e[type=cat,tag=Oiiaioiiiiai] instant_health 1 0 false

#G36K
execute as @a if score @s G36K_Use matches 1.. run function kards:guns/g36k/shoot
execute as @a if score @s G36K_Ex_Use matches 1.. run function kards:guns/ex_g36k/shoot

#测试用
#function kards:ceshi/1