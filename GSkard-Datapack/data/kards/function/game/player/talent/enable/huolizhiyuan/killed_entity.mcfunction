advancement revoke @s only kards:talent/huolizhiyuan/main
advancement revoke @s only kards:talent/huolizhiyuan/off
execute unless entity @s[tag=Talent_huolizhiyuan] run return fail
scoreboard players add @s Crossbow_RS 3
tellraw @s [{text:"火力支援",color:"gold"},{text:" 弩当前填装速度",color:green},{score:{name:"@s",objective:"Crossbow_RS"},color:gold},{text:"%",color:green}]