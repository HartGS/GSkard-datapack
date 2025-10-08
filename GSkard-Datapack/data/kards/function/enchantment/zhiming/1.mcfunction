execute if score @s UUID.0 = @n[tag=enchantment_zhiming_victim_temp] enchantment_zhiming_UUID run tag @n[tag=enchantment_zhiming_victim_temp] add enchantment_zhiming_target

execute at @s if entity @e[tag=enchantment_zhiming_target,distance=0.01..] run function kards:enchantment/zhiming/2
execute at @s unless entity @e[tag=enchantment_zhiming_target,distance=0.01..] run scoreboard players reset @s enchantment_zhiming_cishu
execute at @s unless entity @e[tag=enchantment_zhiming_target,distance=0.01..] run attribute @s attack_damage modifier remove 0-0-1
execute at @s unless entity @e[tag=enchantment_zhiming_target,distance=0.01..] run tellraw @s [{translate: "kards.function.enchantment.zhiming.1.1", fallback: "您已切换目标或是目标已死亡 当前近战攻击增伤",color:"gold"},{translate: "kards.function.enchantment.zhiming.1.2", fallback: "0",color:"green"},{translate: "kards.function.enchantment.zhiming.1.3", fallback: "%",color:"gold"}]

scoreboard players operation @n[tag=enchantment_zhiming_victim_temp] enchantment_zhiming_UUID = @s UUID.0
tag @n[tag=enchantment_zhiming_target] remove enchantment_zhiming_target
tag @n[tag=enchantment_zhiming_victim_temp] remove enchantment_zhiming_victim_temp
