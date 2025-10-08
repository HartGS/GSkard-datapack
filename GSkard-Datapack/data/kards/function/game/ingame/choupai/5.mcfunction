scoreboard players remove @s fashucishu 1

execute if score @s jinziqifeng matches 1.. store result score @s random5 run random value 1..100
execute if score @s jinziqifeng matches 1 if score @s random5 matches 1..10 run return run function kards:game/paiku/yansheng/jinzijue
execute if score @s jinziqifeng matches 2 if score @s random5 matches 1..20 run return run function kards:game/paiku/yansheng/jinzijue
execute if score @s jinziqifeng matches 3 if score @s random5 matches 1..30 run return run function kards:game/paiku/yansheng/jinzijue
execute if score @s jinziqifeng matches 4 if score @s random5 matches 1..40 run return run function kards:game/paiku/yansheng/jinzijue
execute if score @s jinziqifeng matches 5 if score @s random5 matches 1..50 run return run function kards:game/paiku/yansheng/jinzijue
execute if score @s jinziqifeng matches 6 if score @s random5 matches 1..60 run return run function kards:game/paiku/yansheng/jinzijue

$execute store result score @s random5 run random value 1..$(fashu)
execute if score @s random5 matches 1 run function kards:game/paiku/fashu/shenshengzhiguang
execute if score @s random5 matches 2 run function kards:game/paiku/fashu/chaotuoxili
execute if score @s random5 matches 3 run function kards:game/paiku/fashu/shijiaoganrao
execute if score @s random5 matches 4 run function kards:game/paiku/fashu/yuyanzaihuo
execute if score @s random5 matches 5 run function kards:game/paiku/fashu/guohechaiqiao
execute if score @s random5 matches 6 run function kards:game/paiku/fashu/shihuapifu
execute if score @s random5 matches 7 run function kards:game/paiku/fashu/shandianhongming
execute if score @s random5 matches 8 run function kards:game/paiku/fashu/fanzhuan
execute if score @s random5 matches 9 run function kards:game/paiku/fashu/langqunzhanshu
execute if score @s random5 matches 10 run function kards:game/paiku/fashu/sixingxuangao
execute if score @s random5 matches 11 run function kards:game/paiku/fashu/zhouranyingbao
execute if score @s random5 matches 12 run function kards:game/paiku/fashu/chunnuanhuakai
execute if score @s random5 matches 13 run function kards:game/paiku/fashu/qisihuisheng
execute if score @s random5 matches 14 run function kards:game/paiku/fashu/xinlingfenshao
execute if score @s random5 matches 15 run function kards:game/paiku/fashu/zaijijinhou
execute if score @s random5 matches 16 run function kards:game/paiku/fashu/xipai
execute if score @s random5 matches 17 run function kards:game/paiku/fashu/neiheyinbao
execute if score @s random5 matches 18 run function kards:game/paiku/fashu/sijiruchun
execute if score @s random5 matches 19 run function kards:game/paiku/fashu/shunshouqianyang
execute if score @s random5 matches 20 run function kards:game/paiku/fashu/wugufengdeng
execute if score @s random5 matches 21 run function kards:game/paiku/fashu/shuiliuyongdong
execute if score @s random5 matches 22 run function kards:game/paiku/fashu/beishuiyizhan
execute if score @s random5 matches 23 run function kards:game/paiku/fashu/jielue
execute if score @s random5 matches 24 run function kards:game/paiku/fashu/youchangjiedai
execute if score @s random5 matches 25 run function kards:game/paiku/fashu/chongzhu
execute if score @s random5 matches 26 run function kards:game/paiku/fashu/jinziqifeng
execute if score @s random5 matches 27 run function kards:game/paiku/fashu/xianxuezhuanhua
execute if score @s random5 matches 28 run function kards:game/paiku/fashu/yinnicangku
execute if score @s random5 matches 29 run function kards:game/paiku/fashu/zhanshishengchan
execute if score @s random5 matches 30 run function kards:game/paiku/fashu/shengchanling
execute if score @s random5 matches 31 run function kards:game/paiku/fashu/yizhiqusheng
execute if score @s random5 matches 32 run function kards:game/paiku/fashu/zhengxiu
execute if score @s random5 matches 33 run function kards:game/paiku/fashu/jinjidiaoqian
execute if score @s random5 matches 34 run function kards:game/paiku/fashu/duming
execute if score @s random5 matches 35 run function kards:game/paiku/fashu/manshui
execute if score @s random5 matches 36 run function kards:game/paiku/fashu/heishanyangzhiyong
execute if score @s random5 matches 37 run function kards:game/paiku/fashu/yingyuzhili
execute if score @s random5 matches 38 run function kards:game/paiku/fashu/zuzhouhujia
execute if score @s random5 matches 39 run function kards:game/paiku/fashu/wuyong
execute if score @s random5 matches 40 run function kards:game/paiku/fashu/diyu
execute if score @s random5 matches 41 run function kards:game/paiku/fashu/chunriying
execute if score @s random5 matches 42 run function kards:game/paiku/fashu/suanlawugujizhua
execute if score @s random5 matches 43 run function kards:game/paiku/fashu/tutengjinji
execute if score @s random5 matches 44 run function kards:game/paiku/fashu/lengxiaoxixue

execute if score @s random5 matches 45.. run function kards-dlc:kard/type/fashu/general


scoreboard players set @s random5 0
