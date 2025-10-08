
tellraw @a [{selector:"@s"},{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.jiangshuzhe.event.enze.roll.1", fallback: ":",color: "gray"},{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.jiangshuzhe.event.enze.roll.2", fallback: "赐福 乃自然之理",color: "green"}]
execute store result score @s jiangshuzhe_random run random value 1..4
execute if score @s jiangshuzhe_random matches 1 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/enze/guixiang/1
execute if score @s jiangshuzhe_random matches 2 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/enze/gongming
execute if score @s jiangshuzhe_random matches 3 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/enze/jinshen
execute if score @s jiangshuzhe_random matches 4 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/enze/xinhuo/1