scoreboard players add @e[tag=JiangShuZhe_YeHuo] jiangshuzhe_yehuo_move 1
execute as @e[tag=JiangShuZhe_YeHuo,scores={jiangshuzhe_yehuo_move=4..}] run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/zaizhang/yehuo/move

execute as @e[team=red,tag=JiangShuZhe_YeHuo] at @s positioned ~ ~-1 ~ as @e[tag=!spectator,team=blue,distance=..1.5] run damage @s 0.5 kards:huoyan by @n[tag=JiangShuZhe_YeHuo,team=red]
execute as @e[team=blue,tag=JiangShuZhe_YeHuo] at @s positioned ~ ~-1 ~ as @e[tag=!spectator,team=red,distance=..1.5] run damage @s 0.5 kards:huoyan by @n[tag=JiangShuZhe_YeHuo,team=blue]

execute as @e[team=red,tag=JiangShuZhe_YeHuo] at @s run scoreboard players add @a[gamemode=adventure,team=blue,distance=..1.5] Fire 2
execute as @e[team=blue,tag=JiangShuZhe_YeHuo] at @s run scoreboard players add @a[gamemode=adventure,team=red,distance=..1.5] Fire 2

execute as @e[tag=JiangShuZhe_YeHuo] at @s run particle flame ~ ~ ~ 0.25 0.25 0.25 0 10 force @a