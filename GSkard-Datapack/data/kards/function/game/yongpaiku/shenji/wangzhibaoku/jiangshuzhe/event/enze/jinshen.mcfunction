tellraw @a [{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.jiangshuzhe.event.enze.jinshen.1", fallback: "《恩泽·金身章》",color: "green",bold:true}]
tellraw @a [{translate: "kards.function.game.paiku.yansheng.busituteng.hundun.5", fallback: "\"凡胎沐浴天光 铸就不朽金身 万法不侵\"",color: "gray"}]
tellraw @a [{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.jiangshuzhe.event.enze.jinshen.2", fallback: "本回合 ",color: "gold"},{selector:"@s"},{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.jiangshuzhe.event.enze.jinshen.3", fallback: "队伍生物获得抗性提升3 缓慢2",color: "gold"}]

execute as @s[team=red] run scoreboard players set red jiangshuzhe_jinshen 1
execute as @s[team=blue] run scoreboard players set blue jiangshuzhe_jinshen 1