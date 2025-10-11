execute as @s[team=red] run damage @r[team=blue,gamemode=adventure] 0.1 kards:qiongbingduwu by @s
execute as @s[team=blue] run damage @r[team=red,gamemode=adventure] 0.1 kards:qiongbingduwu by @s

scoreboard players remove @s Talent_qiongbingduwu_Damage 1
execute if score @s Talent_qiongbingduwu_Damage matches 1.. run function kards:game/player/talent/enable/qiongbingduwu/2