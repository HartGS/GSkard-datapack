tp @s -83 -46 -90
title @s times 10t 40t 10t
execute if score @s RunningTime_Min matches 0 if score @s RunningTime_Sec matches ..9 run title @s title [{translate: "kards.function.lobby.run.finishes.1", fallback: "00",color:"green"},{translate: "kards.function.lobby.run.finishes.2", fallback: ".0",color:"green"},{score:{name:"@s",objective:"RunningTime_Sec"},color:"green"},{translate: "kards.function.ceshi.2.2", fallback: ".",color:"green"},{score:{name:"@s",objective:"RunningTime_Tick"},color:"green"}]
execute if score @s RunningTime_Min matches 0 if score @s RunningTime_Sec matches 10.. run title @s title [{translate: "kards.function.lobby.run.finishes.1", fallback: "00",color:"green"},{translate: "kards.function.ceshi.2.2", fallback: ".",color:"green"},{score:{name:"@s",objective:"RunningTime_Sec"},color:"green"},{translate: "kards.function.ceshi.2.2", fallback: ".",color:"green"},{score:{name:"@s",objective:"RunningTime_Tick"},color:"green"}]

execute if score @s RunningTime_Min matches ..9 if score @s RunningTime_Sec matches ..9 run title @s title [{translate: "kards.function.enchantment.zhiming.1.2", fallback: "0",color:"green"},{score:{name:"@s",objective:"RunningTime_Min"},color:"green"},{translate: "kards.function.lobby.run.finishes.2", fallback: ".0",color:"green"},{score:{name:"@s",objective:"RunningTime_Sec"},color:"green"},{translate: "kards.function.ceshi.2.2", fallback: ".",color:"green"},{score:{name:"@s",objective:"RunningTime_Tick"},color:"green"}]
execute if score @s RunningTime_Min matches ..9 if score @s RunningTime_Sec matches 10.. run title @s title [{translate: "kards.function.enchantment.zhiming.1.2", fallback: "0",color:"green"},{score:{name:"@s",objective:"RunningTime_Min"},color:"green"},{translate: "kards.function.ceshi.2.2", fallback: ".",color:"green"},{score:{name:"@s",objective:"RunningTime_Sec"},color:"green"},{translate: "kards.function.ceshi.2.2", fallback: ".",color:"green"},{score:{name:"@s",objective:"RunningTime_Tick"},color:"green"}]

execute if score @s RunningTime_Min matches 10.. if score @s RunningTime_Sec matches ..9 run title @s title [{score:{name:"@s",objective:"RunningTime_Min"},color:"green"},{translate: "kards.function.lobby.run.finishes.2", fallback: ".0",color:"green"},{score:{name:"@s",objective:"RunningTime_Sec"},color:"green"},{translate: "kards.function.ceshi.2.2", fallback: ".",color:"green"},{score:{name:"@s",objective:"RunningTime_Tick"},color:"green"}]
execute if score @s RunningTime_Min matches 10.. if score @s RunningTime_Sec matches 10.. run title @s title [{score:{name:"@s",objective:"RunningTime_Min"},color:"green"},{translate: "kards.function.ceshi.2.2", fallback: ".",color:"green"},{score:{name:"@s",objective:"RunningTime_Sec"},color:"green"},{translate: "kards.function.ceshi.2.2", fallback: ".",color:"green"},{score:{name:"@s",objective:"RunningTime_Tick"},color:"green"}]

execute if score @s RunningTime_Min matches 0 if score @s RunningTime_Sec matches ..9 run tellraw @a [{translate: "kards.function.lobby.run.finishes.1", fallback: "00",color:"green"},{translate: "kards.function.lobby.run.finishes.2", fallback: ".0",color:"green"},{score:{name:"@s",objective:"RunningTime_Sec"},color:"green"},{translate: "kards.function.ceshi.2.2", fallback: ".",color:"green"},{score:{name:"@s",objective:"RunningTime_Tick"},color:"green"}]
execute if score @s RunningTime_Min matches 0 if score @s RunningTime_Sec matches 10.. run tellraw @a [{translate: "kards.function.lobby.run.finishes.1", fallback: "00",color:"green"},{translate: "kards.function.ceshi.2.2", fallback: ".",color:"green"},{score:{name:"@s",objective:"RunningTime_Sec"},color:"green"},{translate: "kards.function.ceshi.2.2", fallback: ".",color:"green"},{score:{name:"@s",objective:"RunningTime_Tick"},color:"green"}]

