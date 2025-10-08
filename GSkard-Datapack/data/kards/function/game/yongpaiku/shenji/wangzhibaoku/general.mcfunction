
#森林之护
execute as @a if items entity @s armor.chest *[custom_data={kards:'森林之护'}] run tag @s add senlinzhihu
scoreboard players add @a[tag=senlinzhihu] senlinzhihu_HealBack 1
execute as @a[tag=senlinzhihu] if score @s senlinzhihu_HealBack matches 90 at @s run scoreboard players add @s HealBack 1
execute as @a[tag=senlinzhihu] if entity @s[team=red] if score @s senlinzhihu_HealBack matches 90 at @s run scoreboard players add @e[distance=..5,team=red,tag=!tuteng] HealBack 1
execute as @a[tag=senlinzhihu] if entity @s[team=blue] if score @s senlinzhihu_HealBack matches 90 at @s run scoreboard players add @a[distance=..5,team=blue,tag=!tuteng] HealBack 1
execute as @a[tag=senlinzhihu] if entity @s[team=red] if score @s senlinzhihu_HealBack matches 90 at @e[distance=..5,team=red,tag=!tuteng] run particle minecraft:heart ~ ~2 ~ 0 0 0 0 1 force @a
execute as @a[tag=senlinzhihu] if entity @s[team=blue] if score @s senlinzhihu_HealBack matches 90 at @e[distance=..5,team=blue,tag=!tuteng] run particle minecraft:heart ~ ~2 ~ 0 0 0 0 1 force @a

execute as @a[tag=senlinzhihu] if score @s senlinzhihu_HealBack matches 90 run scoreboard players set @s senlinzhihu_HealBack 0

execute as @a[tag=senlinzhihu] run scoreboard players operation @s senlinzhihu_taken -= @s senlinzhihu_absorbed
scoreboard players set @a[tag=senlinzhihu] senlinzhihu_absorbed 0
execute as @a[tag=senlinzhihu] if score @s senlinzhihu_taken matches 200.. run effect give @s absorption 20 2 false
execute as @a[tag=senlinzhihu] if score @s senlinzhihu_taken matches 200.. run scoreboard players remove @s senlinzhihu_taken 200
execute as @a[tag=senlinzhihu] unless items entity @s armor.chest *[custom_data={kards:'森林之护'}] run tag @s remove senlinzhihu
#天神石板甲
execute as @a if items entity @s armor.chest *[custom_data={kards:'天神石板甲'}] run tag @s add tianshenshibanjia
execute as @a if items entity @s armor.chest *[custom_data={kards:'天神石板甲'}] run tag @s add tianshenshibanjia_Bossbar

execute as @a[tag=tianshenshibanjia_Bossbar] run function kards:game/yongpaiku/shenji/wangzhibaoku/tianshenshibanjia/bossbar/1

execute as @a[tag=tianshenshibanjia] run scoreboard players operation @s tianshenshibanjia_hurt_temp += @s tianshenshibanjia_hurt
scoreboard players reset @a tianshenshibanjia_hurt
scoreboard players add @a[tag=tianshenshibanjia,scores={tianshenshibanjia_hurt_temp=20..}] tianshenshibanjia_xiansheng 1
scoreboard players remove @a[tag=tianshenshibanjia,scores={tianshenshibanjia_hurt_temp=20..}] tianshenshibanjia_hurt_temp 20

scoreboard players set @a[scores={tianshenshibanjia_xiansheng=81..}] tianshenshibanjia_xiansheng 80

effect give @a[tag=tianshenshibanjia,scores={tianshenshibanjia_xiansheng=12..23}] resistance 1 0 false
effect give @a[tag=tianshenshibanjia,scores={tianshenshibanjia_xiansheng=24..35}] resistance 1 1 false
effect give @a[tag=tianshenshibanjia,scores={tianshenshibanjia_xiansheng=36..47}] resistance 1 2 false
effect give @a[tag=tianshenshibanjia,scores={tianshenshibanjia_xiansheng=48..59}] resistance 1 3 false
effect give @a[tag=tianshenshibanjia,scores={tianshenshibanjia_xiansheng=60..}] resistance 1 4 false


