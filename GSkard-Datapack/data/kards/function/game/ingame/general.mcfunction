#牌相关
function kards:game/ingame/choupai/cishu
function kards:game/ingame/use_kard/general
#回合计时
execute if score #system GameStatus matches 1 run function kards:game/ingame/round/roundtime
#分数小标题
execute as @a[gamemode=adventure,tag=Ready] if score #system GameStatus matches 1..2 unless items entity @s weapon.mainhand lantern[custom_data={kards:"wuxiuzhihuo"}] run title @s actionbar [{text: "K/Kmax  ",color:"dark_green"},{score:{objective:"kardCount",name:"@s"},color:"red"},{text: "/",color: "red"},{score:{objective:"kardCountmax",name:"@s"},color:"red",bold: true}]
#赋值
scoreboard players add @a touxiang 0
scoreboard players add 红队 touxiang 0
scoreboard players add 蓝队 touxiang 0
scoreboard players add @a kardCount 0
scoreboard players add @a jinziqifeng 0
#图腾
function kards:game/ingame/tuteng/buff

execute if entity @e[tag=tuteng,distance=0.01..] run function kards:game/ingame/tuteng/health/1
#神器
function kards:game/yongpaiku/shenji/wangzhibaoku/general
#PVP
execute positioned -219 -65 -173 as @a[dx=19,dz=18,dy=2,gamemode=adventure] at @s if data entity @s {OnGround:1b} run function kards:game/ingame/round/pvpround/outworld
execute positioned -219 -65 -173 as @a[dx=19,dz=18,dy=25,gamemode=adventure] run attribute @s minecraft:safe_fall_distance modifier add 0-0-1 100 add_value
execute as @a positioned -219 -65 -173 unless entity @s[dx=19,dz=18,dy=25,gamemode=adventure] run attribute @s minecraft:safe_fall_distance modifier remove 0-0-1
#装备
function kards:game/yongpaiku/zhuangbei/general
#永寒
execute if entity @e[scores={YongHan=0..}] run function kards:game/ingame/custom_buff/yonghan/1
#冻结
execute if entity @e[scores={DongJie=0..}] run function kards:game/ingame/custom_buff/dongjie/1
#重伤
execute if entity @a[scores={ZhongShang_Tick=0..}] run function kards:game/ingame/custom_buff/zhongshang/tick
execute if entity @a[scores={ZhongShang_Round=0..}] run function kards:game/ingame/custom_buff/zhongshang/round
#回血
execute if entity @e[scores={HealBack=0..}] run function kards:game/ingame/custom_buff/healback
#破甲
execute if entity @e[scores={PoJia=0..}] run function kards:game/ingame/custom_buff/pojia/1
#眩晕
execute if entity @e[tag=XuanYun,scores={XuanYun=0..}] run function kards:game/ingame/custom_buff/xuanyun/1
#旋转
execute if entity @e[scores={XuanZhuan=0..}] run function kards:game/ingame/custom_buff/xuanzhuan
#断腿
execute if entity @e[scores={DuanTui=0..}] run function kards:game/ingame/custom_buff/duantui/1
#火焰
execute if entity @e[scores={Fire=0..}] run function kards:game/ingame/custom_buff/huoyan/1
#沉默
execute if entity @a[scores={chengmo=0..}] run function kards:game/ingame/custom_buff/chengmo/1

#> 不死图腾
#-生命图腾-#
scoreboard players add @e[tag=shengmingtuteng,type=item_display] shengmingtuteng_Healback 1
execute as @e[tag=shengmingtuteng,type=item_display,scores={shengmingtuteng_Healback=20},team=red] at @s run scoreboard players add @e[team=red,distance=..5] HealBack 1
execute as @e[tag=shengmingtuteng,type=item_display,scores={shengmingtuteng_Healback=20},team=blue] at @s run scoreboard players add @e[team=blue,distance=..5] HealBack 1

execute as @e[tag=shengmingtuteng,type=item_display,scores={shengmingtuteng_Healback=20},team=red] at @s at @e[team=red,distance=..5,tag=!shengmingtuteng] run particle heart ~ ~2 ~ 0 0 0 0 1 force @a
execute as @e[tag=shengmingtuteng,type=item_display,scores={shengmingtuteng_Healback=20},team=blue] at @s at @e[team=blue,distance=..5,tag=!shengmingtuteng] run particle heart ~ ~2 ~ 0 0 0 0 1 force @a

