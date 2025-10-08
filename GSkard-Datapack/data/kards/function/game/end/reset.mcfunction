#赛后统计
team leave @a
scoreboard players set #system tongji_damage_huansuan 20
scoreboard players set #system tongji_hurt_huansuan 20
scoreboard players set #system tongji_killed_huansuan 1
execute as @a[tag=Ready] run scoreboard players operation @s tongji_damage /= #system tongji_damage_huansuan
execute as @a[tag=Ready] run scoreboard players operation @s tongji_hurt /= #system tongji_hurt_huansuan
scoreboard players operation #system tongji_damage > @a tongji_damage
scoreboard players operation #system tongji_killed > @a tongji_killed
scoreboard players operation #system tongji_hurt > @a tongji_hurt
execute as @a if score @s tongji_damage = #system tongji_damage run tag @s add DamageMAX
execute as @a if score @s tongji_killed = #system tongji_killed run tag @s add KillMAX
execute as @a if score @s tongji_hurt = #system tongji_hurt run tag @s add HurtMAX
tellraw @a [{text: "[打工人] ",color:"green"},{selector:"@a[tag=DamageMAX]",bold:true,color:"gold"},{text: " 共造成",color:"green"},{score:{objective:"tongji_damage",name:"#system"}},{text: "♥",color:"red"},{text: "伤害!",color:"green"}]
tellraw @a [{text: "[超级肉盾] ",color:"green"},{selector:"@a[tag=HurtMAX]",bold:true,color:"gold"},{text: " 共受到",color:"green"},{score:{objective:"tongji_hurt",name:"#system"}},{text: "♥",color:"red"},{text: "伤害!",color:"green"}]
tellraw @a [{text: "[杀神] ",color:"green"},{selector:"@a[tag=KillMAX]",bold:true,color:"gold"},{text: " 杀死了",color:"green"},{score:{objective:"tongji_killed",name:"#system"}},{text: "个",color:"red"},{text: "生物!",color:"green"}]
tag @a[tag=DamageMAX] remove DamageMAX
tag @a[tag=KillMAX] remove KillMAX
tag @a[tag=HurtMAX] remove HurtMAX
tag @a[tag=AllMAX] remove AllMAX
scoreboard players reset * tongji_damage
scoreboard players reset * tongji_killed
scoreboard players reset * tongji_hurt
#重置边界
bossbar set minecraft:worldborder visible false
worldborder set 59999968
scoreboard players set #system worldborder -1

