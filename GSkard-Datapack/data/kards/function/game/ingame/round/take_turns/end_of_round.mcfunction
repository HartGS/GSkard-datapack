#陷阱
function kards:game/yongpaiku/xianjing/jiance/roundjiance
#天赋
execute as @a[scores={CanuseKard=1},tag=Talent_muyuankuanghuan] run function kards:game/player/talent/enable/muyuankuanghuan/1
execute as @a[scores={CanuseKard=1},tag=Talent_emoqiyue] run function kards:game/player/talent/enable/emoqiyue/1
execute as @a[scores={CanuseKard=1},tag=Talent_duichongjijin] run function kards:game/player/talent/enable/duichongjijin/1
execute as @a[scores={CanuseKard=1},tag=Talent_dianbiaodaozhuan] run function kards:game/player/talent/enable/dianbiaodaozhuan/1
execute as @a[scores={CanuseKard=1},tag=Talent_gongsheng] run function kards:game/player/talent/enable/gongsheng/healback
#回合规则
function kards:game/random_start/round_event
#检测回合 事件通知
execute if score 回合数 GameRound = #system RoundCount run tellraw @a [{text: "Final GameRound 最后回合",color:"gold",bold:true}]

#基础生效
execute as @a[scores={CanuseKard=1},tag=!Talent_xukongcunzhe] run scoreboard players operation @s kardCount = @s kardCountmax

execute as @a[scores={CanuseKard=1},tag=Talent_xukongcunzhe] run scoreboard players operation @s temp = @s kardCountmax
scoreboard players set #system temp 2
execute as @a[scores={CanuseKard=1},tag=Talent_xukongcunzhe] run scoreboard players operation @s temp /= #system temp
execute as @a[scores={CanuseKard=1},tag=Talent_xukongcunzhe] run scoreboard players operation @s kardCount += @s temp


function kards:game/ingame/round/take_turns/choupai with storage minecraft:system choupai
function kards:game/ingame/round/fashu with storage minecraft:changdidaxiao
#人数补偿
execute if score #system b_number > #system r_number run scoreboard players add @a[team=red,scores={CanuseKard=1}] kardCount 5
execute if score #system b_number > #system r_number run scoreboard players add @a[team=red,scores={CanuseKard=1}] cishu 1

execute if score #system b_death matches 1 run scoreboard players add @a[team=blue,scores={CanuseKard=1}] kardCount 3
execute if score #system b_death matches 1 run scoreboard players add @a[team=blue,scores={CanuseKard=1}] cishu 1
execute if score #system b_death matches 2 run scoreboard players add @a[team=blue,scores={CanuseKard=1}] kardCount 6
execute if score #system b_death matches 2 run scoreboard players add @a[team=blue,scores={CanuseKard=1}] cishu 2
execute if score #system b_death matches 3 run scoreboard players add @a[team=blue,scores={CanuseKard=1}] kardCount 10
execute if score #system b_death matches 3 run scoreboard players add @a[team=blue,scores={CanuseKard=1}] cishu 3
execute if score #system b_death matches 4 run scoreboard players add @a[team=blue,scores={CanuseKard=1}] kardCount 15
execute if score #system b_death matches 4 run scoreboard players add @a[team=blue,scores={CanuseKard=1}] cishu 4
execute if score #system b_death matches 5.. run scoreboard players add @a[team=blue,scores={CanuseKard=1}] kardCount 20
execute if score #system b_death matches 5.. run scoreboard players add @a[team=blue,scores={CanuseKard=1}] cishu 5

