
tellraw @a [{selector:"@s"},{text: ":",color: "gray"},{text: "规则 暂归于混沌",color: "blue"}]
execute store result score @s jiangshuzhe_random run random value 1..3
execute if score @s jiangshuzhe_random matches 1 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/yiwen/bolun/1
execute if score @s jiangshuzhe_random matches 2 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/yiwen/shiting/1
execute if score @s jiangshuzhe_random matches 3 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/yiwen/yiming/1