#设置游戏状态为0(关闭)
scoreboard players set #system GameStatus 0
#重置回合数
scoreboard players reset 回合数
scoreboard objectives setdisplay below_name
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list
#经验
xp set @a 0 points
xp set @a 0 levels
#设置天气为晴天
weather clear
#清空效果
effect clear @a
#重置规则
gamerule naturalRegeneration false
#清空背包
clear @a
#隐藏倒计时
bossbar set minecraft:roundtime visible false
bossbar set pvptime visible false
#改模式
gamemode adventure @a
#时间
time set day
#清队伍
team empty blue
team empty red
team join lobby @a
#重生点
spawnpoint @a 59 226 -26 0 -90
#设置难度为和平
difficulty peaceful
#清生物
kill @e[type=!player,type=!marker,type=!#kards:display]
#tp回大厅
tp @a 59 226 -26 -90 0
#清tag
tag @a remove Ready
tag @a add Un_Ready
tag @a remove jishengnianye
tag @a remove TouXiang
tag @a remove linghunshouge
tag @a remove jinzijue
tag @a remove zuzhouhujia
scoreboard players reset jiangshuzhe

kill @e[tag=JiangShuZhe_YeHuo]
kill @e[tag=JiangShuZhe_yiming_Marker]

tag @e remove JiangShuZhe_yiming_rided
#重置陷阱
scoreboard players reset 红队
scoreboard players reset 蓝队
#重置队伍分数
scoreboard players reset #红队
scoreboard players reset #蓝队
#重置属性
execute as @a run attribute @s minecraft:max_health modifier remove 0-0-1
execute as @a run attribute @s minecraft:max_health modifier remove 0-0-2
execute as @a run attribute @s minecraft:max_health modifier remove 0-0-3
execute as @a run attribute @s minecraft:max_health modifier remove 0-0-4
execute as @a run attribute @s minecraft:max_health modifier remove 0-0-5
execute as @a run attribute @s minecraft:max_health modifier remove 0-0-6
execute as @a run attribute @s minecraft:max_health modifier remove 0-0-7
execute as @a run attribute @s minecraft:max_health modifier remove 0-0-8
execute as @a run attribute @s minecraft:max_health modifier remove 0-0-9
execute as @a run attribute @s minecraft:max_health modifier remove 0-0-10
execute as @a run attribute @s minecraft:max_health modifier remove 0-0-12
execute as @a run attribute @s minecraft:max_health modifier remove 0-0-13
execute as @a run attribute @s minecraft:max_health modifier remove 1-0-1
execute as @a run attribute @s minecraft:max_health base set 20
execute as @a run attribute @s minecraft:jump_strength modifier remove 0-0-1
execute as @a run attribute @s minecraft:jump_strength modifier remove 0-0-2
execute as @a run attribute @s minecraft:jump_strength modifier remove 0-0-3
execute as @a run attribute @s minecraft:jump_strength modifier remove 0-0-5
execute as @a run attribute @s minecraft:jump_strength modifier remove 0-0-6
execute as @a run attribute @s minecraft:jump_strength base reset
execute as @a run attribute @s minecraft:scale base reset
execute as @a run attribute @s minecraft:movement_speed modifier remove 0-0-6
execute as @a run attribute @s minecraft:movement_speed modifier remove 0-0-7
execute as @a run attribute @s minecraft:movement_speed base reset
execute as @a run attribute @s minecraft:entity_interaction_range modifier remove 0-0-2
execute as @a run attribute @s minecraft:entity_interaction_range modifier remove 0-0-3
execute as @a run attribute @s minecraft:entity_interaction_range modifier remove 0-0-4
execute as @a run attribute @s minecraft:entity_interaction_range base reset
execute as @a run attribute @s gravity modifier remove 0-0-1
execute as @a run attribute @s minecraft:gravity base reset
execute as @a run attribute @s safe_fall_distance modifier remove 0-0-2
execute as @a run attribute @s safe_fall_distance base reset
execute as @a run attribute @s attack_speed modifier remove talent
execute as @a run attribute @s attack_damage base reset
execute as @a run attribute @s armor base reset
#重置分数
scoreboard players set * fengbaozhanchui_1 0
scoreboard players set * sishenzhilian 0
scoreboard players set * yanhua 0
scoreboard players set * yanhuanu 0
scoreboard players set * jinzijue 0
scoreboard players set * lairichanghuan 0
scoreboard players set * changhuan 0
scoreboard players set * shengji_mujian 0
scoreboard players set * shengji_jinjian 0
scoreboard players set * shengji_tiejian 0
scoreboard players set * shengji_zuanshijian 0
scoreboard players set * shengji_xiajiehejinjian 0
scoreboard players set 人数 r_touxiang 0
scoreboard players set 人数 b_touxiang 0
scoreboard players reset red
scoreboard players reset blue
scoreboard players reset @a
scoreboard players reset * r_death
scoreboard players reset * b_death
scoreboard players reset * r_number
scoreboard players reset * b_number

# Bossbar
execute as @a run function kards:game/end/bossbar_reset/1
# 天赋
execute as @a run function kards:game/player/talent/reset

#计划
schedule clear kards:game/ingame/round/pvpround/countdown
schedule clear kards:game/ingame/round/pvpround/countdown
#停止音乐
execute as @a at @s run stopsound @s
#概率生成oiiao
execute if predicate kards:random0.01 run schedule function kards:game/end/oiia 1s

#生成琉璃夜
summon minecraft:pig 62 226 -26 {Tags:["Hart_liuli"],attributes:[{id:"max_health",base:200}],Health:200,CustomName:[{text:"Hart_liuli",bold:true,color:"gold"}],CustomNameVisible:true}

#DLC-加入语音
function kards-dlc:svc/join