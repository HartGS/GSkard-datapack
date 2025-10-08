execute if score @s dialog matches 1 run return run advancement grant @s only kards:advancement/laodeng
execute if score @s dialog matches 2 run return run advancement grant @s only kards:advancement/jiaocheng

execute if score @s dialog matches 110 run return run function kards:game/xp/shop/enchantment/bingshuangjingji
execute if score @s dialog matches 111 run return run function kards:game/xp/shop/enchantment/jihanzhichu
execute if score @s dialog matches 112 run return run function kards:game/xp/shop/enchantment/dadishenyou
execute if score @s dialog matches 113 run return run function kards:game/xp/shop/enchantment/taitantipo
execute if score @s dialog matches 114 run return run function kards:game/xp/shop/enchantment/fengxingzhe
execute if score @s dialog matches 115 run return run function kards:game/xp/shop/enchantment/yuezhan
execute if score @s dialog matches 116 run return run function kards:game/xp/shop/enchantment/xinxingbaofa
execute if score @s dialog matches 117 run return run function kards:game/xp/shop/enchantment/yuhuozhe
execute if score @s dialog matches 118 run return run function kards:game/xp/shop/enchantment/zhicaizhe
execute if score @s dialog matches 119 run return run function kards:game/xp/shop/enchantment/shenpanzhe

execute if score @s dialog matches 200 if score #system random_start matches -1 run return run function kards:lobby/setting/random_gamerule/kai
execute if score @s dialog matches 200 if score #system random_start matches 0.. run return run function kards:lobby/setting/random_gamerule/guan
execute if score @s dialog matches 201 run return run function kards:lobby/setting/random_gamerule/event/baokuxianshi
execute if score @s dialog matches 202 run return run function kards:lobby/setting/random_gamerule/event/cangbaoku
execute if score @s dialog matches 203 run return run function kards:lobby/setting/random_gamerule/event/mofazhanzheng
execute if score @s dialog matches 204 run return run function kards:lobby/setting/random_gamerule/event/shenzhihan
execute if score @s dialog matches 205 run return run function kards:lobby/setting/random_gamerule/event/wujinzhanzheng
execute if score @s dialog matches 206 run return run function kards:lobby/setting/random_gamerule/event/gazhijukong
execute if score @s dialog matches 207 run return run function kards:lobby/setting/random_gamerule/event/muyuankuanghuan
execute if score @s dialog matches 208 run return run function kards:lobby/setting/random_gamerule/event/kuanghonglanzha
execute if score @s dialog matches 209 run return run function kards:lobby/setting/random_gamerule/event/zainanzhixing
execute if score @s dialog matches 210 run return run function kards:lobby/setting/random_gamerule/event/move_or_die
execute if score @s dialog matches 211 run return run function kards:lobby/setting/random_gamerule/event/sishenjianglin
execute if score @s dialog matches 212 run return run function kards:lobby/setting/random_gamerule/event/wuhui
execute if score @s dialog matches 213 run return run function kards:lobby/setting/random_gamerule/event/dianbiaodaozhuan
execute if score @s dialog matches 214 run return run function kards:lobby/setting/random_gamerule/event/wujintanlan

#execute if score @s dialog matches 1000 run return run function kards:dialog/talent/show
execute if score @s dialog matches 1001 run return run function kards:game/player/talent/set/xukongcunzhe
execute if score @s dialog matches 1002 run return run function kards:game/player/talent/set/bujingtanyu
execute if score @s dialog matches 1003 run return run function kards:game/player/talent/set/muyuankuanghuan
execute if score @s dialog matches 1004 run return run function kards:game/player/talent/set/dengshenchangjie
execute if score @s dialog matches 1005 run return run function kards:game/player/talent/set/huolizhiyuan
execute if score @s dialog matches 1006 run return run function kards:game/player/talent/set/zhazhashi
execute if score @s dialog matches 1007 run return run function kards:game/player/talent/set/yaoyezhuhuo
execute if score @s dialog matches 1008 run return run function kards:game/player/talent/set/fushengzuzhou
execute if score @s dialog matches 1009 run return run function kards:game/player/talent/set/ranjiweiguang
execute if score @s dialog matches 1010 run return run function kards:game/player/talent/set/emoqiyue
execute if score @s dialog matches 1011 run return run function kards:game/player/talent/set/gongsheng
execute if score @s dialog matches 1012 run return run function kards:game/player/talent/set/duichongjijin
execute if score @s dialog matches 1013 run return run function kards:game/player/talent/set/dianbiaodaozhuan
execute if score @s dialog matches 1014 run return run function kards:game/player/talent/set/libingmoma
execute if score @s dialog matches 1015 run return run function kards:game/player/talent/set/touzhiweilai
execute if score @s dialog matches 1016 run return run function kards:game/player/talent/set/shouhuzhe
execute if score @s dialog matches 1017 run return run function kards:game/player/talent/set/huafanweijian
execute if score @s dialog matches 1018 run return run function kards:game/player/talent/set/kapaiji
execute if score @s dialog matches 1019 run return run function kards:game/player/talent/set/zhongyanzhixing
execute if score @s dialog matches 1020 run return run function kards:game/player/talent/set/yongyuanzhongcheng
execute if score @s dialog matches 1021 run return run function kards:game/player/talent/set/qiongbingduwu
execute if score @s dialog matches 1022 run return run function kards:game/player/talent/set/zhanshudaji
execute if score @s dialog matches 1023 run return run function kards:game/player/talent/set/shanjizhanfa
execute if score @s dialog matches 1024 run return run function kards:game/player/talent/set/haorenliaoliao
