
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
#execute unless score @s diaolingtaidao_Time matches 1.. run tellraw @s [{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.general.17", fallback: "[凋零太刀]",color:"dark_gray"},{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.general.18", fallback: "拔刀·碎魂 效果就绪!",color:"gold"}]
execute unless score @s diaolingtaidao_Time matches 1.. run scoreboard players set @s diaolingtaidao_Time 0
function kards:game/yongpaiku/shenji/wangzhibaoku/diaolingtaidao/3

#scoreboard players remove @s diaolingtaidao_tujing 1

#execute if block ~ ~ ~ air run tp @s ^ ^ ^0.0625
##execute unless block ~ ~ ~ air run scoreboard players set @s diaolingtaidao_tujing 0
#execute unless block ~ ~ ~ air run tp @s ^ ^ ^0.0625

#execute if score @s diaolingtaidao_tujing matches 1.. at @s run return run function this