execute as @a[tag=tianshenshibanjia,scores={tianshenshibanjia_xiansheng=1..},team=red] at @s if entity @e[tag=!spectator,team=blue,distance=..4] run scoreboard players add @s tianshenshibanjia_attack_time 1
execute as @a[tag=tianshenshibanjia,scores={tianshenshibanjia_xiansheng=1..},team=blue] at @s if entity @e[tag=!spectator,team=red,distance=..4] run scoreboard players add @s tianshenshibanjia_attack_time 1
execute as @a[tag=tianshenshibanjia,scores={tianshenshibanjia_attack_time=20}] run scoreboard players set @s tianshenshibanjia_damage 8
execute as @a[tag=tianshenshibanjia,scores={tianshenshibanjia_attack_time=20}] run scoreboard players remove @s tianshenshibanjia_xiansheng 1
execute as @a[tag=tianshenshibanjia,scores={tianshenshibanjia_attack_time=20}] at @s run function kards:game/yongpaiku/shenji/wangzhibaoku/tianshenshibanjia/damage
execute as @a[tag=tianshenshibanjia,scores={tianshenshibanjia_attack_time=20}] at @s summon marker run function kards:game/yongpaiku/shenji/wangzhibaoku/tianshenshibanjia/particle/1
execute as @a[tag=tianshenshibanjia,scores={tianshenshibanjia_attack_time=20}] run scoreboard players set @s tianshenshibanjia_attack_time 0

#scoreboard players set @a[tag=!tianshenshibanjia] tianshenshibanjia_xiansheng 0

execute as @a[tag=tianshenshibanjia] unless items entity @s armor.chest *[custom_data={kards:'天神石板甲'}] run tag @s remove tianshenshibanjia
#凛冬之铠
execute as @a if items entity @s armor.chest *[custom_data={kards:'凛冬之铠'}] run tag @s add lindongzhikai

scoreboard players add @a[tag=lindongzhikai] lindongzhikai_lingyu 1
execute as @a if score @s lindongzhikai_lingyu matches 40 at @s run function kards:game/yongpaiku/shenji/wangzhibaoku/lindongzhikai/1

execute as @a[tag=lindongzhikai] unless items entity @s armor.chest *[custom_data={kards:'凛冬之铠'}] run tag @s remove lindongzhikai
#苦难摇篮
execute as @a if items entity @s armor.chest *[custom_data={kards:'苦难摇篮'}] run tag @s add kunanyaolan
execute as @a[tag=kunanyaolan] if score @s kunanyaolan_hurt_1 matches 200.. run scoreboard players set @s kunanyaolan_damage 20
execute as @a[tag=kunanyaolan] if score @s kunanyaolan_hurt_1 matches 200.. run function kards:game/yongpaiku/shenji/wangzhibaoku/kunanyaolan/damage
execute as @a[tag=kunanyaolan] if score @s kunanyaolan_hurt_1 matches 200.. run scoreboard players remove @s kunanyaolan_hurt_1 200

execute as @a[tag=kunanyaolan] if score @s kunanyaolan_hurt_2 matches 400.. at @s run function kards:game/yongpaiku/shenji/wangzhibaoku/kunanyaolan/summon

scoreboard players remove @e[tag=kunanhuashen] kunanhuashen_live 1
scoreboard players add @e[tag=kunanhuashen] kunanhuashen_attack_time 1
execute as @e[tag=kunanhuashen,scores={kunanhuashen_attack_time=20},type=wolf] at @s run function kards:game/yongpaiku/shenji/wangzhibaoku/kunanyaolan/kunanhuashen_damage
execute as @e[tag=kunanhuashen] if data entity @s {Sitting:1b} run data modify entity @s Sitting set value 0b

execute at @e[tag=kunanhuashen,scores={kunanhuashen_live=..0},type=wolf] run particle ash ~ ~0.5 ~ 0.5 0.5 0.5 1 500 force @a
tp @e[tag=kunanhuashen,scores={kunanhuashen_live=..0},type=wolf] 0 -100 0
execute as @e[tag=kunanhuashen,scores={kunanhuashen_live=..0},type=wolf] run data modify entity @s Owner set from entity @e[type=!player,limit=1] UUID
kill @e[tag=kunanhuashen,scores={kunanhuashen_live=..0},type=wolf]

scoreboard players set @a[tag=!kunanyaolan] kunanyaolan_hurt_1 0
scoreboard players set @a[tag=!kunanyaolan] kunanyaolan_hurt_2 0

