execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Enable matches 1 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Enable matches 2 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
tag @s add Talent_libingmoma
execute if score #system Talent_Random_Mode matches 1 run scoreboard players set @s Talent_Enable 1
execute if score #system Talent_Random_Mode matches 2 run scoreboard players set @s Talent_Enable 2

# Tellraw
execute as @s[team=red] run tellraw @a[team=red,distance=0.1..] [{selector:"@s"},{text:"选择了",color:"gray"},{text:"励兵秣马",color:"aqua",hover_event:{action:"show_text",value:[{text:"在本局游戏内\n",color:"gray"},{text:"你每使用5张牌\n",color:"gold"},{text:"就",color:"gray"},{text:"+1攻击伤害+1护甲值+0.5♥最大生命值",color:"gold"}]}}]
execute as @s[team=blue] run tellraw @a[team=blue,distance=0.1..] [{selector:"@s"},{text:"选择了",color:"gray"},{text:"励兵秣马",color:"aqua",hover_event:{action:"show_text",value:[{text:"在本局游戏内\n",color:"gray"},{text:"你每使用5张牌\n",color:"gold"},{text:"就",color:"gray"},{text:"+1攻击伤害+1护甲值+0.5♥最大生命值",color:"gold"}]}}]