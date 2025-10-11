execute store result score @s Mob_Health store result score @s Mob_Health_temp1 store result score @s Mob_Health_temp2 run data get entity @s Health 10

#计算受伤量
scoreboard players operation @s Mob_Health_last -= @s Mob_Health

scoreboard players operation @s Mob_Health_temp1_ = @s Mob_Health_last
scoreboard players operation @s Mob_Health_temp2_ = @s Mob_Health_last

#存当前血量至下一刻
scoreboard players operation @s Mob_Health_last = @s Mob_Health

#将数值/2以代表♥
scoreboard players set #system Mob_Health 2

scoreboard players operation @s Mob_Health_temp1 /= #system Mob_Health
scoreboard players operation @s Mob_Health_temp2 /= #system Mob_Health

scoreboard players operation @s Mob_Health_temp1_ /= #system Mob_Health
scoreboard players operation @s Mob_Health_temp2_ /= #system Mob_Health

#截位
scoreboard players set #system Mob_Health 10

scoreboard players operation @s Mob_Health_temp1 %= #system Mob_Health
scoreboard players operation @s Mob_Health_temp2 /= #system Mob_Health

scoreboard players operation @s Mob_Health_temp1_ %= #system Mob_Health
scoreboard players operation @s Mob_Health_temp2_ /= #system Mob_Health

execute as @s[team=red] run tellraw @a[team=red] [{text:" !!! ",color:"gold",bold:false},{"selector":"@s"},{text:"正在受到",color:"gold",bold:false},{score:{name:"@s",objective:"Mob_Health_temp2_"},color:"red",bold:false},{text:".",color:"red",bold:false},{score:{name:"@s",objective:"Mob_Health_temp1_"},color:"red",bold:false},{text:"♥",color:"red",bold:false},{text:"伤害! 当前血量",color:"gold",bold:false},{score:{name:"@s",objective:"Mob_Health_temp2"},color:"green",bold:false},{text:".",color:"green",bold:false},{score:{name:"@s",objective:"Mob_Health_temp1"},color:"green",bold:false},{text:"♥",color:"green",bold:false},{text:" !!! ",color:"gold",bold:false}]
execute as @s[team=blue] run tellraw @a[team=blue] [{text:" !!! ",color:"gold",bold:false},{"selector":"@s"},{text:"正在受到",color:"gold",bold:false},{score:{name:"@s",objective:"Mob_Health_temp2_"},color:"red",bold:false},{text:".",color:"red",bold:false},{score:{name:"@s",objective:"Mob_Health_temp1_"},color:"red",bold:false},{text:"♥",color:"red",bold:false},{text:"伤害! 当前血量",color:"gold",bold:false},{score:{name:"@s",objective:"Mob_Health_temp2"},color:"green",bold:false},{text:".",color:"green",bold:false},{score:{name:"@s",objective:"Mob_Health_temp1"},color:"green",bold:false},{text:"♥",color:"green",bold:false},{text:" !!! ",color:"gold",bold:false}]
