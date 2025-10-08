execute store result score @s jiangshuzhe_shiting_time run random value 10..85

tellraw @s [{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.jiangshuzhe.event.yiwen.bolun.2.1", fallback: "很遗憾的通知您 ",color:"red"},{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.jiangshuzhe.event.yiwen.shiting.2.1", fallback: "您的时间阻滞了",color:"gold"}]