execute at @e[tag=shengmingtuteng,type=item_display] run particle composter ~ ~ ~ 0 10 0 0 10 force @a

scoreboard players reset @e[tag=shengmingtuteng,type=item_display,scores={shengmingtuteng_Healback=20}] shengmingtuteng_Healback

scoreboard players remove @e[tag=shengmingtuteng,type=item_display] shengmingtuteng 1
execute at @e[tag=shengmingtuteng,type=item_display,scores={shengmingtuteng=0}] run playsound minecraft:block.beacon.deactivate player @a[distance=..10] ~ ~ ~ 100 2
kill @e[tag=shengmingtuteng,type=item_display,scores={shengmingtuteng=0}]
#-自爆图腾-#
scoreboard players remove @a[tag=zibaotuteng] zibaotuteng_zibao 1
execute as @a[tag=zibaotuteng,scores={zibaotuteng_zibao=0}] at @s run function kards:game/yongpaiku/yansheng/totem/zibao/2
#监守者bossbar
execute unless entity @e[tag=warden_1] run bossbar set minecraft:warden_1 visible false
execute unless entity @e[tag=warden_2] run bossbar set minecraft:warden_2 visible false
execute unless entity @e[tag=warden_3] run bossbar set minecraft:warden_3 visible false
execute store result bossbar minecraft:warden_1 value run data get entity @e[tag=warden_1,limit=1] Health
execute store result bossbar minecraft:warden_2 value run data get entity @e[tag=warden_2,limit=1] Health
execute store result bossbar minecraft:warden_3 value run data get entity @e[tag=warden_3,limit=1] Health
#虚空回响
execute as @a if score @s jiben matches 1.. if score @s xukonghuixiang matches 1 run scoreboard players add @s cishu 1
execute as @a if score @s jiben matches 1.. if score @s xukonghuixiang matches 1 run scoreboard players remove @s jiben 1
#给苦力怕 末影螨速度1
effect give @e[type=creeper] speed 1 0 false
effect give @e[type=endermite] speed 1 0 false
#贪欲魔盒
execute as @a[scores={tanyumohe=1}] store result score @s tanyu_zuzhou run clear @s minecraft:music_disc_stal
execute as @a[scores={tanyumohe=1}] store result score @s tanyu_fashu run clear @s minecraft:music_disc_mellohi
execute as @a[scores={tanyumohe=1}] store result score @s tanyu_zhuangbei run clear @s minecraft:music_disc_13

execute as @a[scores={tanyumohe=1}] run scoreboard players operation @s tanyu += @s tanyu_zuzhou
execute as @a[scores={tanyumohe=1}] run scoreboard players operation @s tanyu += @s tanyu_fashu
execute as @a[scores={tanyumohe=1}] run scoreboard players operation @s tanyu += @s tanyu_zhuangbei

scoreboard players set @a[scores={tanyumohe=1}] tanyu_zuzhou 0
scoreboard players set @a[scores={tanyumohe=1}] tanyu_fashu 0
scoreboard players set @a[scores={tanyumohe=1}] tanyu_zhuangbei 0

execute as @a[scores={tanyumohe=1}] if score @s tanyu matches 1.. run function kards:game/paiku/yansheng/tanyu
#墓园狂欢
execute as @e[tag=kuanghuan_1] unless data entity @s {NoAI:1b} run scoreboard players add @s Mob_Skill_Time 1
execute as @e[tag=kuanghuan_1,scores={Mob_Skill_Time=100}] at @s run function kards:game/yongpaiku/yansheng/kuanghuanzombie/4

scoreboard players add @a[scores={muyuankuanghuan=1}] muyuankuanghuan1 0
scoreboard players add @a[scores={muyuankuanghuan=1}] muyuankuanghuan2 0
scoreboard players add @a[scores={muyuankuanghuan=1}] muyuankuanghuan3 0

