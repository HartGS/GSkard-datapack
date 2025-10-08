advancement revoke @s only kards:talent/zhazhashi
execute on attacker run tag @s add Temp_Attacker
execute unless entity @e[tag=Temp_Attacker] run return fail
execute if predicate {condition:random_chance,chance:0.12} run function kards:game/player/talent/enable/zhazhashi/2
tag @e[tag=Temp_Attacker] remove Temp_Attacker