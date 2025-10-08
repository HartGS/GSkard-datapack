execute as @s[tag=!JiangShuZhe_yiming_rided] summon marker run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/yiwen/yiming/ride

execute as @s[team=red] run team join red @n[tag=JiangShuZhe_yiming_Marker_Start]
execute as @s[team=blue] run team join blue @n[tag=JiangShuZhe_yiming_Marker_Start]

tag @n[tag=JiangShuZhe_yiming_Marker_Start] remove JiangShuZhe_yiming_Marker_Start
tag @s[tag=!JiangShuZhe_yiming_rided] add JiangShuZhe_yiming_rided
