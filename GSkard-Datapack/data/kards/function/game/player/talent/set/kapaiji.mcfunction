execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Enable matches 1 run return run tellraw @s [{translate: "kards.function.game.player.talent.set.bujingtanyu.1", fallback: "你本轮已选择过天赋!",color:red}]
execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Enable matches 2 run return run tellraw @s [{translate: "kards.function.game.player.talent.set.bujingtanyu.1", fallback: "你本轮已选择过天赋!",color:red}]
tag @s add Talent_kapaiji
scoreboard players add @s cishu 15

execute if score #system Talent_Random_Mode matches 1 run scoreboard players set @s Talent_Enable 1
execute if score #system Talent_Random_Mode matches 2 run scoreboard players set @s Talent_Enable 2

# Tellraw
execute as @s[team=red] run tellraw @a[team=red,distance=0.1..] [{selector:"@s"},{translate: "kards.function.game.player.talent.set.bujingtanyu.2", fallback: "选择了",color:"gray"},{translate: "kards.function.dialog.talent.show.tellraw_output.91", fallback: "卡牌集",color:"light_purple",hover_event:{action:"show_text",value:[{translate: "kards.function.dialog.talent.show.tellraw_output.92", fallback: "你抽15张牌",color:"gold"}]}}]
execute as @s[team=blue] run tellraw @a[team=blue,distance=0.1..] [{selector:"@s"},{translate: "kards.function.game.player.talent.set.bujingtanyu.2", fallback: "选择了",color:"gray"},{translate: "kards.function.dialog.talent.show.tellraw_output.91", fallback: "卡牌集",color:"light_purple",hover_event:{action:"show_text",value:[{translate: "kards.function.dialog.talent.show.tellraw_output.92", fallback: "你抽15张牌",color:"gold"}]}}]