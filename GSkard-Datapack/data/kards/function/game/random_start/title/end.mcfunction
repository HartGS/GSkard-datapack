title @a times 1t 20t 2t
execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 100 2
tellraw @a {"text":""}
tellraw @a [{"text":"======","color":"gray"},{"text":"随机游戏规则","color":"green","bold":true},{"text":"======","color":"gray"}]
tellraw @a {"text":""}

execute store result score #system random_start run random value 1..14
execute if score #system random_start matches 1 run title @a title {translate: "json.kards.dialog.setting.random_start.main.837", fallback: "宝库现世",color:"gold",bold:true}
execute if score #system random_start matches 1 run title @a subtitle [{"text":"所有玩家抽取","color":"gray"},{"text":"[王之宝库]","color":"green",bold:true}]
execute if score #system random_start matches 1 run tellraw @a [{"text":"宝库现世","color":"gold"}]
execute if score #system random_start matches 1 run tellraw @a [{"text":"所有玩家抽取","color":"gray"},{"text":"[王之宝库]","color":"green",bold:true}]

execute if score #system random_start matches 2 run title @a title {translate: "json.kards.dialog.setting.random_start.main.840", fallback: "藏宝库",color:"gold",bold:true}
execute if score #system random_start matches 2 run title @a subtitle [{"text":"开局额外抽取","color":"gray"},{"text":"3张神迹牌 每回合额外抽2张牌","color":"gold",bold:true}]
execute if score #system random_start matches 2 run tellraw @a [{"text":"藏宝库","color":"gold"}]
execute if score #system random_start matches 2 run tellraw @a [{"text":"开局额外抽取","color":"gray"},{"text":"3张神迹牌 每回合额外抽2张牌","color":"gold",bold:true}]

execute if score #system random_start matches 3 run title @a title {translate: "json.kards.dialog.setting.random_start.main.843", fallback: "魔法战争",color:"gold",bold:true}
execute if score #system random_start matches 3 run title @a subtitle [{"text":"所有人抽取的卡变为","color":"gray"},{"text":"法术卡","color":"light_purple",bold:true}]
execute if score #system random_start matches 3 run tellraw @a [{"text":"魔法战争","color":"gold"}]
execute if score #system random_start matches 3 run tellraw @a [{"text":"所有人抽取的卡变为","color":"gray"},{"text":"法术卡\n","color":"light_purple",bold:true},{"text":"每用1张法术牌就对1名敌方玩家造成","color":"gray"},{"text":"5♥魔法伤害","color":"light_purple",bold:true}]

execute if score #system random_start matches 4 run title @a title {translate: "json.kards.dialog.setting.random_start.main.846", fallback: "神之战",color:"gold",bold:true}
execute if score #system random_start matches 4 run title @a subtitle [{"text":"所有人抽取的卡变为","color":"gray"},{"text":"神迹卡","color":"white",bold:true}]
execute if score #system random_start matches 4 run tellraw @a [{"text":"神之战","color":"gold"}]
execute if score #system random_start matches 4 run tellraw @a [{"text":"所有人抽取的卡变为","color":"gray"},{"text":"神迹卡","color":"white",bold:true}]

execute if score #system random_start matches 5 run title @a title {translate: "json.kards.dialog.setting.random_start.main.848", fallback: "无尽战争",color:"gold",bold:true}
execute if score #system random_start matches 5 run title @a subtitle [{"text":"所有人的","color":"gray"},{"text":"Kmax被设为9999","color":"green",bold:true},{"text":" 每回合额外抽","color":"gray",bold:true},{"text":"3张牌","color":"green",bold:true}]
execute if score #system random_start matches 5 run tellraw @a [{"text":"无尽战争","color":"gold"}]
execute if score #system random_start matches 5 run tellraw @a [{"text":"所有人的","color":"gray"},{"text":"Kmax被设为9999","color":"green",bold:true},{"text":" 每回合额外抽","color":"gray",bold:true},{"text":"3张牌","color":"green",bold:true}]

execute if score #system random_start matches 6 run title @a title {translate: "kards.function.game.random_start.title.end.1", fallback: "噶枝恐惧",color:"gold",bold:true}
execute if score #system random_start matches 6 run title @a subtitle [{"text":"两方场地中央生成一只移速增加的嘎吱怪","color":"red",bold:true}]
execute if score #system random_start matches 6 run tellraw @a [{"text":"噶枝恐惧","color":"gold"}]
execute if score #system random_start matches 6 run tellraw @a [{"text":"两方场地中央生成一只移速增加的嘎吱怪","color":"red",bold:true}]

execute if score #system random_start matches 7 run title @a title {translate: "json.kards.dialog.paiku.shenji.main.392", fallback: "墓园狂欢",color:"gold",bold:true}
execute if score #system random_start matches 7 run title @a subtitle [{"text":"所有人默认使用[墓园狂欢]","color":"green",bold:true}]
execute if score #system random_start matches 7 run tellraw @a [{"text":"墓园狂欢","color":"gold"}]
execute if score #system random_start matches 7 run tellraw @a [{"text":"所有人默认使用[墓园狂欢]","color":"green",bold:true}]

