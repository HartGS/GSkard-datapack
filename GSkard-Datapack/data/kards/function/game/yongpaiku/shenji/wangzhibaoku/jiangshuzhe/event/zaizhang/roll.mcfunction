
tellraw @a [{selector:"@s"},{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.jiangshuzhe.event.enze.roll.1", fallback: ":",color: "gray"},{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.jiangshuzhe.event.zaizhang.roll.1", fallback: "灾厄 亦循环之道",color: "dark_red"}]
execute store result score @s jiangshuzhe_random run random value 1..4
execute if score @s jiangshuzhe_random matches 1 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/zaizhang/neishang/1
execute if score @s jiangshuzhe_random matches 2 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/zaizhang/xiuhuai/1
execute if score @s jiangshuzhe_random matches 3 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/zaizhang/guju
execute if score @s jiangshuzhe_random matches 4 run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/zaizhang/yehuo/1