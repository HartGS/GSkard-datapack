scoreboard players reset @s jiangshuzhe_yehuo_move

function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/zaizhang/yehuo/healmax

execute as @s[team=red] at @s anchored eyes facing entity @n[tag=jiangshuzhe_yehuo_target,team=blue] eyes run tp @s ^ ^ ^0.15 ~ ~
execute as @s[team=blue] at @s anchored eyes facing entity @n[tag=jiangshuzhe_yehuo_target,team=red] eyes run tp @s ^ ^ ^0.15 ~ ~

tag @a[tag=jiangshuzhe_yehuo_target] remove jiangshuzhe_yehuo_target