execute as @a[tag=kunanyaolan] unless items entity @s armor.chest *[custom_data={kards:'苦难摇篮'}] run tag @s remove kunanyaolan
#祥兆玉石
execute as @a if items entity @s container.* *[custom_data={kards:'祥兆玉石'}] run tag @s add xiangzhaoyushi
effect clear @a[tag=xiangzhaoyushi] slowness
effect clear @a[tag=xiangzhaoyushi] mining_fatigue
effect clear @a[tag=xiangzhaoyushi] blindness
effect clear @a[tag=xiangzhaoyushi] weakness
effect clear @a[tag=xiangzhaoyushi] poison
effect clear @a[tag=xiangzhaoyushi] wither
effect clear @a[tag=xiangzhaoyushi] levitation
effect clear @a[tag=xiangzhaoyushi] darkness
execute as @a[team=red,tag=xiangzhaoyushi] at @s run effect give @e[team=blue,distance=..4,tag=!spectator] slowness 3 2 false
execute as @a[team=blue,tag=xiangzhaoyushi] at @s run effect give @e[team=red,distance=..4,tag=!spectator] slowness 3 2 false

scoreboard players add @a[tag=xiangzhaoyushi] xiangzhaoyushi 1
execute as @a[tag=xiangzhaoyushi] if score @s xiangzhaoyushi matches 1200.. run effect give @s absorption 60 4 false
execute as @a[tag=xiangzhaoyushi] if score @s xiangzhaoyushi matches 1200.. run scoreboard players set @s xiangzhaoyushi 0
execute as @a[tag=xiangzhaoyushi] unless items entity @s container.* *[custom_data={kards:'祥兆玉石'}] run tag @s remove xiangzhaoyushi

#飞升护符
execute as @a if items entity @s container.* *[custom_data={kards:'飞升护符'}] run tag @s add feishenhufu
execute as @a[tag=feishenhufu] run attribute @s minecraft:max_health modifier add 0-0-11 20 add_value
execute if score 回合数 GameRound matches 17.. run effect give @a[tag=feishenhufu] strength infinite 3 false
execute if score 回合数 GameRound matches 0 run effect give @a[tag=feishenhufu] strength infinite 3 false
execute as @a[tag=feishenhufu] unless items entity @s container.* *[custom_data={kards:'飞升护符'}] run attribute @s minecraft:max_health modifier remove 0-0-11
execute as @a[tag=feishenhufu] unless items entity @s container.* *[custom_data={kards:'飞升护符'}] run effect clear @s strength
execute as @a[tag=feishenhufu] unless items entity @s container.* *[custom_data={kards:'飞升护符'}] run tag @s remove feishenhufu
#讲述者
execute as @a if items entity @s container.* *[custom_data={kards:'讲述者'}] run tag @s add jiangshuzhe
function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/general
execute as @a[tag=jiangshuzhe] unless items entity @s container.* *[custom_data={kards:'讲述者'}] run tag @s remove jiangshuzhe
#寄生粘液
execute as @a[tag=jishengnianye] run scoreboard players set @s jinzijue 0
execute as @a[tag=jishengnianye] if score @s health matches 101.. run effect give @s strength 1 4 false
execute as @a[tag=jishengnianye] if score @s health matches 101.. run effect give @s wither 1 1 false
execute as @a[tag=jishengnianye] if score @s health matches 30..100 run effect give @s strength 1 3 false
execute as @a[tag=jishengnianye] if score @s health matches 30..100 run effect give @s resistance 1 0 false
execute as @a[tag=jishengnianye] if score @s health matches 30..100 run effect give @s slowness 1 1 false
execute as @a[tag=jishengnianye] if score @s health matches ..29 run scoreboard players add @s jishengnianyeHealback 1
execute as @a[tag=jishengnianye] if score @s jishengnianyeHealback matches 7.. run scoreboard players add @s HealBack 1
execute as @a[tag=jishengnianye] if score @s jishengnianyeHealback matches 7.. run scoreboard players remove @s jishengnianyeHealback 7

