title @a title [{translate: "kards.function.game.ingame.round.pvpround.waitstart.1", fallback: "战 斗",color:"red",bold:true},{translate: "kards.function.game.ingame.round.pvpround.waitstart.2", fallback: " 回 合",color:"gold",bold:true}]
scoreboard players set @a cishu 0
scoreboard players set @a Skip_Round 0
scoreboard players set @a kardCountmax 100
scoreboard players set @a kardCount 100
scoreboard players set @a CanuseKard 1
scoreboard players set 回合数 GameRound 0
scoreboard players set #system GameStatus 2
team modify red friendlyFire false
team modify blue friendlyFire false
effect clear @a
effect give @a minecraft:resistance 30 9 false
clear @a minecraft:music_disc_strad[custom_data={kards:'飞雷神'}]
clear @a minecraft:music_disc_strad[custom_data={kards:'飞雷神•反'}]
scoreboard players reset @a feileishen
bossbar set roundtime visible false
tellraw @a [{translate: "kards.function.game.ingame.round.pvpround.waitstart.3", fallback: "PVP回合：",color:"gold"},{translate: "kards.function.game.ingame.round.pvpround.waitstart.4", fallback: "战斗！存活下来的队伍获胜",color:"red"}]
tellraw @a {translate: "kards.function.game.ingame.round.pvpround.waitstart.5", fallback: "准备时间30s",color:"gray",bold:true}
tp @a[team=red] -179 -9 -164
tp @a[team=blue] -242 -9 -164
kill @e[type=!player,type=!marker,type=!#kards:display]
gamemode spectator @a[tag=spectator]
bossbar set pvptime players @a
bossbar set pvptime visible true
scoreboard players set time pvptime 600
fill -188 -9 -137 -188 0 -191 minecraft:barrier replace air
fill -233 -9 -191 -233 0 -137 minecraft:barrier replace air
worldborder set 80
execute as @a[tag=zuzhouhujia] if items entity @s armor.chest golden_chestplate[custom_data={kards:'诅咒护甲'}] run item replace entity @s armor.chest with air
tag @a[tag=zuzhouhujia] remove zuzhouhujia

function kards:game/ingame/round/pvpround/countdown

