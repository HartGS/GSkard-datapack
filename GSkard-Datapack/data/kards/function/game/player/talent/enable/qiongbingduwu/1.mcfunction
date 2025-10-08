execute unless items entity @s container.* #kards:kard run return run tellraw @a [{selector:"@s"},{translate: "kards.function.game.player.talent.enable.qiongbingduwu.1.1", fallback: "弃掉了滚木!",color:"aqua"}]

execute store result score @s random_clear run random value 0..35
execute if score @s random_clear matches 0 unless items entity @s container.0 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 1 unless items entity @s container.1 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 2 unless items entity @s container.2 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 3 unless items entity @s container.3 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 4 unless items entity @s container.4 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 5 unless items entity @s container.5 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 6 unless items entity @s container.6 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 7 unless items entity @s container.7 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 8 unless items entity @s container.8 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 9 unless items entity @s container.9 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 10 unless items entity @s container.10 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 11 unless items entity @s container.11 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 12 unless items entity @s container.12 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 13 unless items entity @s container.13 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 14 unless items entity @s container.14 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 15 unless items entity @s container.15 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 16 unless items entity @s container.16 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 17 unless items entity @s container.17 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 18 unless items entity @s container.18 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 19 unless items entity @s container.19 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 20 unless items entity @s container.20 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 21 unless items entity @s container.21 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 22 unless items entity @s container.22 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 23 unless items entity @s container.23 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 24 unless items entity @s container.24 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 25 unless items entity @s container.25 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 26 unless items entity @s container.26 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 27 unless items entity @s container.27 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 28 unless items entity @s container.28 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 29 unless items entity @s container.29 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 30 unless items entity @s container.30 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 31 unless items entity @s container.31 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 32 unless items entity @s container.32 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 33 unless items entity @s container.33 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 34 unless items entity @s container.34 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1
execute if score @s random_clear matches 35 unless items entity @s container.35 #kards:kard run return run function kards:game/player/talent/enable/qiongbingduwu/1

summon item ~ ~ ~ {PickupDelay:-1,Item:{id:"minecraft:music_disc_11"},Tags:["copy"]}

execute if score @s random_clear matches 0 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory.[{Slot:0b}]
execute if score @s random_clear matches 1 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:1b}]
execute if score @s random_clear matches 2 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:2b}]
execute if score @s random_clear matches 3 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:3b}]
execute if score @s random_clear matches 4 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:4b}]
execute if score @s random_clear matches 5 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:5b}]
execute if score @s random_clear matches 6 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:6b}]
execute if score @s random_clear matches 7 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:7b}]
execute if score @s random_clear matches 8 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:8b}]
execute if score @s random_clear matches 9 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:9b}]
execute if score @s random_clear matches 10 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:10b}]
execute if score @s random_clear matches 11 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:11b}]
execute if score @s random_clear matches 12 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:12b}]
execute if score @s random_clear matches 13 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:13b}]
execute if score @s random_clear matches 14 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:14b}]
execute if score @s random_clear matches 15 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:15b}]
execute if score @s random_clear matches 16 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:16b}]
execute if score @s random_clear matches 17 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:17b}]
execute if score @s random_clear matches 18 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:18b}]
execute if score @s random_clear matches 19 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:19b}]
execute if score @s random_clear matches 20 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:20b}]
execute if score @s random_clear matches 21 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:21b}]
execute if score @s random_clear matches 22 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:22b}]
execute if score @s random_clear matches 23 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:23b}]
execute if score @s random_clear matches 24 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:24b}]
execute if score @s random_clear matches 25 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:25b}]
execute if score @s random_clear matches 26 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:26b}]
execute if score @s random_clear matches 27 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:27b}]
execute if score @s random_clear matches 28 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:28b}]
execute if score @s random_clear matches 29 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:29b}]
execute if score @s random_clear matches 30 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:30b}]
execute if score @s random_clear matches 31 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:31b}]
execute if score @s random_clear matches 32 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:32b}]
execute if score @s random_clear matches 33 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:33b}]
execute if score @s random_clear matches 34 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:34b}]
execute if score @s random_clear matches 35 run data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory[{Slot:35b}]

