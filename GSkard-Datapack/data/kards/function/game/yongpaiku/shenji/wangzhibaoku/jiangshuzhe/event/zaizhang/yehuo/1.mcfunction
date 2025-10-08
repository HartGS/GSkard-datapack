tellraw @a [{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.jiangshuzhe.event.zaizhang.yehuo.1.1", fallback: "《灾章·业火章》",color: "dark_red",bold:true}]
tellraw @a [{translate: "kards.function.game.paiku.yansheng.busituteng.hundun.5", fallback: "\"罪业既定 罚火自生 穷追不舍直至审判终结\"",color: "gray"}]
execute as @s[team=red] run tellraw @a [{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.jiangshuzhe.event.zaizhang.yehuo.1.2", fallback: "在",color: "gold"},{translate: "kards.function.game.end.win.blue_win.2", fallback: "蓝队",color:"blue"},{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.jiangshuzhe.event.zaizhang.yehuo.1.3", fallback: "队伍生成",color: "gold"},{translate: "kards.function.game.paiku.yansheng.busituteng.hundun.5", fallback: "\"业火\"",color: "red"}]
execute as @s[team=blue] run tellraw @a [{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.jiangshuzhe.event.zaizhang.yehuo.1.2", fallback: "在",color: "gold"},{translate: "kards.function.game.end.win.red_win.1", fallback: "红队",color:"red"},{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.jiangshuzhe.event.zaizhang.yehuo.1.3", fallback: "队伍生成",color: "gold"},{translate: "kards.function.game.paiku.yansheng.busituteng.hundun.5", fallback: "\"业火\"",color: "red"}]
tellraw @a [{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.jiangshuzhe.event.zaizhang.yehuo.1.4", fallback: "业火会朝着生命最高的敌方玩家不断前进 点燃碰撞的敌方玩家并造成伤害\n直至回合结束",color: "gold"}]

execute as @s[team=red] at @e[limit=1,tag=blue_marker_7] positioned ~ 1 ~ summon marker run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/zaizhang/yehuo/summon
execute as @s[team=blue] at @e[limit=1,tag=red_marker_7] positioned ~ 1 ~ summon marker run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/zaizhang/yehuo/summon

execute as @s[team=red] run team join red @n[tag=JiangShuZhe_YeHuo_Start]
execute as @s[team=blue] run team join blue @n[tag=JiangShuZhe_YeHuo_Start]

tag @e[tag=JiangShuZhe_YeHuo_Start] remove JiangShuZhe_YeHuo_Start

