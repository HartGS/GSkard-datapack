tp @s 59 251 -26 -90 90
spawnpoint @s 59 226 -26 0 -90
gamemode spectator @s
summon minecraft:firework_rocket ~ ~ ~
tag @s add Un_Ready
effect clear @s
team join First @s
tellraw @a [{selector:"@s"},{text: "达成了进度",color:"white"},{text: "[你管这叫卡牌对战?]",color:"green",hover_event:{action:"show_text",value:{text:"你管这叫卡牌对战?\n首次进入GSkard",color:"green"}}}]
tellraw @a ["",{color:"gold",bold:true,translate: "kards.function.advancement.first_join_game.4", fallback: "官方链接："},{color:"dark_purple",bold:true,translate: "kards.function.advancement.first_join_game.5", fallback: "[WIKI]",click_event:{action:"open_url",url:"https://hartgs.yw-games.top"},hover_event:{action:"show_text",value:["",{translate: "kards.function.advancement.first_join_game.6", fallback: "点击查看 GSkard WIKI"}]}},{color:"gold",bold:true,translate: "kards.function.advancement.first_join_game.7", fallback: " "},{color:"blue",bold:true,translate: "kards.function.advancement.first_join_game.8", fallback: "[QQ]",click_event:{action:"open_url",url:"https://qm.qq.com/q/keCUAnEEca"},hover_event:{action:"show_text",value:["",{translate: "kards.function.advancement.first_join_game.9", fallback: "点击加入 GSkard 官方群聊"}]}},{bold:true,translate: "json.kards.dialog.jiaocheng.wanfa.1.114", fallback: " "},{color:"black",bold:true,translate: "kards.function.advancement.first_join_game.10", fallback: "[oopz]",click_event:{action:"open_url",url:"https://oopz.cn/i/NiDL0U"},hover_event:{action:"show_text",value:["",{translate: "kards.function.advancement.first_join_game.11", fallback: "点击加入 GSkard 官方语音"}]}},{bold:true,translate: "json.kards.dialog.jiaocheng.wanfa.1.114", fallback: " "},{color:"dark_red",bold:true,translate: "kards.function.advancement.first_join_game.12", fallback: "[BUG]",click_event:{action:"open_url",url:"https://docs.qq.com/smartsheet/DWHp5SWxGWGt5Q1RO"},hover_event:{action:"show_text",value:["",{translate: "kards.function.advancement.first_join_game.13", fallback: "点击反馈BUG"}]}}]

execute at @s run playsound minecraft:entity.player.levelup master @s
dialog show @s kards:first_join/1

