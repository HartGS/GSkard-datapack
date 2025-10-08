function kards:game/yongpaiku/use_general/kard_general
scoreboard players operation @s kardCount -= #kard_shunshouqianyang kardCount
function kards:game/yongpaiku/xianjing/jiance/fashujiance

execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

tag @a[tag=User] remove User
tag @s add User
execute if entity @s[team=red] at @s as @r[team=blue,gamemode=adventure] run function kards:game/yongpaiku/fashu/shunshouqianyang/2
execute if entity @s[team=blue] at @s as @r[team=red,gamemode=adventure] run function kards:game/yongpaiku/fashu/shunshouqianyang/2
tag @s remove User
