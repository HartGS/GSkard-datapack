#金身
execute if score red jiangshuzhe_jinshen matches 1 run effect give @e[team=red] resistance 1 2 false
execute if score red jiangshuzhe_jinshen matches 1 run effect give @e[team=red] slowness 1 1 false
execute if score blue jiangshuzhe_jinshen matches 1 run effect give @e[team=blue] resistance 1 2 false
execute if score blue jiangshuzhe_jinshen matches 1 run effect give @e[team=blue] slowness 1 1 false

#薪火
execute if score red jiangshuzhe_jinshen matches 1 as @e[type=#kards:mob,tag=!tuteng,team=red,tag=!JiangShuZhe_XinHuo_rided] at @s run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/enze/xinhuo/2
execute if score blue jiangshuzhe_jinshen matches 1 as @e[type=#kards:mob,tag=!tuteng,team=blue,tag=!JiangShuZhe_XinHuo_rided] at @s run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/enze/xinhuo/2

execute if entity @e[tag=JiangShuZhe_XinHuo_Marker] as @e[tag=JiangShuZhe_XinHuo_Marker] run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/enze/xinhuo/3

#业火
execute if entity @e[tag=JiangShuZhe_YeHuo] run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/zaizhang/yehuo/all

#驳论
execute if score jiangshuzhe jiangshuzhe_bolun matches 1 if predicate {"condition":"random_chance",chance:{max:0.01,min:0.005}} as @r[gamemode=adventure,limit=3] at @s run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/yiwen/bolun/2

#时停
execute if score jiangshuzhe jiangshuzhe_shiting matches 1 if predicate {"condition":"random_chance",chance:{max:0.1,min:0.005}} as @e[limit=3,sort=random,tag=!tuteng,type=!#kards:display,tag=!spectator] run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/yiwen/shiting/2

scoreboard players remove @e[scores={jiangshuzhe_shiting_time=1..}] jiangshuzhe_shiting_time 1
scoreboard players reset @e[scores={jiangshuzhe_shiting_time=0}] jiangshuzhe_shiting_time

execute if entity @e[scores={jiangshuzhe_shiting_time=1..}] as @e[scores={jiangshuzhe_shiting_time=1..}] at @s run tp @s @s

#易命
execute if score jiangshuzhe jiangshuzhe_yiming matches 1 as @e[type=#kards:mob,tag=!tuteng,tag=!JiangShuZhe_yiming_rided] at @s run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/yiwen/yiming/2

execute if entity @e[tag=JiangShuZhe_yiming_Marker] as @e[tag=JiangShuZhe_yiming_Marker] run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/yiwen/yiming/3