execute if score #system r_death matches 1 run scoreboard players add @a[team=red,scores={CanuseKard=1}] kardCount 3
execute if score #system r_death matches 1 run scoreboard players add @a[team=red,scores={CanuseKard=1}] cishu 1
execute if score #system r_death matches 2 run scoreboard players add @a[team=red,scores={CanuseKard=1}] kardCount 6
execute if score #system r_death matches 2 run scoreboard players add @a[team=red,scores={CanuseKard=1}] cishu 2
execute if score #system r_death matches 3 run scoreboard players add @a[team=red,scores={CanuseKard=1}] kardCount 10
execute if score #system r_death matches 3 run scoreboard players add @a[team=red,scores={CanuseKard=1}] cishu 3
execute if score #system r_death matches 4 run scoreboard players add @a[team=red,scores={CanuseKard=1}] kardCount 15
execute if score #system r_death matches 4 run scoreboard players add @a[team=red,scores={CanuseKard=1}] cishu 4
execute if score #system r_death matches 5.. run scoreboard players add @a[team=red,scores={CanuseKard=1}] kardCount 20
execute if score #system r_death matches 5.. run scoreboard players add @a[team=red,scores={CanuseKard=1}] cishu 5

execute as @a[tag=Talent_yaoyezhuhuo] run function kards:game/player/talent/enable/yaoyezhuhuo/1


#墓园狂欢
scoreboard players add @a[scores={muyuankuanghuan=1,CanuseKard=1}] cishu 2

#超频
scoreboard players remove @a[scores={ChaoPin=1..}] ChaoPin 1

#图腾
execute if entity @e[tag=tuteng] run tellraw @a [{text: "\n======================\n",color:"gray",bold:true}]
execute if entity @e[tag=tuteng,team=red] run tellraw @a [{text:"红队",color:red},{text:"当前拥有图腾:\n",color:gold},{selector:"@e[tag=tuteng,team=red]"}]
execute if entity @e[tag=tuteng,team=blue] run tellraw @a [{text:"蓝队",color:blue},{text:"当前拥有图腾:\n",color:gold},{selector:"@e[tag=tuteng,team=blue]"}]
execute if entity @e[tag=tuteng] run tellraw @a [{text: "",color:"gray",bold:true}]

#> 牌效
tellraw @a [{text: "==========事件==========",color:"gray",bold:true}]
#重伤
scoreboard players remove @a[scores={ZhongShang_Round=1..}] ZhongShang_Round 1
execute if entity @a[scores={ZhongShang_Round=1..}] run tellraw @a [{text: "[重伤]",color:"dark_gray",bold:true},{text:"生效至\n",color:"gray"},{selector:"@a[scores={ZhongShang_Round=1..}]",bold:true},{text: "\n他们本回合生命恢复效率减半",color:"gray",bold:true}]
execute if entity @a[scores={ZhongShang_Round=0}] run tellraw @a [{selector:"@a[scores={ZhongShang_Round=0}]",bold:true},{text: "脱离了",color:"gray",bold:true},{text: "[重伤]",color:"dark_gray",bold:true},{text:"状态",color:"gray"}]
execute if entity @a[scores={ZhongShang_Round=0}] unless entity @a[scores={ZhongShang_Round=1..}] run tellraw @a [{text: "-",color:"gray"}]
execute unless entity @a[scores={ZhongShang_Round=0}] if entity @a[scores={ZhongShang_Round=1..}] run tellraw @a [{text: "-",color:"gray"}]
execute if entity @a[scores={ZhongShang_Round=0}] if entity @a[scores={ZhongShang_Round=1..}] run tellraw @a [{text: "-",color:"gray"}]
#沉默
scoreboard players remove @a[scores={chengmo=1..}] chengmo 1
#狼群战术
execute if entity @a[scores={langqunzhanshu=1..}] run tellraw @a [{text: "[狼群战术]",color:"light_purple",bold:true},{text:"生效至\n",color:"gray"},{selector:"@a[scores={langqunzhanshu=1}]",bold:true},{text: "\n他们本回合不抽卡",color:"gray",bold:true}]
execute if entity @a[scores={langqunzhanshu=1..}] run tellraw @a [{text: "-",color:"gray"}]
scoreboard players set @a[scores={langqunzhanshu=1..}] cishu 0
scoreboard players set @a[scores={langqunzhanshu=1..}] langqunzhanshu 0
#隐匿仓库
execute if entity @a[scores={yinnicangku=1..,CanuseKard=1}] run tellraw @a [{text: "[隐匿仓库]",color:"light_purple",bold:true},{text:"生效至\n",color:"gray"},{selector:"@a[scores={yinnicangku=1,CanuseKard=1}]",bold:true},{text: "\n他们本回合多12K",color:"gray",bold:true}]
execute if entity @e[scores={yinnicangku=1..,CanuseKard=1}] run tellraw @a [{text: "-",color:"gray"}]
scoreboard players add @a[scores={yinnicangku=1,CanuseKard=1}] kardCount 12
scoreboard players set @a[scores={yinnicangku=1,CanuseKard=1}] yinnicangku 0
#生产令
execute if entity @a[scores={shengchanling=1..,CanuseKard=1}] run tellraw @a [{text: "[生产令]",color:"light_purple",bold:true},{text:"生效至\n",color:"gray"},{selector:"@a[scores={shengchanling=1,CanuseKard=1}]",bold:true},{text: "\n他们本回合多2张牌",color:"gray",bold:true}]
execute if entity @e[scores={shengchanling=1..,CanuseKard=1}] run tellraw @a [{text: "-",color:"gray"}]
scoreboard players add @a[scores={shengchanling=1..,CanuseKard=1}] cishu 2
scoreboard players remove @a[scores={shengchanling=1..,CanuseKard=1}] shengchanling 1
#枯竭
scoreboard players remove @a[scores={kujie=1..}] kujie 1

