execute as @a[scores={chengmo=1..},gamemode=adventure] at @s run kill @e[type=item,distance=..3,tag=!replace_item,tag=!copy,tag=!copy_end]
execute as @a[scores={chengmo=0..},gamemode=adventure] run function kards:game/ingame/custom_buff/chengmo/bossbar/1
scoreboard players reset @a[scores={chengmo=0}] chengmo