execute if score @s random_clear matches 0 run item replace entity @s container.0 with air
execute if score @s random_clear matches 1 run item replace entity @s container.1 with air
execute if score @s random_clear matches 2 run item replace entity @s container.2 with air
execute if score @s random_clear matches 3 run item replace entity @s container.3 with air
execute if score @s random_clear matches 4 run item replace entity @s container.4 with air
execute if score @s random_clear matches 5 run item replace entity @s container.5 with air
execute if score @s random_clear matches 6 run item replace entity @s container.6 with air
execute if score @s random_clear matches 7 run item replace entity @s container.7 with air
execute if score @s random_clear matches 8 run item replace entity @s container.8 with air
execute if score @s random_clear matches 9 run item replace entity @s container.9 with air
execute if score @s random_clear matches 10 run item replace entity @s container.10 with air
execute if score @s random_clear matches 11 run item replace entity @s container.11 with air
execute if score @s random_clear matches 12 run item replace entity @s container.12 with air
execute if score @s random_clear matches 13 run item replace entity @s container.13 with air
execute if score @s random_clear matches 14 run item replace entity @s container.14 with air
execute if score @s random_clear matches 15 run item replace entity @s container.15 with air
execute if score @s random_clear matches 16 run item replace entity @s container.16 with air
execute if score @s random_clear matches 17 run item replace entity @s container.17 with air
execute if score @s random_clear matches 18 run item replace entity @s container.18 with air
execute if score @s random_clear matches 19 run item replace entity @s container.19 with air
execute if score @s random_clear matches 20 run item replace entity @s container.20 with air
execute if score @s random_clear matches 21 run item replace entity @s container.21 with air
execute if score @s random_clear matches 22 run item replace entity @s container.22 with air
execute if score @s random_clear matches 23 run item replace entity @s container.23 with air
execute if score @s random_clear matches 24 run item replace entity @s container.24 with air
execute if score @s random_clear matches 25 run item replace entity @s container.25 with air
execute if score @s random_clear matches 26 run item replace entity @s container.26 with air
execute if score @s random_clear matches 27 run item replace entity @s container.27 with air
execute if score @s random_clear matches 28 run item replace entity @s container.28 with air
execute if score @s random_clear matches 29 run item replace entity @s container.29 with air
execute if score @s random_clear matches 30 run item replace entity @s container.30 with air
execute if score @s random_clear matches 31 run item replace entity @s container.31 with air
execute if score @s random_clear matches 32 run item replace entity @s container.32 with air
execute if score @s random_clear matches 33 run item replace entity @s container.33 with air
execute if score @s random_clear matches 34 run item replace entity @s container.34 with air
execute if score @s random_clear matches 35 run item replace entity @s container.35 with air

tag @s add Talent_qiongbingduwu_Damage

scoreboard players set @s Talent_qiongbingduwu_Damage 0

execute store result score @s Talent_qiongbingduwu_KardCount run data get entity @n[tag=copy,type=item] Item.components."minecraft:custom_data".K
execute store result score @s Talent_qiongbingduwu_KardCountMax run data get entity @n[tag=copy,type=item] Item.components."minecraft:custom_data".Kmax

scoreboard players operation @s Talent_qiongbingduwu_Damage += @s Talent_qiongbingduwu_KardCount
scoreboard players operation @s Talent_qiongbingduwu_Damage += @s Talent_qiongbingduwu_KardCountMax

tag @s add Kard_Info_User

execute as @n[tag=copy,type=item] run function kards:game/yongpaiku/use_general/info
kill @n[tag=copy,type=item]

tag @s remove Kard_Info_User

tellraw @a [{selector:"@s"},{translate: "json.kards.dialog.jiaocheng.wanfa.1.132", fallback: "使用了",color:"gold"},{translate: "kards.function.dialog.talent.show.tellraw_output.100", fallback: "穷兵黩武",color:"aqua",hover_event:{action:"show_text",value:[{translate: "kards.function.dialog.talent.show.tellraw_output.101", fallback: "在本局游戏内 任意回合开始时\n",color:"gray"},{translate: "kards.function.dialog.talent.show.tellraw_output.102", fallback: "丢弃背包内1张牌\n",color:"red"},{translate: "kards.function.dialog.talent.show.tellraw_output.103", fallback: "造成其等同于花费的破甲伤害分配至敌方所有玩家",color:"gold"}]}},{translate: "kards.function.game.player.talent.enable.qiongbingduwu.1.2", fallback: " 造成了",color:"gold"},{score:{name:"@s",objective:"Talent_qiongbingduwu_Damage"},color:"red"},{translate: "kards.function.game.player.talent.enable.qiongbingduwu.1.3", fallback: "点伤害",color:"gold"}]
execute if score @s Talent_qiongbingduwu_Damage matches 1.. run function kards:game/player/talent/enable/qiongbingduwu/2

tag @s remove Talent_qiongbingduwu_Damage