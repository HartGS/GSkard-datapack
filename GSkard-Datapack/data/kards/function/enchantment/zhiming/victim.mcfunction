tag @s add enchantment_zhiming_victim_temp
execute store result score @s UUID.0 run data get entity @s UUID[0]

execute on attacker as @s[tag=enchantment_zhiming_attacker_temp] run function kards:enchantment/zhiming/1
execute on attacker as @s[tag=enchantment_zhiming_attacker_temp] run tag @s remove enchantment_zhiming_attacker_temp

tag @s remove enchantment_zhiming_victim_temp