execute if score @s RunningTime_Min matches ..9 if score @s RunningTime_Sec matches ..9 run tellraw @a [{selector:"@s"},{translate: "kards.function.lobby.run.finishes.3", fallback: "完成了跑酷 "},{translate: "kards.function.enchantment.zhiming.1.2", fallback: "0",color:"green"},{score:{name:"@s",objective:"RunningTime_Min"},color:"green"},{translate: "kards.function.lobby.run.finishes.2", fallback: ".0",color:"green"},{score:{name:"@s",objective:"RunningTime_Sec"},color:"green"},{translate: "kards.function.ceshi.2.2", fallback: ".",color:"green"},{score:{name:"@s",objective:"RunningTime_Tick"},color:"green"}]
execute if score @s RunningTime_Min matches ..9 if score @s RunningTime_Sec matches 10.. run tellraw @a [{selector:"@s"},{translate: "kards.function.lobby.run.finishes.3", fallback: "完成了跑酷 "},{translate: "kards.function.enchantment.zhiming.1.2", fallback: "0",color:"green"},{score:{name:"@s",objective:"RunningTime_Min"},color:"green"},{translate: "kards.function.ceshi.2.2", fallback: ".",color:"green"},{score:{name:"@s",objective:"RunningTime_Sec"},color:"green"},{translate: "kards.function.ceshi.2.2", fallback: ".",color:"green"},{score:{name:"@s",objective:"RunningTime_Tick"},color:"green"}]

execute if score @s RunningTime_Min matches 10.. if score @s RunningTime_Sec matches ..9 run tellraw @a [{selector:"@s"},{translate: "kards.function.lobby.run.finishes.3", fallback: "完成了跑酷 "},{score:{name:"@s",objective:"RunningTime_Min"},color:"green"},{translate: "kards.function.lobby.run.finishes.2", fallback: ".0",color:"green"},{score:{name:"@s",objective:"RunningTime_Sec"},color:"green"},{translate: "kards.function.ceshi.2.2", fallback: ".",color:"green"},{score:{name:"@s",objective:"RunningTime_Tick"},color:"green"}]
execute if score @s RunningTime_Min matches 10.. if score @s RunningTime_Sec matches 10.. run tellraw @a [{selector:"@s"},{translate: "kards.function.lobby.run.finishes.3", fallback: "完成了跑酷 "},{score:{name:"@s",objective:"RunningTime_Min"},color:"green"},{translate: "kards.function.ceshi.2.2", fallback: ".",color:"green"},{score:{name:"@s",objective:"RunningTime_Sec"},color:"green"},{translate: "kards.function.ceshi.2.2", fallback: ".",color:"green"},{score:{name:"@s",objective:"RunningTime_Tick"},color:"green"}]

advancement grant @s only kards:advancement/run/first
execute if score @s RunningTime_adv matches ..1200 run advancement grant @s only kards:advancement/run/1
execute if score @s RunningTime_adv matches ..600 run advancement grant @s only kards:advancement/run/2
execute if score @s RunningTime_adv matches ..400 run advancement grant @s only kards:advancement/run/3
execute if score @s RunningTime_adv matches ..240 run advancement grant @s only kards:advancement/run/4
execute if score @s RunningTime_adv matches ..20 run advancement grant @s only kards:advancement/run/5

scoreboard players reset @s RunningTime
scoreboard players reset @s RunningTime_All
scoreboard players reset @s RunningTime_Sec
scoreboard players reset @s RunningTime_Min
scoreboard players reset @s RunningTime_Tick
scoreboard players reset @s RunningTime_adv
execute at @s run summon firework_rocket ~ ~ ~
tag @s remove Running
tag @s add Un_Ready
team join lobby

