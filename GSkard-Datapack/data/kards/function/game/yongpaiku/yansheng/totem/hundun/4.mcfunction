
tellraw @s [{translate: "kards.function.game.paiku.yansheng.busituteng.hundun.6", fallback: " -",color:"gray",italic:false},{translate: "kards.function.game.paiku.yansheng.busituteng.hundun.7", fallback: "冻结 ",color:"aqua",italic:false},{translate: "kards.function.dialog.talent.show.tellraw_output.112", fallback: "点燃",color:"dark_red",italic:false},{translate: "kards.function.game.paiku.yansheng.busituteng.hundun.8", fallback: "6格内敌对生物7.5s",color:"gray",italic:false}]
#冰冻
execute if entity @s[team=red] run scoreboard players add @e[distance=..6,team=blue,gamemode=!spectator] DongJie 150

execute if entity @s[team=blue] run scoreboard players add @e[distance=..6,team=red,gamemode=!spectator] DongJie 150

execute at @s run playsound minecraft:entity.player.hurt_freeze player @a[distance=..20] ~ ~ ~ 100 0
#点燃
execute if entity @s[team=red] run scoreboard players add @e[distance=..6,tag=!tuteng,team=blue,gamemode=!spectator] Fire 150
execute if entity @s[team=blue] run scoreboard players add @e[distance=..6,tag=!tuteng,team=red,gamemode=!spectator] Fire 150
