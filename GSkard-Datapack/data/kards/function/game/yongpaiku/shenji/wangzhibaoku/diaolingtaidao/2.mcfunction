
scoreboard players remove @s diaolingtaidao_tujing 1
particle soul ~ ~ ~ 0.2 0.2 0.2 0 2 force @a

execute if entity @s[team=red] at @s as @e[team=blue,distance=..2,tag=!spectator,type=!#kards:display] unless data entity @s {NoAI:1b} run tag @s add diaolingtaidao_hurt
execute if entity @s[team=blue] at @s as @e[team=red,distance=..2,tag=!spectator,type=!#kards:display] unless data entity @s {NoAI:1b} run tag @s add diaolingtaidao_hurt

execute if block ^ ^ ^0.25 air run tp @s ^ ^ ^0.0625
execute unless block ^ ^ ^0.25 air run scoreboard players set @s diaolingtaidao_tujing 0
execute unless block ^ ^ ^0.25 air run tp @s ^ ^ ^-0.25

#execute if score @s diaolingtaidao_tujing matches 1.. positioned ^ ^ ^0.0625 if block ~ ~ ~ air run return run function kards:game/yongpaiku/shenji/wangzhibaoku/diaolingtaidao/2

execute if score @s diaolingtaidao_tujing matches 1.. at @s run return run function kards:game/yongpaiku/shenji/wangzhibaoku/diaolingtaidao/2
playsound entity.wither.break_block player @a[distance=..20] ~ ~ ~ 10 2
execute if entity @e[tag=diaolingtaidao_hurt] run scoreboard players remove @s diaolingtaidao_Time 100
#execute unless score @s diaolingtaidao_Time matches 1.. run tellraw @s [{text:"[凋零太刀]",color:"dark_gray"},{text:"拔刀·碎魂 效果就绪!",color:"gold"}]
execute unless score @s diaolingtaidao_Time matches 1.. run scoreboard players set @s diaolingtaidao_Time 0
function kards:game/yongpaiku/shenji/wangzhibaoku/diaolingtaidao/3

execute if score #system GameStatus matches 0 run return fail

execute unless score #system GameStatus matches 2 if score #system dituxuanze matches 1..100 at @e[tag=b_dw] positioned ~-0.5 -1 ~-0.5 unless entity @s[dx=24,dz=54,dy=7.5] run tellraw @s [{text:"§r§8§l[凋零太刀]",color:"dark_gray"},{text:"§k(乱码)(乱码)(乱码)§r§7§l..回..到..战..场..§k(乱码)(乱码)(乱码)",color:"gray"}]

execute unless score #system GameStatus matches 2 if score #system dituxuanze matches 1..100 as @s[team=red] at @e[tag=b_dw] positioned ~-0.5 -1 ~-0.5 unless entity @s[dx=24,dz=54,dy=7.5] at @e[tag=red_marker_7,limit=1] run tp @s ~ 0 ~
execute unless score #system GameStatus matches 2 if score #system dituxuanze matches 1..100 as @s[team=blue] at @e[tag=b_dw] positioned ~-0.5 -1 ~-0.5 unless entity @s[dx=24,dz=54,dy=7.5] at @e[tag=blue_marker_7,limit=1] run tp @s ~ 0 ~

execute unless score #system GameStatus matches 2 if score #system dituxuanze matches 101.. at @e[tag=b_dw] positioned ~-0.5 -1 ~-0.5 unless entity @s[dx=24,dz=74,dy=7.5] run tellraw @s [{text:"§r§87§l[凋零太刀]",color:"dark_gray"},{text:"§k(乱码)(乱码)(乱码)§r§7§l..回..到..战..场..§k(乱码)(乱码)(乱码)",color:"gray"}]

execute unless score #system GameStatus matches 2 if score #system dituxuanze matches 101.. as @s[team=red] at @e[tag=b_dw] positioned ~-0.5 -1 ~-0.5 unless entity @s[dx=34,dz=74,dy=7.5] at @e[tag=red_marker_7,limit=1] run tp @s ~ 0 ~
execute unless score #system GameStatus matches 2 if score #system dituxuanze matches 101.. as @s[team=blue] at @e[tag=b_dw] positioned ~-0.5 -1 ~-0.5 unless entity @s[dx=34,dz=74,dy=7.5] at @e[tag=blue_marker_7,limit=1] run tp @s ~ 0 ~