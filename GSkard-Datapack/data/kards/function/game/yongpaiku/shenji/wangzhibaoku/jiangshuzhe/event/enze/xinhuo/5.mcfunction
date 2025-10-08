execute summon marker at @s run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/enze/xinhuo/particle/1
playsound minecraft:entity.experience_orb.pickup player @a
execute if entity @s[team=red] run scoreboard players add @e[team=red,distance=..5] HealBack 6
execute if entity @s[team=blue] run scoreboard players add @e[team=blue,distance=..5] HealBack 6
kill @s