function kards:game/yongpaiku/use_general/kard_general

scoreboard players operation @s kardCount -= #kard_shenzhiyishou kardCount

function kards:game/yongpaiku/xianjing/jiance/shenjijiance
item replace entity @s weapon.offhand with air
tag @e[tag=User] remove User
tag @s add User
tag @a[tag=shenzhiyishou_end] remove shenzhiyishou_end
tag @a[tag=shenzhiyishou] remove shenzhiyishou
execute if entity @s[team=red] at @s as @r[team=blue,gamemode=adventure] run function kards:game/yongpaiku/shenji/shenzhiyishou/2
execute if entity @s[team=blue] at @s as @r[team=red,gamemode=adventure] run function kards:game/yongpaiku/shenji/shenzhiyishou/2
tag @s remove User