execute as @a[tag=jishengnianye] if score @s health matches ..29 run effect give @s minecraft:speed 1 1 false
execute as @a[tag=jishengnianye] if score @s health matches ..29 run attribute @s minecraft:entity_interaction_range modifier add 0-0-2 -1 add_multiplied_total
execute as @a[tag=jishengnianye] unless score @s health matches ..29 run attribute @s minecraft:entity_interaction_range modifier remove 0-0-2
execute as @a[tag=jishengnianye] if score @s death matches 1.. run attribute @s max_health base set 20
execute as @a[tag=jishengnianye] if score @s death matches 1.. run attribute @s entity_interaction_range modifier remove 0-0-2
execute as @a[tag=jishengnianye] if score @s death matches 1.. run tag @s remove jishengnianye
#无休之火
execute as @a if items entity @s container.* *[custom_data={kards:'无休之火'}] run tag @s add wuxiuzhihuo
scoreboard players set @a[tag=!wuxiuzhihuo] wuxiuzhihuo_jiben 0
scoreboard players set @a[tag=!wuxiuzhihuo] wuxiuzhihuo_juntuan 0
scoreboard players set @a[tag=!wuxiuzhihuo] wuxiuzhihuo_fashu 0
scoreboard players set @a[tag=!wuxiuzhihuo] wuxiuzhihuo_zuzhou 0
scoreboard players set @a[tag=!wuxiuzhihuo] wuxiuzhihuo_zhuangbei 0
scoreboard players set @a[tag=!wuxiuzhihuo] wuxiuzhihuo_xianjin 0
scoreboard players set @a[tag=!wuxiuzhihuo] wuxiuzhihuo_tuteng 0
scoreboard players set @a[tag=!wuxiuzhihuo] wuxiuzhihuo_shenji 0

execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 0 run scoreboard players set @s wuxiuzhihuo_jiben 0
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 0 run scoreboard players set @s wuxiuzhihuo_juntuan 0
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 0 run scoreboard players set @s wuxiuzhihuo_fashu 0
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 0 run scoreboard players set @s wuxiuzhihuo_zuzhou 0
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 0 run scoreboard players set @s wuxiuzhihuo_zhuangbei 0
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 0 run scoreboard players set @s wuxiuzhihuo_xianjin 0
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 0 run scoreboard players set @s wuxiuzhihuo_tuteng 0
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 0 run scoreboard players set @s wuxiuzhihuo_shenji 0

execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 1 if score @s wuxiuzhihuo_jiben matches 1.. run function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/rongzhu/jiben
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 1 if score @s wuxiuzhihuo_juntuan matches 1.. run function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/rongzhu/juntuan
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 1 if score @s wuxiuzhihuo_fashu matches 1.. run function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/rongzhu/fashu
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 1 if score @s wuxiuzhihuo_zuzhou matches 1.. run function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/rongzhu/zuzhou
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 1 if score @s wuxiuzhihuo_zhuangbei matches 1.. run function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/rongzhu/zhuangbei
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 1 if score @s wuxiuzhihuo_xianjin matches 1.. run function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/rongzhu/xianjing
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 1 if score @s wuxiuzhihuo_tuteng matches 1.. run function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/rongzhu/tuteng
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 1 if score @s wuxiuzhihuo_shenji matches 1.. run function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/rongzhu/shenji

execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_throw matches 1.. run function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/throw

