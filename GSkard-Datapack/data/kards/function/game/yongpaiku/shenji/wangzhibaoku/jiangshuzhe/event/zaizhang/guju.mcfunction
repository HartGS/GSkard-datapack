tellraw @a [{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.jiangshuzhe.event.zaizhang.guju.1", fallback: "《灾章·骨疽章》",color: "dark_red",bold:true}]
tellraw @a [{translate: "kards.function.game.paiku.yansheng.busituteng.hundun.5", fallback: "\"伤而不愈 如附骨之疽\"",color: "gray"}]
execute as @s[team=red] run tellraw @a [{translate: "kards.function.game.end.win.blue_win.2", fallback: "蓝队",color:blue},{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.jiangshuzhe.event.zaizhang.guju.2", fallback: "玩家获得持续120s的重伤",color: "red"}]
execute as @s[team=blue] run tellraw @a [{translate: "kards.function.game.end.win.red_win.1", fallback: "红队",color:red},{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.jiangshuzhe.event.zaizhang.guju.2", fallback: "玩家获得持续120s的重伤",color: "red"}]

execute as @s[team=red] run scoreboard players set @a[team=blue,gamemode=adventure] ZhongShang_Tick 2400
execute as @s[team=blue] run scoreboard players set @a[team=red,gamemode=adventure] ZhongShang_Tick 2400