execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Enable matches 1 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Enable matches 2 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
tag @s add Talent_dengshenchangjie
scoreboard players reset @s Talent_dengshenchangjie
execute if score #system Talent_Random_Mode matches 1 run scoreboard players set @s Talent_Enable 1
execute if score #system Talent_Random_Mode matches 2 run scoreboard players set @s Talent_Enable 2

# Tellraw
execute as @s[team=red] run tellraw @a[team=red,distance=0.1..] [{selector:"@s"},{text:"选择了",color:"gray"},{text:"登神长阶",color:"gold",hover_event:{action:"show_text",value:[{text:"在本局游戏内\n",color:"gray"},{text:"你每击杀1个生物",color:"gold"},{text:"使你的",color:"gray"},{text:"近战伤害增加0.75%\n",color:"gold"},{text:"该效果可无限叠加",color:"dark_gray"}]}}]
execute as @s[team=blue] run tellraw @a[team=blue,distance=0.1..] [{selector:"@s"},{text:"选择了",color:"gray"},{text:"登神长阶",color:"gold",hover_event:{action:"show_text",value:[{text:"在本局游戏内\n",color:"gray"},{text:"你每击杀1个生物",color:"gold"},{text:"使你的",color:"gray"},{text:"近战伤害增加0.75%\n",color:"gold"},{text:"该效果可无限叠加",color:"dark_gray"}]}}]