execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Enable matches 1 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Enable matches 2 run return run tellraw @s [{text:"你本轮已选择过天赋!",color:red}]
tag @s add Talent_xukongcunzhe
execute if score #system Talent_Random_Mode matches 1 run scoreboard players set @s Talent_Enable 1
execute if score #system Talent_Random_Mode matches 2 run scoreboard players set @s Talent_Enable 2
# Tellraw
execute as @s[team=red] run tellraw @a[team=red,distance=0.1..] [{selector:"@s"},{text:"选择了",color:"gray"},{text:"虚空存折",color:"white",hover_event:{action:"show_text",value:[{text:"在本局游戏内\n",color:"gray"},{text:"友方回合结束时 ",color:"red"},{text:"你的",color:"gray"},{text:"K不再重置\n",color:"gold"},{text:"但你每回合只能获得",color:"gray"},{text:"等同于80%Kmax的K\n",color:"red"},{text:"该计算结果向下取整",color:"dark_gray"}]}}]
execute as @s[team=blue] run tellraw @a[team=blue,distance=0.1..] [{selector:"@s"},{text:"选择了",color:"gray"},{text:"虚空存折",color:"white",hover_event:{action:"show_text",value:[{text:"在本局游戏内\n",color:"gray"},{text:"友方回合结束时 ",color:"red"},{text:"你的",color:"gray"},{text:"K不再重置\n",color:"gold"},{text:"但你每回合只能获得",color:"gray"},{text:"等同于80%Kmax的K\n",color:"red"},{text:"该计算结果向下取整",color:"dark_gray"}]}}]