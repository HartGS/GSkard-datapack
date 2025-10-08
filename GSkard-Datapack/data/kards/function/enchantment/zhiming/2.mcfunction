scoreboard players add @s enchantment_zhiming_cishu 1

attribute @s attack_damage modifier remove 0-0-1

execute if score @s enchantment_zhiming_cishu matches 1 run attribute @s attack_damage modifier add 0-0-1 0.08 add_multiplied_base
execute if score @s enchantment_zhiming_cishu matches 2 run attribute @s attack_damage modifier add 0-0-1 0.16 add_multiplied_base
execute if score @s enchantment_zhiming_cishu matches 3 run attribute @s attack_damage modifier add 0-0-1 0.24 add_multiplied_base
execute if score @s enchantment_zhiming_cishu matches 4 run attribute @s attack_damage modifier add 0-0-1 0.32 add_multiplied_base
execute if score @s enchantment_zhiming_cishu matches 5 run attribute @s attack_damage modifier add 0-0-1 0.4 add_multiplied_base
execute if score @s enchantment_zhiming_cishu matches 6 run attribute @s attack_damage modifier add 0-0-1 0.48 add_multiplied_base
execute if score @s enchantment_zhiming_cishu matches 7 run attribute @s attack_damage modifier add 0-0-1 0.56 add_multiplied_base
execute if score @s enchantment_zhiming_cishu matches 8 run attribute @s attack_damage modifier add 0-0-1 0.64 add_multiplied_base
execute if score @s enchantment_zhiming_cishu matches 9 run attribute @s attack_damage modifier add 0-0-1 0.72 add_multiplied_base
execute if score @s enchantment_zhiming_cishu matches 10.. run attribute @s attack_damage modifier add 0-0-1 0.8 add_multiplied_base

execute if score @s enchantment_zhiming_cishu matches 1 run tellraw @s [{translate: "kards.function.enchantment.zhiming.2.1", fallback: "您正在追击目标 当前近战攻击增伤",color:"gold"},{translate: "kards.function.enchantment.zhiming.2.2", fallback: "8",color:"green"},{translate: "kards.function.enchantment.zhiming.1.3", fallback: "%",color:"gold"}]
execute if score @s enchantment_zhiming_cishu matches 2 run tellraw @s [{translate: "kards.function.enchantment.zhiming.2.1", fallback: "您正在追击目标 当前近战攻击增伤",color:"gold"},{translate: "kards.function.enchantment.zhiming.2.3", fallback: "16",color:"green"},{translate: "kards.function.enchantment.zhiming.1.3", fallback: "%",color:"gold"}]
execute if score @s enchantment_zhiming_cishu matches 3 run tellraw @s [{translate: "kards.function.enchantment.zhiming.2.1", fallback: "您正在追击目标 当前近战攻击增伤",color:"gold"},{translate: "kards.function.enchantment.zhiming.2.4", fallback: "24",color:"green"},{translate: "kards.function.enchantment.zhiming.1.3", fallback: "%",color:"gold"}]
execute if score @s enchantment_zhiming_cishu matches 4 run tellraw @s [{translate: "kards.function.enchantment.zhiming.2.1", fallback: "您正在追击目标 当前近战攻击增伤",color:"gold"},{translate: "kards.function.enchantment.zhiming.2.5", fallback: "32",color:"green"},{translate: "kards.function.enchantment.zhiming.1.3", fallback: "%",color:"gold"}]
execute if score @s enchantment_zhiming_cishu matches 5 run tellraw @s [{translate: "kards.function.enchantment.zhiming.2.1", fallback: "您正在追击目标 当前近战攻击增伤",color:"gold"},{translate: "kards.function.enchantment.zhiming.2.6", fallback: "40",color:"green"},{translate: "kards.function.enchantment.zhiming.1.3", fallback: "%",color:"gold"}]
execute if score @s enchantment_zhiming_cishu matches 6 run tellraw @s [{translate: "kards.function.enchantment.zhiming.2.1", fallback: "您正在追击目标 当前近战攻击增伤",color:"gold"},{translate: "kards.function.enchantment.zhiming.2.7", fallback: "48",color:"green"},{translate: "kards.function.enchantment.zhiming.1.3", fallback: "%",color:"gold"}]
execute if score @s enchantment_zhiming_cishu matches 7 run tellraw @s [{translate: "kards.function.enchantment.zhiming.2.1", fallback: "您正在追击目标 当前近战攻击增伤",color:"gold"},{translate: "kards.function.enchantment.zhiming.2.8", fallback: "56",color:"green"},{translate: "kards.function.enchantment.zhiming.1.3", fallback: "%",color:"gold"}]
execute if score @s enchantment_zhiming_cishu matches 8 run tellraw @s [{translate: "kards.function.enchantment.zhiming.2.1", fallback: "您正在追击目标 当前近战攻击增伤",color:"gold"},{translate: "kards.function.enchantment.zhiming.2.9", fallback: "64",color:"green"},{translate: "kards.function.enchantment.zhiming.1.3", fallback: "%",color:"gold"}]
execute if score @s enchantment_zhiming_cishu matches 9 run tellraw @s [{translate: "kards.function.enchantment.zhiming.2.1", fallback: "您正在追击目标 当前近战攻击增伤",color:"gold"},{translate: "kards.function.enchantment.zhiming.2.10", fallback: "72",color:"green"},{translate: "kards.function.enchantment.zhiming.1.3", fallback: "%",color:"gold"}]
execute if score @s enchantment_zhiming_cishu matches 10.. run tellraw @s [{translate: "kards.function.enchantment.zhiming.2.1", fallback: "您正在追击目标 当前近战攻击增伤",color:"gold"},{translate: "kards.function.enchantment.zhiming.2.11", fallback: "80",color:"green"},{translate: "kards.function.enchantment.zhiming.1.3", fallback: "%",color:"gold"}]