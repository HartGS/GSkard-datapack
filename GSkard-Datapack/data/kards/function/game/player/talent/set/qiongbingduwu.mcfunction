execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Enable matches 1 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Enable matches 2 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
tag @s add Talent_qiongbingduwu
execute if score #system Talent_Random_Mode matches 1 run scoreboard players set @s Talent_Enable 1
execute if score #system Talent_Random_Mode matches 2 run scoreboard players set @s Talent_Enable 2

# Tellraw
execute as @s[team=red] run tellraw @a[team=red,distance=0.1..] [{selector:"@s"},{text:"选择了",color:"gray"},{text:"穷兵黩武",color:"aqua",hover_event:{action:"show_text",value:[{text:"在本局游戏内 任意回合开始时\n",color:"gray"},{text:"丢弃背包内1张牌\n",color:"red"},{text:"造成其等同于花费1.5倍的破甲伤害分配至敌方所有玩家",color:"gold"}]}}]
execute as @s[team=blue] run tellraw @a[team=blue,distance=0.1..] [{selector:"@s"},{text:"选择了",color:"gray"},{text:"穷兵黩武",color:"aqua",hover_event:{action:"show_text",value:[{text:"在本局游戏内 任意回合开始时\n",color:"gray"},{text:"丢弃背包内1张牌\n",color:"red"},{text:"造成其等同于花费1.5倍的破甲伤害分配至敌方所有玩家",color:"gold"}]}}]