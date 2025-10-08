## 属性
attribute @s attack_damage modifier remove talent-1
attribute @s max_health modifier remove talent-2
attribute @s attack_damage modifier remove talent-3
attribute @s armor modifier remove talent-4
attribute @s max_health modifier remove talent-5
attribute @s armor modifier remove talent-6
attribute @s attack_damage modifier remove talent-7
## Tags
tag @s remove Talent_kapaiji
tag @s remove Talent_xukongcunzhe
tag @s remove Talent_bujintanyu
tag @s remove Talent_muyuankuanghuan
tag @s remove Talent_dengshenchangjie
tag @s remove Talent_huolizhiyuan
tag @s remove Talent_zhazhashi
tag @s remove Talent_yaoyezhuhuo
tag @s remove Talent_fushengzuzhou
tag @s remove Talent_fushengzuzhou_end
tag @s remove Talent_ranjiweiguang
tag @s remove Talent_emoqiyue
tag @s remove Talent_gongsheng
tag @s remove Talent_gongsheng_temp
tag @s remove Talent_duichongjijin
tag @s remove Talent_dianbiaodaozhuan
tag @s remove Talent_libingmoma
tag @s remove Talent_touzhiweilai
tag @s remove Talent_shouhuzhe
tag @s remove Talent_huafanweijian
tag @s remove Talent_zhongyanzhixing
tag @s remove Talent_yongyuanzhongcheng
tag @s remove Talent_qiongbingduwu
tag @s remove Talent_qiongbingduwu_Damage
tag @s remove Talent_zhanshudaji
tag @s remove Talent_shanjizhanfa
tag @s remove Talent_haorenliaoliao

## Bossbar
execute store result storage temp UUID int 1 run data get entity @s UUID.[0]
function kards:game/player/talent/enable/ranjiweiguang/bossbar/4 with storage temp
