execute store result score @s jiangshuzhe_random run random value 1..41
execute if score @s jiangshuzhe_random matches 1..20 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/enze/roll
execute if score @s jiangshuzhe_random matches 21..40 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/zaizhang/roll
execute if score @s jiangshuzhe_random matches 41 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/yiwen/roll