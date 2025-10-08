advancement revoke @s only kards:shield/jinyong2
advancement revoke @s only kards:shield/jinyong3
execute if score @s diaolingtaidao_hold matches 1.. at @s run function kards:game/player/shield/break
execute if items entity @s weapon.* netherite_sword[custom_data~{kards:'凋零太刀'}] unless items entity @s weapon.* shield at @s run tag @s add minghunzhaojia
execute if entity @s[tag=minghunzhaojia] run function kards:game/yongpaiku/shenji/wangzhibaoku/diaolingtaidao/4
tag @s remove minghunzhaojia