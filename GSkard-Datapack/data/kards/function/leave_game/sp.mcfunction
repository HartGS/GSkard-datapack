gamemode adventure @s
effect clear @s
tp @s 59 226 -26 -90 0
tag @s remove Ready
tag @s add Un_Ready
tag @s remove jishengnianye
tag @s remove TouXiang
clear @s
scoreboard players reset @s
attribute @s minecraft:max_health modifier remove 0-0-1
attribute @s minecraft:max_health modifier remove 0-0-2
attribute @s minecraft:max_health modifier remove 0-0-3
attribute @s minecraft:max_health modifier remove 0-0-4
attribute @s minecraft:max_health modifier remove 0-0-5
attribute @s minecraft:max_health modifier remove 0-0-6
attribute @s minecraft:max_health modifier remove 0-0-7
attribute @s minecraft:max_health modifier remove 0-0-8
attribute @s minecraft:max_health modifier remove 0-0-9
attribute @s minecraft:max_health modifier remove 0-0-10
attribute @s minecraft:max_health modifier remove 0-0-12
attribute @s minecraft:max_health modifier remove 0-0-13
attribute @s minecraft:max_health modifier remove 1-0-1
attribute @s minecraft:max_health base set 20
attribute @s minecraft:jump_strength modifier remove 0-0-1
attribute @s minecraft:jump_strength modifier remove 0-0-2
attribute @s minecraft:jump_strength modifier remove 0-0-3
attribute @s minecraft:jump_strength modifier remove 0-0-5
attribute @s minecraft:jump_strength modifier remove 0-0-6
attribute @s minecraft:jump_strength base reset
attribute @s minecraft:scale base reset
attribute @s minecraft:movement_speed modifier remove 0-0-6
attribute @s minecraft:movement_speed modifier remove 0-0-7
attribute @s minecraft:movement_speed base reset
attribute @s minecraft:entity_interaction_range modifier remove 0-0-2
attribute @s minecraft:entity_interaction_range modifier remove 0-0-3
attribute @s minecraft:entity_interaction_range modifier remove 0-0-4
attribute @s minecraft:entity_interaction_range base reset
attribute @s gravity modifier remove 0-0-1
attribute @s minecraft:gravity base reset
attribute @s safe_fall_distance modifier remove 0-0-2
attribute @s safe_fall_distance base reset
execute at @s run summon minecraft:firework_rocket ~ ~ ~
team leave @s
tellraw @a [{text: "欢迎老登",color:"gold"},{selector:"@s",color:"white"},{text: "再次进入游戏",color:"gold"}]
tellraw @a ["",{color:"gold",bold:true,translate: "kards.function.advancement.first_join_game.4", fallback: "官方链接："},{color:"dark_purple",bold:true,translate: "kards.function.advancement.first_join_game.5", fallback: "[WIKI]",click_event:{action:"open_url",url:"https://hartgs.yw-games.top"},hover_event:{action:"show_text",value:["",{translate: "kards.function.advancement.first_join_game.6", fallback: "点击查看 GSkard WIKI"}]}},{color:"gold",bold:true,translate: "kards.function.advancement.first_join_game.7", fallback: " "},{color:"blue",bold:true,translate: "kards.function.advancement.first_join_game.8", fallback: "[QQ]",click_event:{action:"open_url",url:"https://qm.qq.com/q/keCUAnEEca"},hover_event:{action:"show_text",value:["",{translate: "kards.function.advancement.first_join_game.9", fallback: "点击加入 GSkard 官方群聊"}]}},{bold:true,translate: "json.kards.dialog.jiaocheng.wanfa.1.114", fallback: " "},{color:"black",bold:true,translate: "kards.function.advancement.first_join_game.10", fallback: "[oopz]",click_event:{action:"open_url",url:"https://oopz.cn/i/NiDL0U"},hover_event:{action:"show_text",value:["",{translate: "kards.function.advancement.first_join_game.11", fallback: "点击加入 GSkard 官方语音"}]}},{bold:true,translate: "json.kards.dialog.jiaocheng.wanfa.1.114", fallback: " "},{color:"dark_red",bold:true,translate: "kards.function.advancement.first_join_game.12", fallback: "[BUG]",click_event:{action:"open_url",url:"https://docs.qq.com/smartsheet/DWHp5SWxGWGt5Q1RO"},hover_event:{action:"show_text",value:["",{translate: "kards.function.advancement.first_join_game.13", fallback: "点击反馈BUG"}]}}]
team join Spectator @s
function kards-dlc:svc/join
gamemode spectator @s
tp @s @r[gamemode=adventure]