execute if entity @a[team=red,scores={kujie=1..}] run tellraw @a [[{text: "红队",color:"red",bold:true},{text: "[枯竭]",color:"dark_gray",bold:true},{text: "生效中",color:"dark_gray",bold:true}],{text:"\n使用牌后额外扣除1K直至回合结束",color:"gold"}]
execute if entity @a[team=blue,scores={kujie=1..}] run tellraw @a [[{text: "蓝队",color:"blue",bold:true},{text: "[枯竭]",color:"dark_gray",bold:true},{text: "生效中",color:"dark_gray",bold:true}],{text:"\n使用牌后额外扣除1K直至回合结束",color:"gold"}]
execute if entity @a[scores={kujie=1..}] run tellraw @a [{text: "-",color:"gray"}]
#地狱、漫水
execute if score 红队 diyu matches 1 run scoreboard players set 红队 diyu 0
execute if score 蓝队 diyu matches 1 run scoreboard players set 蓝队 diyu 0
execute if score 红队 manshui matches 1 run scoreboard players set 红队 manshui 0
execute if score 蓝队 manshui matches 1 run scoreboard players set 蓝队 manshui 0

#诅咒护甲
execute as @a[tag=zuzhouhujia] if items entity @s armor.chest golden_chestplate[custom_data={kards:'诅咒护甲'}] run item replace entity @s armor.chest with air
tag @a[tag=zuzhouhujia] remove zuzhouhujia

#马蜂
scoreboard players remove @a[scores={hurt_by_mafeng=1,CanuseKard=1}] kardCount 2
execute if entity @a[scores={hurt_by_mafeng=1,CanuseKard=1}] run tellraw @a [{selector:"@a[scores={hurt_by_mafeng=1,CanuseKard=1}]"},{text:"上回合被马蜂蛰了 -2K",color:"gray"}]
scoreboard players reset @a[scores={hurt_by_mafeng=1,CanuseKard=1}] hurt_by_mafeng

scoreboard players set @a jiben 0
scoreboard players set @a xukonghuixiang 0
function kards:game/ingame/round/skill
function kards:game/ingame/round/tuteng

scoreboard players set @a[scores={CanuseKard=0},tag=!Talent_xukongcunzhe] kardCount 0

#酸辣无骨鸡爪
execute as @a[gamemode=adventure] store result score @s suanlawugujizhua run clear @s bone[custom_data={kards:'鸡爪'}] 0

#禁法结界
execute as @a[scores={CanuseKard=1,JinFaJieJie=1}] run function kards:game/yongpaiku/shenji/jinfajiejie/2

#旁观者
scoreboard players set @a[gamemode=spectator] cishu 0
scoreboard players set @a[gamemode=spectator] kardCount 0
scoreboard players set @a[gamemode=spectator] CanuseKard 0
#pvp
#tellraw @a [{text: "=======================",color:"gray",bold:true}]