execute as @a[scores={muyuankuanghuan=1}] store result score @s[scores={muyuankuanghuan1=0}] muyuankuanghuan1 run clear @s minecraft:music_disc_mall
execute as @a[scores={muyuankuanghuan=1}] store result score @s[scores={muyuankuanghuan2=0}] muyuankuanghuan2 run clear @s minecraft:music_disc_stal
execute as @a[scores={muyuankuanghuan=1}] store result score @s[scores={muyuankuanghuan2=0}] muyuankuanghuan2 run clear @s minecraft:music_disc_wait
execute as @a[scores={muyuankuanghuan=1}] store result score @s[scores={muyuankuanghuan3=0}] muyuankuanghuan3 run clear @s minecraft:music_disc_cat

execute as @a[scores={muyuankuanghuan=1}] if score @s muyuankuanghuan1 matches 1.. run scoreboard players add @s newzombie 1
execute as @a[scores={muyuankuanghuan=1}] if score @s muyuankuanghuan2 matches 1.. run scoreboard players add @s newzombie 2
execute as @a[scores={muyuankuanghuan=1}] if score @s muyuankuanghuan3 matches 1.. run scoreboard players add @s newzombie 3

execute as @a[scores={muyuankuanghuan=1}] if score @s muyuankuanghuan1 matches 1.. run scoreboard players remove @s muyuankuanghuan1 1
execute as @a[scores={muyuankuanghuan=1}] if score @s muyuankuanghuan2 matches 1.. run scoreboard players remove @s muyuankuanghuan2 1
execute as @a[scores={muyuankuanghuan=1}] if score @s muyuankuanghuan3 matches 1.. run scoreboard players remove @s muyuankuanghuan3 1

execute as @a[scores={muyuankuanghuan=1}] if score @s newzombie matches 1.. run function kards:game/paiku/yansheng/kuanghuanzombie
#来日偿还
execute as @a[scores={changhuan=1,damage_jilu=1..}] run function kards:game/yongpaiku/shenji/lairichanghuan/2
#防止踩田
execute as @a at @s if block ~ ~ ~ minecraft:farmland run effect give @s minecraft:slow_falling 1 0 false
execute as @a at @s if block ~ ~-1 ~ minecraft:farmland run effect give @s minecraft:slow_falling 1 0 false
#飞雷神
execute as @a if score @s feileishen matches 1.. run scoreboard players remove @s feileishen 1
execute as @a if score @s feileishen matches 1 run function kards:game/yongpaiku/shenji/feileishen/2
#下界合金套
execute as @a store result score @s chuandai_xjhj if items entity @s armor.* *[minecraft:custom_data={kards:'下界合金护甲'}]
effect give @a[scores={chuandai_xjhj=2}] resistance 1 1 false
effect give @a[scores={chuandai_xjhj=3}] resistance 1 2 false
effect give @a[scores={chuandai_xjhj=4}] resistance 1 3 false
#轻虑浅谋
execute as @a if score @s qinglvqianmou matches 1 if score @s use_kard matches 1.. run damage @s 2 kards:qinglvqianmou
execute as @a if score @s qinglvqianmou matches 1 if score @s use_kard matches 1.. run scoreboard players remove @s use_kard 1
execute as @a if score @s qinglvqianmou matches 1 if score @s use_kard matches 0 run scoreboard players set @s qinglvqianmou 0
#旁观玩家限制
execute as @a[gamemode=spectator] unless score #system GameStatus matches 0 at @s store result score @s Spectator_lifeNum if entity @a[gamemode=adventure,distance=..40]
execute as @a[gamemode=spectator] unless score #system GameStatus matches 0 unless score @s Spectator_lifeNum matches 1.. run tp @s @r[gamemode=adventure]
execute as @a[gamemode=spectator] unless score #system GameStatus matches 0 store result score @s Spectator_Pos.Y run data get entity @s Pos[1]
execute as @a[gamemode=spectator] unless score #system GameStatus matches 0 unless score @s Spectator_Pos.Y matches 1..30 at @s run tp @s ~ 9 ~ ~ ~
#玩家死亡
function kards:game/player/death/1