execute if score #system random_start matches 8 run title @a title {translate: "json.kards.dialog.setting.random_start.main.857", fallback: "狂轰滥炸",color:"gold",bold:true}
execute if score #system random_start matches 8 run title @a subtitle [{"text":"所有人只能抽取到[爆炸军团]","color":"red",bold:true}]
execute if score #system random_start matches 8 run tellraw @a [{"text":"狂轰滥炸","color":"gold"}]
execute if score #system random_start matches 8 run tellraw @a [{"text":"所有人只能抽取到[爆炸军团]","color":"red",bold:true}]

execute if score #system random_start matches 9 run title @a title {translate: "json.kards.dialog.setting.random_start.main.860", fallback: "灾难之星",color:"gold",bold:true}
execute if score #system random_start matches 9 run title @a subtitle [{"text":"讲述[河豚][雷暴][失重]的故事","color":"gray"}]
execute if score #system random_start matches 9 run tellraw @a [{"text":"灾难之星","color":"gold"}]
execute if score #system random_start matches 9 run tellraw @a [{"text":"讲述[河豚][雷暴][失重]的故事","color":"gray"}]

execute if score #system random_start matches 10 run title @a title {translate: "json.kards.dialog.setting.random_start.main.864", fallback: "Move or Die",color:"gold",bold:true}
execute if score #system random_start matches 10 run title @a subtitle [{"text":"不动就会死!","color":"red",bold:true}]
execute if score #system random_start matches 10 run tellraw @a [{"text":"Move or Die","color":"gold"}]
execute if score #system random_start matches 10 run tellraw @a [{"text":"不动就会死!","color":"red",bold:true}]

execute if score #system random_start matches 11 run title @a title {translate: "json.kards.dialog.setting.random_start.main.866", fallback: "死神降临",color:"gold",bold:true}
execute if score #system random_start matches 11 run title @a subtitle [{"text":"11回合后 每回合杀死一个生命最低的玩家","color":"red",bold:true}]
execute if score #system random_start matches 11 run tellraw @a [{"text":"死神降临","color":"gold"}]
execute if score #system random_start matches 11 run tellraw @a [{"text":"11回合后 每回合杀死一个生命最低的玩家","color":"red",bold:true}]

execute if score #system random_start matches 12 run title @a title {translate: "json.kards.dialog.setting.random_start.main.868", fallback: "舞会",color:"gold",bold:true}
execute if score #system random_start matches 12 run title @a subtitle [{translate: "json.kards.dialog.setting.random_start.main.858", fallback: "所有人只能抽取到",color:"gray",bold:true},{translate: "json.kards.dialog.setting.random_start.main.869", fallback: "[舞王僵尸]",color:"dark_green",bold:true}]
execute if score #system random_start matches 12 run tellraw @a [{"text":"舞会","color":"gold"}]
execute if score #system random_start matches 12 run tellraw @a [{translate: "json.kards.dialog.setting.random_start.main.858", fallback: "所有人只能抽取到",color:"gray",bold:true},{translate: "json.kards.dialog.setting.random_start.main.869", fallback: "[舞王僵尸]",color:"dark_green",bold:true}]

execute if score #system random_start matches 13 run title @a title {translate: "json.kards.dialog.setting.random_start.main.870", fallback: "电表倒转",color:"gold",bold:true}
execute if score #system random_start matches 13 run title @a subtitle [{translate: "json.kards.dialog.setting.random_start.main.871", fallback: "每使用1张牌 都有概率额外获得",color:"gray",bold:true},{translate: "json.kards.dialog.setting.random_start.main.872", fallback: "[春暖花开]",color:"light_purple",bold:true},{translate: "json.kards.dialog.setting.random_start.main.873", fallback: "[好高骛远]",color:"white",bold:true},{translate: "json.kards.dialog.setting.random_start.main.874", fallback: "6K",color:"gold",bold:true}]
execute if score #system random_start matches 13 run tellraw @a [{"text":"电表倒转","color":"gold"}]
execute if score #system random_start matches 13 run tellraw @a [{translate: "json.kards.dialog.setting.random_start.main.871", fallback: "每使用1张牌 都有概率额外获得",color:"gray",bold:true},{translate: "json.kards.dialog.setting.random_start.main.872", fallback: "[春暖花开]",color:"light_purple",bold:true},{translate: "json.kards.dialog.setting.random_start.main.873", fallback: "[好高骛远]",color:"white",bold:true},{translate: "json.kards.dialog.setting.random_start.main.874", fallback: "6K",color:"gold",bold:true}]

execute if score #system random_start matches 14 run title @a title {translate: "json.kards.dialog.setting.random_start.main.875", fallback: "无尽贪婪",color:"gold",bold:true}
execute if score #system random_start matches 14 run title @a subtitle [{translate: "json.kards.dialog.setting.random_start.main.855", fallback: "所有人默认使用",color:"gray",bold:true},{translate: "json.kards.dialog.setting.random_start.main.876", fallback: "[贪欲魔盒]",color:"white",bold:true}]
execute if score #system random_start matches 14 run tellraw @a [{"text":"无尽贪婪","color":"gold"}]
execute if score #system random_start matches 14 run tellraw @a [{translate: "json.kards.dialog.setting.random_start.main.855", fallback: "所有人默认使用",color:"gray",bold:true},{translate: "json.kards.dialog.setting.random_start.main.876", fallback: "[贪欲魔盒]",color:"white",bold:true}]

tellraw @a {"text":""}
tellraw @a [{"text":"======———-———======","color":"gray"}]
tellraw @a {"text":""}
scoreboard players add @a cishu 5

function kards:game/random_start/start_event