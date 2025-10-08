function kards:game/yongpaiku/use_general/kard_general




function kards:game/yongpaiku/xianjing/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_zuzhouhujia kardCount
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

execute as @s[team=red] unless entity @a[team=blue,tag=!zuzhouhujia,tag=!spectator,tag=!Talent_shouhuzhe,tag=!Talent_huafanweijian] run tellraw @a [{translate: "kards.function.game.yongpaiku.fashu.zuzhouhujia.1.1", fallback: "滚木",color:blue},{translate: "kards.function.game.yongpaiku.fashu.zuzhouhujia.1.2", fallback: "穿戴上了",color:"gold"},{translate: "kards.function.game.yongpaiku.fashu.zuzhouhujia.1.3", fallback: "<诅咒护甲>",color:"light_purple"}]

execute as @s[team=blue] unless entity @a[team=blue,tag=!zuzhouhujia,tag=!spectator,tag=!Talent_shouhuzhe,tag=!Talent_huafanweijian] run tellraw @a [{translate: "kards.function.game.yongpaiku.fashu.zuzhouhujia.1.1", fallback: "滚木",color:red},{translate: "kards.function.game.yongpaiku.fashu.zuzhouhujia.1.2", fallback: "穿戴上了",color:"gold"},{translate: "kards.function.game.yongpaiku.fashu.zuzhouhujia.1.3", fallback: "<诅咒护甲>",color:"light_purple"}]

execute if entity @s[team=red] as @r[team=blue,tag=!zuzhouhujia,tag=!spectator,tag=!Talent_shouhuzhe,tag=!Talent_huafanweijian] at @s run function kards:game/yongpaiku/fashu/zuzhouhujia/2

execute if entity @s[team=blue] as @r[team=red,tag=!zuzhouhujia,tag=!spectator,tag=!Talent_shouhuzhe,tag=!Talent_huafanweijian] at @s run function kards:game/yongpaiku/fashu/zuzhouhujia/2

