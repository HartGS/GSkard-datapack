tellraw @s [{text: "对周围7格所有敌对生物造成15",color:"gray",italic:false},{text: "♥",color:"white",italic:false},{text: "真实伤害",color:"gray",italic:false}]
tag @s add hunduntuteng
execute if entity @s[team=red] as @e[team=blue,gamemode=!spectator,distance=..7] run damage @s 30 kards:hunduntuteng by @p[tag=hunduntuteng,team=red]
execute if entity @s[team=blue] as @e[team=red,gamemode=!spectator,distance=..7] run damage @s 30 kards:hunduntuteng by @p[tag=hunduntuteng,team=blue]
tag @s remove hunduntuteng
