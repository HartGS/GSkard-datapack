tag @s add Talent_zhanshudaji_Temp

execute as @s[team=red] as @r[team=blue,gamemode=adventure] run function kards:game/player/talent/enable/zhanshudaji/2
execute as @s[team=blue] as @r[team=red,gamemode=adventure] run function kards:game/player/talent/enable/zhanshudaji/2

tag @s remove Talent_zhanshudaji_Temp