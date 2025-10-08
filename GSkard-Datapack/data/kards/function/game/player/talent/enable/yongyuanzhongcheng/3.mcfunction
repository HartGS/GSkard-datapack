execute as @s[tag=!yongyuanzhongcheng_Marker_End] unless function kards:game/player/talent/enable/yongyuanzhongcheng/4 run tag @s add yongyuanzhongcheng_Marker_End

execute as @s[tag=yongyuanzhongcheng_Marker_End,team=red] if predicate {condition:"random_chance",chance:0.08} as @a[team=red,tag=Talent_yongyuanzhongcheng] run function kards:game/player/talent/enable/yongyuanzhongcheng/5

execute as @s[tag=yongyuanzhongcheng_Marker_End,team=blue] if predicate {condition:"random_chance",chance:0.08} as @a[team=blue,tag=Talent_yongyuanzhongcheng] run function kards:game/player/talent/enable/yongyuanzhongcheng/5

kill @s[tag=yongyuanzhongcheng_Marker_End]