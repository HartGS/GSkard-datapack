
tellraw @s [{translate: "kards.function.game.paiku.yansheng.busituteng.hundun.9", fallback: " -将6格内",color:"gray",italic:false},{translate: "kards.function.game.paiku.yansheng.busituteng.hundun.5", fallback: "\"敌对的非玩家生物\"",color:"gray",italic:false},{translate: "kards.function.game.paiku.yansheng.busituteng.hundun.10", fallback: "传送至敌方阵营",color:"gold",italic:false}]

execute if entity @s[team=red] run tag @e[team=blue,type=#kards:mob,tag=!random_creaking,distance=..6] add hunduntuteng_chuansong
execute if entity @s[team=red] as @e[team=blue,tag=hunduntuteng_chuansong] at @e[tag=blue_marker_7,limit=1] run tp @s ~ 1 ~
execute if entity @s[team=red] run team join red @e[team=blue,tag=hunduntuteng_chuansong]

execute if entity @s[team=blue] run tag @e[team=red,type=#kards:mob,tag=!random_creaking,distance=..6] add hunduntuteng_chuansong
execute if entity @s[team=blue] as @e[team=red,tag=hunduntuteng_chuansong] at @e[tag=red_marker_7,limit=1] run tp @s ~ 1 ~
execute if entity @s[team=blue] run team join blue @e[team=red,tag=hunduntuteng_chuansong]

tag @e[tag=hunduntuteng_chuansong] remove hunduntuteng_chuansong