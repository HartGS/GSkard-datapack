execute summon marker at @s run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/yiwen/bolun/summon

execute rotated as @n[tag=jiangshuzhe_bolun] run rotate @s ~ ~

tellraw @s [{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.jiangshuzhe.event.yiwen.bolun.2.1", fallback: "很遗憾的通知您 ",color:"red"},{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.jiangshuzhe.event.yiwen.bolun.2.2", fallback: "您的视角异常了",color:"gold"}]

kill @n[tag=jiangshuzhe_bolun]