execute as @a[tag=wuxiuzhihuo] if items entity @s weapon.mainhand lantern[custom_data={kards:'无休之火'}] if score @s wuxiuzhihuo_shengji matches 1..45 run title @s actionbar [{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.general.1", fallback: "初窥  ",color:"aqua"},{score:{objective:"wuxiuzhihuo_shengji",name:"@s"},color:"green"}]
execute as @a[tag=wuxiuzhihuo] if items entity @s weapon.mainhand lantern[custom_data={kards:'无休之火'}] if score @s wuxiuzhihuo_shengji matches 46..90 run title @s actionbar [{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.general.2", fallback: "开窍  ",color:"blue"},{score:{objective:"wuxiuzhihuo_shengji",name:"@s"},color:"green"}]
execute as @a[tag=wuxiuzhihuo] if items entity @s weapon.mainhand lantern[custom_data={kards:'无休之火'}] if score @s wuxiuzhihuo_shengji matches 91..135 run title @s actionbar [{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.general.3", fallback: "焱智  ",color:"yellow"},{score:{objective:"wuxiuzhihuo_shengji",name:"@s"},color:"green"}]
execute as @a[tag=wuxiuzhihuo] if items entity @s weapon.mainhand lantern[custom_data={kards:'无休之火'}] if score @s wuxiuzhihuo_shengji matches 136..180 run title @s actionbar [{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.general.4", fallback: "合一  ",color:"gold"},{score:{objective:"wuxiuzhihuo_shengji",name:"@s"},color:"green"}]
execute as @a[tag=wuxiuzhihuo] if items entity @s weapon.mainhand lantern[custom_data={kards:'无休之火'}] if score @s wuxiuzhihuo_shengji matches 181..350 run title @s actionbar [{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.general.5", fallback: "天察  ",color:"red"},{score:{objective:"wuxiuzhihuo_shengji",name:"@s"},color:"green"}]
execute as @a[tag=wuxiuzhihuo] if items entity @s weapon.mainhand lantern[custom_data={kards:'无休之火'}] if score @s wuxiuzhihuo_shengji matches 351.. run title @s actionbar [{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.general.6", fallback: "无休  ",color:"dark_red"},{score:{objective:"wuxiuzhihuo_shengji",name:"@s"},color:"green"}]

execute as @a if items entity @s weapon.offhand lantern[custom_data={kards:'无休之火'}] run scoreboard players set @s Fire 200

execute as @a[tag=wuxiuzhihuo] if items entity @s weapon.mainhand lantern[custom_data={kards:'无休之火'}]

execute as @a[tag=wuxiuzhihuo] unless items entity @s container.* *[custom_data={kards:'无休之火'}] run scoreboard players set @s wuxiuzhihuo_shengji 0
execute as @a[tag=wuxiuzhihuo] unless items entity @s container.* *[custom_data={kards:'无休之火'}] run scoreboard players set @s wuxiuzhihuo 0
execute as @a[tag=wuxiuzhihuo] unless items entity @s container.* *[custom_data={kards:'无休之火'}] run tag @s remove wuxiuzhihuo
#石中剑
execute as @a if items entity @s weapon.mainhand stone_sword[custom_data={kards:'石中剑'}] run tag @s add shizhongjian

execute as @a[tag=shizhongjian] unless items entity @s weapon.mainhand stone_sword[custom_data={kards:'石中剑'}] run tag @s remove shizhongjian

execute as @a[tag=shizhongjian_true] unless items entity @s container.* stone_sword[custom_data={kards:'石中剑'}] run scoreboard players reset @s shizhongjian_template_1
execute as @a[tag=shizhongjian_true] unless items entity @s container.* stone_sword[custom_data={kards:'石中剑'}] run tag @s remove shizhongjian_true

#风暴战锤
execute as @a if items entity @s container.* mace[custom_data={kards:'风暴战锤'}] run tag @s add fengbaozhanchui
execute as @a[tag=fengbaozhanchui] if score @s fengbaozhanchui_lightning_bolt matches 1.. run scoreboard players remove @s fengbaozhanchui_lightning_bolt 1
execute as @a[tag=fengbaozhanchui] if score @s fengbaozhanchui_lightning_bolt matches 0 run tellraw @s [{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.general.7", fallback: "[风暴战锤]",color:"white"},{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.general.8", fallback: "雷击已补充!",color:"gold"}]
execute as @a[tag=fengbaozhanchui] if score @s fengbaozhanchui_lightning_bolt matches 0 run playsound minecraft:entity.lightning_bolt.impact player @s ~ ~ ~ 100 2
execute as @a[tag=fengbaozhanchui] if score @s fengbaozhanchui_lightning_bolt matches 0 run scoreboard players reset @s fengbaozhanchui_lightning_bolt
execute as @a[tag=fengbaozhanchui] unless items entity @s container.* mace[custom_data={kards:'风暴战锤'}] run tag @s remove fengbaozhanchui

execute as @a[tag=fengbaozhanchui] if items entity @s weapon.mainhand mace[custom_data={kards:'风暴战锤'}] unless score @s fengbaozhanchui_xuneng_Time matches 1.. if predicate kards:sneak run scoreboard players add @s fengbaozhanchui_xuneng 1
execute as @a[tag=fengbaozhanchui] unless predicate kards:sneak run scoreboard players reset @s fengbaozhanchui_xuneng

execute as @a[tag=fengbaozhanchui] if score @s fengbaozhanchui_xuneng matches 20 at @s run tp @s ~ ~0.2 ~
execute as @a[tag=fengbaozhanchui] if score @s fengbaozhanchui_xuneng matches 20 run function kards:game/yongpaiku/shenji/wangzhibaoku/fengbaozhanchui/5
execute as @a[tag=fengbaozhanchui] if score @s fengbaozhanchui_xuneng_Time matches 1.. run scoreboard players remove @s fengbaozhanchui_xuneng_Time 1
execute as @a[tag=fengbaozhanchui] if score @s fengbaozhanchui_xuneng_Time matches 0 run tellraw @s [{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.general.7", fallback: "[风暴战锤]",color:"white"},{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.general.9", fallback: "蓄能重击已补充!",color:"gold"}]
execute as @a[tag=fengbaozhanchui] if score @s fengbaozhanchui_xuneng_Time matches 0 run playsound minecraft:entity.lightning_bolt.impact player @s ~ ~ ~ 100 2
execute as @a[tag=fengbaozhanchui] if score @s fengbaozhanchui_xuneng_Time matches 0 run scoreboard players reset @s fengbaozhanchui_xuneng_Time

execute as @a[tag=fengbaozhanchui_xunengzhongji] unless score @s fengbaozhanchui_xuneng_Time matches 495..500 if data entity @s {OnGround:1b} at @s run function kards:game/yongpaiku/shenji/wangzhibaoku/fengbaozhanchui/6
#死神之镰
execute as @a if items entity @s weapon.mainhand *[custom_data={kards:'死神之镰'}] run tag @s add sishenzhilian

scoreboard players remove @a[scores={enchantment_linghundaji_damage_Time=1..}] enchantment_linghundaji_damage_Time 1

execute as @a[tag=sishenzhilian] if score @s used_sishenzhilian matches 2.. run scoreboard players add @s HealBack 1
execute as @a[tag=sishenzhilian] if score @s used_sishenzhilian matches 2.. run scoreboard players set @s used_sishenzhilian 0
execute as @a[tag=sishenzhilian] unless items entity @s weapon.mainhand *[custom_data={kards:'死神之镰'}] run tag @s remove sishenzhilian
execute as @a store result score @s sishenzhilian_soul_small run clear @s *[minecraft:custom_data={kards:'灵魂_小'}] 0
execute as @a store result score @s sishenzhilian_soul_medium run clear @s *[minecraft:custom_data={kards:'灵魂_中'}] 0
execute as @a if score @s sishenzhilian_soul_small matches 10.. run function kards:game/yongpaiku/shenji/wangzhibaoku/sishenzhilian/3
execute as @a if score @s sishenzhilian_soul_medium matches 10.. run function kards:game/yongpaiku/shenji/wangzhibaoku/sishenzhilian/4
#正义长戟
execute as @a if items entity @s weapon.mainhand *[custom_data={kards:'正义长戟'}] run tag @s add zhengyichangji
execute as @a[tag=zhengyichangji] unless items entity @s weapon.mainhand trident[custom_data={kards:'正义长戟'}] unless entity @e[type=trident,nbt={item:{components:{"minecraft:custom_data":{kards:'正义长戟'}}}}] run tag @s remove zhengyichangji

execute as @a[tag=used_zhengyichangji] run scoreboard players set @s used_zhengyichangji 100
execute as @a[tag=used_zhengyichangji] run tag @s remove used_zhengyichangji
scoreboard players add @a used_zhengyichangji 0
execute as @a if score @s used_zhengyichangji matches 1 run tellraw @s [{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.general.10", fallback: "[正义长戟] ",color:"aqua"},{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.general.11", fallback: "制裁效果就绪!",color:"green"}]
execute as @a if score @s used_zhengyichangji matches 1 at @s run playsound minecraft:item.trident.riptide_1 player @s ~ ~ ~ 100 2
execute as @a if score @s used_zhengyichangji matches 1.. run scoreboard players remove @s used_zhengyichangji 1
#轻灵之语
execute as @a if items entity @s weapon.* bow[custom_data={kards:'轻灵之语'}] run tag @s add qinglingzhiyu

execute as @a[tag=qinglingzhiyu] run attribute @s minecraft:movement_speed modifier add 0-0-1 0.35 add_multiplied_base

execute as @a[tag=qinglingzhiyu] unless items entity @s weapon.* bow[custom_data={kards:'轻灵之语'}] run attribute @s movement_speed modifier remove 0-0-1
execute as @a[tag=qinglingzhiyu] unless items entity @s weapon.* bow[custom_data={kards:'轻灵之语'}] run tag @s remove qinglingzhiyu

scoreboard players remove @a[scores={qinglingzhiyu_Time=1..}] qinglingzhiyu_Time 1
execute as @a if score @s qinglingzhiyu_Time matches 0 run tellraw @s [{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.general.12", fallback: "[轻灵之语]",color:"white"},{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.general.13", fallback: "风袭效果就绪!",color:"gold"}]
execute as @a if score @s qinglingzhiyu_Time matches 0 at @s run playsound entity.wind_charge.throw player @s ~ ~ ~ 100 2
execute as @a if score @s qinglingzhiyu_Time matches 0 run scoreboard players reset @s qinglingzhiyu_Time

execute as @a[tag=qinglingzhiyu] unless items entity @s container.* arrow unless items entity @s weapon.* arrow run give @s arrow 1
kill @e[type=item,nbt={Item:{id:"minecraft:arrow"}}]
execute as @a[tag=!qinglingzhiyu] run clear @s arrow

#炎阳大剑
execute as @a if items entity @s weapon.* iron_sword[custom_data={kards:'炎阳大剑'}] run tag @s add yanyangdajian

effect give @a[tag=yanyangdajian] fire_resistance 1 0 false

execute as @e[tag=marker_feixue,type=marker] at @s run function kards:game/yongpaiku/shenji/wangzhibaoku/yanyangdajian/2

execute as @a[tag=yanyangdajian] if predicate kards:sneak unless score @s yanyangdajian_Time matches 1.. run scoreboard players add @s yangyandajian 1
execute as @a[tag=yanyangdajian] unless predicate kards:sneak run scoreboard players reset @s yangyandajian
execute as @a[tag=yanyangdajian] if score @s yangyandajian matches 50 run function kards:game/yongpaiku/shenji/wangzhibaoku/yanyangdajian/5
scoreboard players remove @a[scores={yanyangdajian_Time=1..}] yanyangdajian_Time 1

execute as @a if score @s yanyangdajian_Time matches 0 run tellraw @s [{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.general.14", fallback: "[炎阳大剑]",color:"dark_red"},[{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.general.15", fallback: " 焚烧之域",color:"#690101"},{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.general.16", fallback: " 就绪!",color:"gold"}]]
execute as @a if score @s yanyangdajian_Time matches 0 at @s run playsound minecraft:entity.blaze.hurt player @s ~ ~ ~ 100 0
execute as @a if score @s yanyangdajian_Time matches 1 at @s run playsound minecraft:entity.blaze.hurt player @s ~ ~ ~ 100 1
execute as @a if score @s yanyangdajian_Time matches 2..3 at @s run playsound minecraft:entity.blaze.hurt player @s ~ ~ ~ 100 2
scoreboard players reset @a[scores={yanyangdajian_Time=0}] yanyangdajian_Time

scoreboard players remove @a[scores={yangyandajian_fenshaozhiyu=1..}] yangyandajian_fenshaozhiyu 1
#execute as @a[scores={yangyandajian_fenshaozhiyu=1..}] at @s run particle lava ~ ~ ~ 2 0.1 2 1 5 force @a

scoreboard players add @a[scores={yangyandajian_fenshaozhiyu=1..}] yangyandajian_fenshaozhiyu_damage 1
execute as @a[scores={yangyandajian_fenshaozhiyu=1..}] at @s summon marker run function kards:game/yongpaiku/shenji/wangzhibaoku/yanyangdajian/particle/1
execute as @a[scores={yangyandajian_fenshaozhiyu_damage=20}] run tag @s add yangyandajian_fenshaozhiyu_damage
execute as @a[team=red,scores={yangyandajian_fenshaozhiyu_damage=20}] at @s as @e[team=blue,distance=..5] run damage @s 2 kards:huoyan by @p[team=red,tag=yangyandajian_fenshaozhiyu_damage]
execute as @a[team=blue,scores={yangyandajian_fenshaozhiyu_damage=20}] at @s as @e[team=red,distance=..5] run damage @s 2 kards:huoyan by @p[team=blue,tag=yangyandajian_fenshaozhiyu_damage]
execute as @a[scores={yangyandajian_fenshaozhiyu_damage=20},tag=yangyandajian_fenshaozhiyu_damage] run tag @s remove yangyandajian_fenshaozhiyu_damage
scoreboard players reset @a[scores={yangyandajian_fenshaozhiyu_damage=20}] yangyandajian_fenshaozhiyu_damage

execute as @a[team=red,scores={yangyandajian_fenshaozhiyu=1..}] at @s run tag @e[team=blue,distance=..5,gamemode=adventure] add Fire
execute as @a[team=blue,scores={yangyandajian_fenshaozhiyu=1..}] at @s run tag @e[team=red,distance=..5,gamemode=adventure] add Fire
execute as @a[team=red,scores={yangyandajian_fenshaozhiyu=1..}] at @s run scoreboard players set @e[team=blue,distance=..5,gamemode=adventure] Fire 120
execute as @a[team=blue,scores={yangyandajian_fenshaozhiyu=1..}] at @s run scoreboard players set @e[team=red,distance=..5,gamemode=adventure] Fire 120
execute as @a if score @s yangyandajian_fenshaozhiyu matches 0 run scoreboard players reset @s yangyandajian_fenshaozhiyu

execute as @a[tag=yanyangdajian] unless items entity @s weapon.* iron_sword[custom_data={kards:'炎阳大剑'}] run tag @s remove yanyangdajian

#凋零太刀
execute as @a if items entity @s weapon.* netherite_sword[custom_data={kards:'凋零太刀'}] run tag @s add diaolingtaidao

execute as @a[tag=diaolingtaidao] if predicate kards:sneak unless score @s diaolingtaidao_Time matches 1.. run scoreboard players add @s diaolingtaidao 1
execute as @a[tag=diaolingtaidao] if score @s diaolingtaidao matches 6 run scoreboard players set @s diaolingtaidao_Time 130
execute as @a[tag=diaolingtaidao] if score @s diaolingtaidao matches 6 run function kards:game/yongpaiku/shenji/wangzhibaoku/diaolingtaidao/1

scoreboard players remove @a[tag=diaolingtaidao,scores={diaolingtaidao_Time=1..}] diaolingtaidao_Time 1
execute as @a if score @s diaolingtaidao_Time matches 0 run tellraw @s [{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.general.17", fallback: "[凋零太刀]",color:"dark_gray"},{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.general.18", fallback: "拔刀·碎魂 效果就绪!",color:"gold"}]
execute as @a if score @s diaolingtaidao_Time matches 0 at @s run playsound entity.wither.shoot player @s
execute as @a if score @s diaolingtaidao_Time matches 0 run scoreboard players reset @s diaolingtaidao_Time
execute as @a[tag=diaolingtaidao] unless items entity @s weapon.* netherite_sword[custom_data={kards:'凋零太刀'}] run tag @s remove diaolingtaidao

scoreboard players remove @a[scores={diaolingtaidao_damage_add=1..}] diaolingtaidao_damage_add 1
scoreboard players reset @a[scores={diaolingtaidao_damage_add=0}] diaolingtaidao_damage_add

execute as @e[type=block_display,tag=diaolingtaidao_wither_rose] run scoreboard players remove @s diaolingtaidao_wither_rose 1
execute as @e[type=block_display,tag=diaolingtaidao_wither_rose] unless score @s diaolingtaidao_wither_rose matches 1.. run kill @s

execute as @e[type=block_display,tag=diaolingtaidao_wither_rose] run scoreboard players add @s diaolingtaidao_wither_rose_Healback 1
execute as @e[type=block_display,tag=diaolingtaidao_wither_rose,team=red] if score @s diaolingtaidao_wither_rose_Healback matches 20 at @s run scoreboard players add @a[team=red,distance=..7] HealBack 1
execute as @e[type=block_display,tag=diaolingtaidao_wither_rose,team=blue] if score @s diaolingtaidao_wither_rose_Healback matches 20 at @s run scoreboard players add @a[team=blue,distance=..7] HealBack 1
execute as @e[type=block_display,tag=diaolingtaidao_wither_rose] if score @s diaolingtaidao_wither_rose_Healback matches 20 run scoreboard players set @s diaolingtaidao_wither_rose_Healback 0

execute as @e[type=block_display,tag=diaolingtaidao_wither_rose,team=red] at @s run effect give @e[distance=..7,team=blue,limit=1,sort=random] wither 1 1 false
execute as @e[type=block_display,tag=diaolingtaidao_wither_rose,team=blue] at @s run effect give @e[distance=..7,team=red,limit=1,sort=random] wither 1 1 false

