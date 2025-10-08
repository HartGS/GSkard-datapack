execute store result score @s tuteng_Health store result score @s tuteng_Health_temp1 store result score @s tuteng_Health_temp2 run data get entity @s Health 1000

#计算受伤量
scoreboard players operation @s tuteng_Health_last -= @s tuteng_Health

scoreboard players operation @s tuteng_Health_temp1_ = @s tuteng_Health_last
scoreboard players operation @s tuteng_Health_temp2_ = @s tuteng_Health_last

#存当前血量至下一刻
scoreboard players operation @s tuteng_Health_last = @s tuteng_Health

#将数值/2以代表♥
scoreboard players set #system tuteng_Health 2

scoreboard players operation @s tuteng_Health_temp1 /= #system tuteng_Health
scoreboard players operation @s tuteng_Health_temp2 /= #system tuteng_Health

scoreboard players operation @s tuteng_Health_temp1_ /= #system tuteng_Health
scoreboard players operation @s tuteng_Health_temp2_ /= #system tuteng_Health

#截位
scoreboard players set #system tuteng_Health 1000

scoreboard players operation @s tuteng_Health_temp1 %= #system tuteng_Health
scoreboard players operation @s tuteng_Health_temp2 /= #system tuteng_Health

scoreboard players operation @s tuteng_Health_temp1_ %= #system tuteng_Health
scoreboard players operation @s tuteng_Health_temp2_ /= #system tuteng_Health

tellraw @a [{"selector":"@s"},{translate: "kards.function.ceshi.2.1", fallback: "正在受到",color:"gold",bold:false},{score:{name:"@s",objective:"tuteng_Health_temp2_"},color:"red",bold:false},{translate: "kards.function.ceshi.2.2", fallback: ".",color:"red",bold:false},{score:{name:"@s",objective:"tuteng_Health_temp1_"},color:"red",bold:false},{translate: "kards.function.ceshi.2.3", fallback: "♥",color:"red",bold:false},{translate: "kards.function.ceshi.2.4", fallback: "伤害! 当前血量",color:"gold",bold:false},{score:{name:"@s",objective:"tuteng_Health_temp2"},color:"green",bold:false},{translate: "kards.function.ceshi.2.2", fallback: ".",color:"green",bold:false},{score:{name:"@s",objective:"tuteng_Health_temp1"},color:"green",bold:false},{translate: "kards.function.ceshi.2.3", fallback: "♥",color:"green",bold:false}]
