execute as @s[tag=!JiangShuZhe_XinHuo_rided] summon marker run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/enze/xinhuo/ride
execute as @s[team=red] run team join red @n[tag=JiangShuZhe_XinHuo_Marker_Start]
execute as @s[team=blue] run team join blue @n[tag=JiangShuZhe_XinHuo_Marker_Start]
tag @n[tag=JiangShuZhe_XinHuo_Marker_Start] remove JiangShuZhe_XinHuo_Marker_Start
tag @s[tag=!JiangShuZhe_XinHuo_rided] add JiangShuZhe_XinHuo_rided
