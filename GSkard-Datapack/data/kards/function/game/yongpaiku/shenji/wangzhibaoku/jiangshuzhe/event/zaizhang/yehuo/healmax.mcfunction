scoreboard players set @s jiangshuzhe_yehuo_healthmax 0
execute as @s[team=red] run scoreboard players operation @s jiangshuzhe_yehuo_healthmax > @a[team=blue,gamemode=adventure] health
execute as @s[team=blue] run scoreboard players operation @s jiangshuzhe_yehuo_healthmax > @a[team=red,gamemode=adventure] health
execute as @s[team=red] as @a[team=blue,gamemode=adventure] if score @s health = @n[tag=JiangShuZhe_YeHuo,team=red] jiangshuzhe_yehuo_healthmax run tag @s add jiangshuzhe_yehuo_target
execute as @s[team=blue] as @a[team=red,gamemode=adventure] if score @s health = @n[tag=JiangShuZhe_YeHuo,team=blue] jiangshuzhe_yehuo_healthmax run tag @s add jiangshuzhe_yehuo_target