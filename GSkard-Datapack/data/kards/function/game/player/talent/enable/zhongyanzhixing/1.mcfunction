scoreboard players set @s Talent_zhongyanzhixing 0

scoreboard players operation @s Talent_zhongyanzhixing += @s Use_K_Round
scoreboard players operation @s Talent_zhongyanzhixing += @s Use_Kmax_Round

scoreboard players set #system Talent_zhongyanzhixing 5
scoreboard players operation @s Talent_zhongyanzhixing *= #system Talent_zhongyanzhixing

execute store result score @s Talent_zhongyanzhixing_temp1 store result score @s Talent_zhongyanzhixing_temp2 run scoreboard players get @s Talent_zhongyanzhixing
scoreboard players set #system temp 10
scoreboard players operation @s Talent_zhongyanzhixing_temp1 /= #system temp
scoreboard players operation @s Talent_zhongyanzhixing_temp2 %= #system temp

tellraw @a [{selector:"@s"},{text:"使用了",color:"gold"},{text:"终焉之行",color:light_purple,hover_event:{action:"show_text",value:[{text:"每回合结束时\n统计本回合消耗的K/Kmax 取两值之和的一半\n分配等额无视护甲的伤害于敌方玩家",color:"gray"}]}}]
tellraw @a [{selector:"@s"},{text:"造成了",color:"gold"},{score:{name:"@s",objective:"Talent_zhongyanzhixing_temp1"},color:"red"},{text:".",color:"red"},{score:{name:"@s",objective:"Talent_zhongyanzhixing_temp2"},color:"red"},{text:"点伤害",color:"gold"}]

execute if score @s Talent_zhongyanzhixing matches 1.. run function kards:game/player/talent/enable/zhongyanzhixing/2