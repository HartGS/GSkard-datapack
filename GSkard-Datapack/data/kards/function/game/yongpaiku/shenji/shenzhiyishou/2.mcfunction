

execute store result score @s random_clear run random value 0..35
execute if score @s random_clear matches 0 unless items entity @s container.0 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 1 unless items entity @s container.1 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 2 unless items entity @s container.2 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 3 unless items entity @s container.3 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 4 unless items entity @s container.4 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 5 unless items entity @s container.5 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 6 unless items entity @s container.6 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 7 unless items entity @s container.7 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 8 unless items entity @s container.8 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 9 unless items entity @s container.9 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 10 unless items entity @s container.10 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 11 unless items entity @s container.11 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 12 unless items entity @s container.12 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 13 unless items entity @s container.13 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 14 unless items entity @s container.14 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 15 unless items entity @s container.15 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 16 unless items entity @s container.16 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 17 unless items entity @s container.17 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 18 unless items entity @s container.18 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 19 unless items entity @s container.19 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 20 unless items entity @s container.20 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 21 unless items entity @s container.21 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 22 unless items entity @s container.22 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 23 unless items entity @s container.23 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 24 unless items entity @s container.24 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 25 unless items entity @s container.25 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 26 unless items entity @s container.26 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 27 unless items entity @s container.27 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 28 unless items entity @s container.28 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 29 unless items entity @s container.29 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 30 unless items entity @s container.30 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 31 unless items entity @s container.31 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 32 unless items entity @s container.32 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 33 unless items entity @s container.33 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 34 unless items entity @s container.34 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if score @s random_clear matches 35 unless items entity @s container.35 #kards:kard run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2

tag @s add shenzhiyishou

summon item ~ ~ ~ {PickupDelay:-1,Item:{id:"music_disc_11"},Tags:["copy"]}
data modify entity @n[tag=copy,type=item] Owner set from entity @n[tag=User] UUID

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

data modify entity @n[tag=copy,type=item] PickupDelay set value 1
tag @n[tag=copy,type=item] add copy_end
tag @n[tag=copy,type=item] remove copy

execute if entity @s[team=red] if entity @a[team=red,gamemode=adventure,tag=!shenzhiyishou] as @r[team=red,gamemode=adventure,tag=!shenzhiyishou] run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if entity @s[team=blue] if entity @a[team=blue,gamemode=adventure,tag=!shenzhiyishou] as @r[team=blue,gamemode=adventure,tag=!shenzhiyishou] run return run function kards:game/yongpaiku/shenji/shenzhiyishou/2

tellraw @a [{selector:"@a[tag=shenzhiyishou]"},{translate: "kards.function.game.yongpaiku.shenji.shenzhiyishou.2.1", fallback: "的牌被",color:"aqua"},{selector:"@a[tag=User,limit=1]"},{translate: "kards.function.game.yongpaiku.fashu.shunshouqianyang.2.2", fallback: "偷走了！",color:"aqua"}]
tag @a[tag=shenzhiyishou] remove shenzhiyishou
kill @e[type=item,nbt={Item:{id:"minecraft:music_disc_11"}},tag=copy_end]