#禁字诀
effect give @a[scores={jinzijue=1..}] speed 1 0 false
effect give @a[scores={jinzijue=2..}] resistance 1 0 false
effect clear @a[scores={jinzijue=2..}] blindness
effect give @a[scores={jinzijue=3..}] haste 1 2 false
effect give @a[scores={jinzijue=3..}] strength 1 0 false
effect clear @a[scores={jinzijue=3..}] mining_fatigue
effect give @a[scores={jinzijue=4..}] speed 1 1 false
effect give @a[scores={jinzijue=4..}] regeneration infinite 0 false
effect give @a[scores={jinzijue=4..}] strength 1 1 false
effect clear @a[scores={jinzijue=4..}] slowness
effect give @a[scores={jinzijue=5..}] strength 1 2 false
effect give @a[scores={jinzijue=5..}] resistance 1 1 false
effect clear @a[scores={jinzijue=5..}] poison
effect clear @a[scores={jinzijue=5..}] wither
effect give @a[scores={jinzijue=6..}] strength 1 3 false
effect give @a[scores={jinzijue=6..}] resistance 1 2 false
effect give @a[scores={jinzijue=6..}] speed 1 3 false
effect give @a[scores={jinzijue=6..}] regeneration infinite 1 false
effect clear @a[scores={jinzijue=6..}] levitation
effect give @a[scores={jinzijue=7..}] regeneration infinite 2 false
effect give @a[scores={jinzijue=8..}] resistance 1 3 false
effect give @a[scores={jinzijue=10..}] regeneration infinite 4 false
effect give @a[scores={jinzijue=10..}] strength 1 4 false
effect give @a[scores={jinzijue=10..}] speed 1 4 false
effect give @a[scores={jinzijue=10..}] resistance 1 4 false
scoreboard players add @a[scores={jinzijue=6..}] jinzijue_1 1
effect give @a[scores={jinzijue_1=600..}] absorption 30 9 false
scoreboard players set @a[scores={jinzijue_1=600..}] jinzijue_1 0
#禁字启封
execute if entity @a[scores={jinzijue=10}] as @a if items entity @s container.* #kards:kard[minecraft:custom_data={kards:'禁字启封'}] run scoreboard players add @s cishu 1
execute if entity @a[scores={jinzijue=10}] as @a if items entity @s container.* #kards:kard[minecraft:custom_data={kards:'禁字启封'}] run clear @s #kards:kard[minecraft:custom_data={kards:'禁字启封'}]

