execute as @s[tag=!yongyuanzhongcheng_rided] summon marker run function kards:game/player/talent/enable/yongyuanzhongcheng/ride
execute as @s[team=red] run team join red @n[tag=yongyuanzhongcheng_Marker_Start]
execute as @s[team=blue] run team join blue @n[tag=yongyuanzhongcheng_Marker_Start]
tag @n[tag=yongyuanzhongcheng_Marker_Start] remove yongyuanzhongcheng_Marker_Start
tag @s[tag=!yongyuanzhongcheng_rided] add yongyuanzhongcheng_rided
