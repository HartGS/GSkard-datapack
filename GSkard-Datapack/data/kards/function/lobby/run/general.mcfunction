#进入
execute positioned 52.0 231.0 -54.0 as @a[gamemode=!spectator,dx=5,dz=6,dy=1] run advancement grant @s only kards:advancement/lobby/find_running
execute positioned 52.0 231.0 -54.0 as @a[gamemode=!spectator,dx=5,dz=6,dy=1] run tp @s -83.50 -39.00 -90.5 0 ~
#离开
execute positioned -85.0 -47 -98 as @a[dx=3,dz=1,dy=3] at @s run function kards:lobby/run/boom

#开始
execute positioned -83.00 -46 -80.00 as @a[dx=1,dz=1,dy=1,gamemode=!spectator,tag=!Running] if block ~ ~ ~ minecraft:light_weighted_pressure_plate run function kards:lobby/run/start
#重置
execute positioned -83.00 -46 -80.00 as @a[dx=1,dz=1,dy=1,gamemode=!spectator,tag=Running,tag=!RunningReset] at @s if block ~ ~ ~ minecraft:light_weighted_pressure_plate run function kards:lobby/run/reset
execute positioned -83.00 -46 -80.00 as @a[distance=..2,gamemode=!spectator,tag=Running,tag=RunningReset] at @s unless block ~ ~ ~ minecraft:light_weighted_pressure_plate run tag @s remove RunningReset
#返回记录点
execute positioned -89.0 -60 -83.0 as @a[dx=57,dz=41,dy=21,gamemode=!spectator] at @s if block ~ ~ ~ minecraft:lava run function kards:lobby/run/backpoint

#完成
execute positioned -41.0 -45 -65.0 as @a[dx=1,dz=1,dy=2,gamemode=adventure] at @s run function kards:lobby/run/finishes
#计时
scoreboard players add @a[tag=Running] RunningTime_adv 1
scoreboard players add @a[tag=Running] RunningTime 1
scoreboard players add @a[tag=Running] RunningTime_All 1
scoreboard players add @a[tag=Running] RunningTime_Tick 5
execute as @a[tag=Running] if score @s RunningTime_Tick matches 100.. run scoreboard players set @s RunningTime_Tick 0
execute as @a[tag=Running] if score @s RunningTime matches 20.. run scoreboard players add @s RunningTime_Sec 1
execute as @a[tag=Running] if score @s RunningTime matches 20.. run scoreboard players remove @s RunningTime 20
execute as @a[tag=Running] if score @s RunningTime_Sec matches 60.. run scoreboard players add @s RunningTime_Min 1
execute as @a[tag=Running] if score @s RunningTime_Sec matches 60.. run scoreboard players remove @s RunningTime_Sec 60

#scoreboard players set system RunningTime_Sec 20
#scoreboard players set system RunningTime_Min 1200
#execute as @a[tag=Running] run scoreboard players ation @s RunningTime_Sec = @s RunningTime
#execute as @a[tag=Running] run scoreboard players ation @s RunningTime_Min = @s RunningTime
#execute as @a[tag=Running] run scoreboard players ation @s RunningTime_Sec /= system RunningTime_Sec
#execute as @a[tag=Running] run scoreboard players ation @s RunningTime_Min /= system RunningTime_Min


execute as @a[tag=Running] if score @s RunningTime_Min matches 0 if score @s RunningTime_Sec matches ..9 run title @s actionbar [{translate: "kards.function.lobby.run.finishes.1", fallback: "00",color:"green"},{translate: "kards.function.lobby.run.finishes.2", fallback: ".0",color:"green"},{score:{name:"@s",objective:"RunningTime_Sec"},color:"green"},{translate: "kards.function.ceshi.2.2", fallback: ".",color:"green"},{score:{name:"@s",objective:"RunningTime_Tick"},color:"green"}]
execute as @a[tag=Running] if score @s RunningTime_Min matches 0 if score @s RunningTime_Sec matches 10.. run title @s actionbar [{translate: "kards.function.lobby.run.finishes.1", fallback: "00",color:"green"},{translate: "kards.function.ceshi.2.2", fallback: ".",color:"green"},{score:{name:"@s",objective:"RunningTime_Sec"},color:"green"},{translate: "kards.function.ceshi.2.2", fallback: ".",color:"green"},{score:{name:"@s",objective:"RunningTime_Tick"},color:"green"}]

execute as @a[tag=Running] if score @s RunningTime_Min matches ..9 if score @s RunningTime_Sec matches ..9 run title @s actionbar [{translate: "kards.function.enchantment.zhiming.1.2", fallback: "0",color:"green"},{score:{name:"@s",objective:"RunningTime_Min"},color:"green"},{translate: "kards.function.lobby.run.finishes.2", fallback: ".0",color:"green"},{score:{name:"@s",objective:"RunningTime_Sec"},color:"green"},{translate: "kards.function.ceshi.2.2", fallback: ".",color:"green"},{score:{name:"@s",objective:"RunningTime_Tick"},color:"green"}]
execute as @a[tag=Running] if score @s RunningTime_Min matches ..9 if score @s RunningTime_Sec matches 10.. run title @s actionbar [{translate: "kards.function.enchantment.zhiming.1.2", fallback: "0",color:"green"},{score:{name:"@s",objective:"RunningTime_Min"},color:"green"},{translate: "kards.function.ceshi.2.2", fallback: ".",color:"green"},{score:{name:"@s",objective:"RunningTime_Sec"},color:"green"},{translate: "kards.function.ceshi.2.2", fallback: ".",color:"green"},{score:{name:"@s",objective:"RunningTime_Tick"},color:"green"}]

execute as @a[tag=Running] if score @s RunningTime_Min matches 10.. if score @s RunningTime_Sec matches ..9 run title @s actionbar [{score:{name:"@s",objective:"RunningTime_Min"},color:"green"},{translate: "kards.function.lobby.run.finishes.2", fallback: ".0",color:"green"},{score:{name:"@s",objective:"RunningTime_Sec"},color:"green"},{translate: "kards.function.ceshi.2.2", fallback: ".",color:"green"},{score:{name:"@s",objective:"RunningTime_Tick"},color:"green"}]
execute as @a[tag=Running] if score @s RunningTime_Min matches 10.. if score @s RunningTime_Sec matches 10.. run title @s actionbar [{score:{name:"@s",objective:"RunningTime_Min"},color:"green"},{translate: "kards.function.ceshi.2.2", fallback: ".",color:"green"},{score:{name:"@s",objective:"RunningTime_Sec"},color:"green"},{translate: "kards.function.ceshi.2.2", fallback: ".",color:"green"},{score:{name:"@s",objective:"RunningTime_Tick"},color:"green"}]