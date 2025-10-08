# Scoreboard
scoreboard players set #system GameStatus 1
scoreboard players set #system Talent_Random_Mode 1
scoreboard players set #system Relax_Round 0
scoreboard players reset 红队
scoreboard players reset 蓝队

scoreboard objectives add health health [{translate: "json.kards.dialog.xp_shop.shengmin.1310", fallback: "生命",color:"green"}]

scoreboard objectives setdisplay list health
scoreboard objectives setdisplay below_name kardCount

execute store result score #system r_number if entity @a[team=red]
execute store result score #system b_number if entity @a[team=blue]

# Reset entity
kill @e[type=!player,type=!marker,type=!#kards:display]

# Bossbar
bossbar set minecraft:roundtime visible true
bossbar set roundtime players @a

# Others
time set midnight
stopsound @a
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 100 1
function kards:game/ingame/round/fashu with storage changdidaxiao
