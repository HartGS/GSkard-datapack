

execute if entity @e[tag=hurt_for_feixue,distance=..1] run return run function kards:game/yongpaiku/shenji/wangzhibaoku/yanyangdajian/stop

summon marker ~ ~ ~ {Tags:["marker_feixue_1"]}
execute if entity @s[tag=red] as @n[tag=!hurt_for_feixue,tag=!marker_feixue,team=red,tag=!spectator,type=!#kards:display] at @s run function kards:game/yongpaiku/shenji/wangzhibaoku/yanyangdajian/3
execute if entity @s[tag=blue] as @n[tag=!hurt_for_feixue,tag=!marker_feixue,team=blue,tag=!spectator,type=!#kards:display] at @s run function kards:game/yongpaiku/shenji/wangzhibaoku/yanyangdajian/3
kill @s

execute as @e[tag=marker_feixue_1,type=marker] at @s anchored eyes facing entity @n[tag=marker_feixue_2,type=marker] eyes positioned ^ ^ ^0.25 run function kards:game/yongpaiku/shenji/wangzhibaoku/yanyangdajian/4

kill @e[tag=marker_feixue_1,type=marker]
kill @e[tag=marker_feixue_2,type=marker]