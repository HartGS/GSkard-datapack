

execute if entity @s[team=red] at @e[tag=red_marker_7,limit=1] run summon iron_golem ~ 0 ~ {Team:red,attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:75.0d}],Health:75.0f,Tags:["tuteng"],CustomName: {"extra":[{text: ""},{color:"gold",text: "铁傀儡"}],text: ""},CustomNameVisible:1b,PlayerCreated:0b}
execute if entity @s[team=blue] at @e[tag=blue_marker_7,limit=1] run summon iron_golem ~ 0 ~ {Team:blue,attributes:[{id:"follow_range",base:100},{id:"minecraft:max_health",base:75.0d}],Health:75.0f,Tags:["tuteng"],CustomName: {"extra":[{text: ""},{color:"gold",text: "铁傀儡"}],text: ""},CustomNameVisible:1b,PlayerCreated:0b}
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_tiekuilei kardCount
