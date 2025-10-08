execute store result score @s Talent_zhanshudaji run random value 1..6
execute if score @s Talent_zhanshudaji matches 1 run scoreboard players add @s XuanYun 20
execute if score @s Talent_zhanshudaji matches 2 run scoreboard players add @s XuanZhuan 10
execute if score @s Talent_zhanshudaji matches 3 run scoreboard players add @s DongJie 20
execute if score @s Talent_zhanshudaji matches 4 run scoreboard players add @s Fire 10
execute if score @s Talent_zhanshudaji matches 5 run scoreboard players add @s ZhongShang_Tick 60
execute if score @s Talent_zhanshudaji matches 6 at @s summon wind_charge run data modify entity @s Motion set value [0,-1,0]
execute if score @s Talent_zhanshudaji matches 6 at @s summon wind_charge run data modify entity @s Motion set value [0,-0.3,0]

tellraw @s [{selector:"@p[tag=Talent_zhanshudaji_Temp]"},{translate: "kards.function.game.player.talent.enable.zhanshudaji.2.1", fallback: "对您触发了",color:"gold"},{translate: "kards.function.dialog.talent.show.tellraw_output.104", fallback: "战术打击",color:"aqua"}]