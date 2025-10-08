advancement revoke @s only kards:player/attack

execute if score @s enchantment_zhiming_cishu matches 1.. unless items entity @s weapon.* *[enchantments~[{enchantments:"kards:zhiming"}]] run function kards:enchantment/zhiming/reset