#音乐盒 春日影
execute at @e[tag=droll] run particle minecraft:note ~0.5 ~ ~ 0.5 0.5 0.5 1 3
execute as @e[tag=droll] if score @s lifetime matches 1.. at @s run tag @e[distance=..13,tag=!spectator,type=!#impact_projectiles] add droll_music

effect give @e[tag=droll_music,distance=0.1..] weakness 1 255 false
execute as @e[tag=droll_music,distance=0.1..] run attribute @s minecraft:movement_speed modifier add 0-0-2 -100 add_multiplied_total
execute as @e[tag=droll_music,distance=0.1..] run attribute @s minecraft:jump_strength modifier add 0-0-4 -100 add_multiplied_total
execute as @e[tag=droll_music,distance=0.1..,type=!player] run attribute @s minecraft:flying_speed modifier add 0-0-1 -100 add_multiplied_total
execute as @e[tag=droll_music,distance=0.1..,type=!wither_skull] at @s facing entity @n[tag=droll] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[tag=droll_music,distance=0.1..] at @s unless entity @e[tag=droll,distance=..13] run attribute @s minecraft:movement_speed modifier remove 0-0-2
execute as @e[tag=droll_music,distance=0.1..] at @s unless entity @e[tag=droll,distance=..13] run attribute @s minecraft:jump_strength modifier remove 0-0-4
execute as @e[tag=droll_music,distance=0.1..,type=!player] at @s unless entity @e[tag=droll,distance=..13] run attribute @s minecraft:flying_speed modifier remove 0-0-1
execute as @e[tag=droll_music,distance=0.1..] at @s unless entity @e[tag=droll,distance=..13] run tag @s remove droll_music
#存活时长
execute as @e if score @s lifetime matches 1.. run scoreboard players remove @s lifetime 1
execute as @e[tag=droll] if score @s lifetime matches 0 run kill @s
#清弹射物
kill @e[nbt={Item:{id:"minecraft:arrow"}}]
kill @e[type=minecraft:arrow,nbt={inGround:1b}]
kill @e[type=minecraft:trident,nbt={inGround:1b},nbt=!{item:{components:{"minecraft:custom_data":{kards:"正义长戟"}}}}]
#投降
scoreboard players enable @a[scores={touxiang=0}] touxiang
execute as @a[team=red] if score @s touxiang matches 1.. run function kards:game/ingame/touxiang/r_touxiang
execute as @a[team=blue] if score @s touxiang matches 1.. run function kards:game/ingame/touxiang/b_touxiang
execute store result score 红队 touxiang if entity @a[team=red,tag=TouXiang]
execute store result score 蓝队 touxiang if entity @a[team=blue,tag=TouXiang]
execute store result score 人数 r_p if entity @a[team=red]
execute store result score 人数 b_p if entity @a[team=blue]
execute if score 红队 touxiang = 人数 r_p run gamemode spectator @a[team=red]
execute if score 蓝队 touxiang = 人数 b_p run gamemode spectator @a[team=blue]

#地狱
execute if score 红队 diyu matches 1 run effect give @e[type=!player,team=blue,tag=!tuteng] fire_resistance 1 0 false
execute if score 蓝队 diyu matches 1 run effect give @e[type=!player,team=red,tag=!tuteng] fire_resistance 1 0 false

#贪欲魔盒
execute if score 红队 tanyu_temp_1 matches 3..5 if predicate kards:random0.0001 at @r positioned ~ ~-10 ~ summon armor_stand run function kards:game/yongpaiku/yansheng/tanyumohe/4
execute if score 蓝队 tanyu_temp_1 matches 3..5 if predicate kards:random0.0001 at @r positioned ~ ~-10 ~ summon armor_stand run function kards:game/yongpaiku/yansheng/tanyumohe/5
execute if score 红队 tanyu_temp_1 matches 6..8 if predicate kards:random0.0025 at @r positioned ~ ~-10 ~ summon armor_stand run function kards:game/yongpaiku/yansheng/tanyumohe/4
execute if score 蓝队 tanyu_temp_1 matches 6..8 if predicate kards:random0.0025 at @r positioned ~ ~-10 ~ summon armor_stand run function kards:game/yongpaiku/yansheng/tanyumohe/5
execute if score 红队 tanyu_temp_1 matches 9..11 if predicate kards:random0.005 at @r positioned ~ ~-10 ~ summon armor_stand run function kards:game/yongpaiku/yansheng/tanyumohe/4
execute if score 蓝队 tanyu_temp_1 matches 9..11 if predicate kards:random0.005 at @r positioned ~ ~-10 ~ summon armor_stand run function kards:game/yongpaiku/yansheng/tanyumohe/5
execute if score 红队 tanyu_temp_1 matches 12..14 if predicate kards:random0.01 at @r positioned ~ ~-10 ~ summon armor_stand run function kards:game/yongpaiku/yansheng/tanyumohe/4
execute if score 蓝队 tanyu_temp_1 matches 12..14 if predicate kards:random0.01 at @r positioned ~ ~-10 ~ summon armor_stand run function kards:game/yongpaiku/yansheng/tanyumohe/5
execute if score 红队 tanyu_temp_1 matches 15..17 if predicate kards:random0.04 at @r positioned ~ ~-10 ~ summon armor_stand run function kards:game/yongpaiku/yansheng/tanyumohe/4
execute if score 蓝队 tanyu_temp_1 matches 15..17 if predicate kards:random0.04 at @r positioned ~ ~-10 ~ summon armor_stand run function kards:game/yongpaiku/yansheng/tanyumohe/5
execute if score 红队 tanyu_temp_1 matches 18.. if predicate kards:random0.08 at @r positioned ~ ~-10 ~ summon armor_stand run function kards:game/yongpaiku/yansheng/tanyumohe/4
execute if score 蓝队 tanyu_temp_1 matches 18.. if predicate kards:random0.08 at @r positioned ~ ~-10 ~ summon armor_stand run function kards:game/yongpaiku/yansheng/tanyumohe/5
#reset
scoreboard players enable @a[scores={reset=0}] reset
execute as @a if score @s reset matches 1 run function kards:game/end/reset
#---生物相关---#
function kards:game/ingame/mob/general
