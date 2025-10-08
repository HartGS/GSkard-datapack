execute store result score @s Talent_Random_1 run random value 1..24
execute store result score @s Talent_Random_2 run random value 1..24
execute store result score @s Talent_Random_3 run random value 1..24
execute store result score @s Talent_Random_4 run random value 1..24
execute store result score @s Talent_Random_5 run random value 1..24
execute store result score @s Talent_Random_6 run random value 1..24

execute if score @s Talent_Random_1 = @s Talent_Random_2 run return run function kards:game/player/talent/roll_value
execute if score @s Talent_Random_1 = @s Talent_Random_3 run return run function kards:game/player/talent/roll_value
execute if score @s Talent_Random_1 = @s Talent_Random_4 run return run function kards:game/player/talent/roll_value
execute if score @s Talent_Random_1 = @s Talent_Random_5 run return run function kards:game/player/talent/roll_value
execute if score @s Talent_Random_1 = @s Talent_Random_6 run return run function kards:game/player/talent/roll_value
execute if score @s Talent_Random_2 = @s Talent_Random_3 run return run function kards:game/player/talent/roll_value
execute if score @s Talent_Random_2 = @s Talent_Random_4 run return run function kards:game/player/talent/roll_value
execute if score @s Talent_Random_2 = @s Talent_Random_5 run return run function kards:game/player/talent/roll_value
execute if score @s Talent_Random_2 = @s Talent_Random_6 run return run function kards:game/player/talent/roll_value
execute if score @s Talent_Random_3 = @s Talent_Random_4 run return run function kards:game/player/talent/roll_value
execute if score @s Talent_Random_3 = @s Talent_Random_5 run return run function kards:game/player/talent/roll_value
execute if score @s Talent_Random_3 = @s Talent_Random_6 run return run function kards:game/player/talent/roll_value
execute if score @s Talent_Random_4 = @s Talent_Random_5 run return run function kards:game/player/talent/roll_value
execute if score @s Talent_Random_4 = @s Talent_Random_6 run return run function kards:game/player/talent/roll_value
execute if score @s Talent_Random_5 = @s Talent_Random_6 run return run function kards:game/player/talent/roll_value

#tellraw @s [{translate: "kards.function.game.player.talent.roll_value.1", fallback: "6个数分别是:"},{score:{name:"@s",objective:"Talent_Random_1"}},{translate: "kards.function.ceshi.4.2", fallback: " | "},{score:{name:"@s",objective:"Talent_Random_2"}},{translate: "kards.function.ceshi.4.2", fallback: " | "},{score:{name:"@s",objective:"Talent_Random_3"}},{translate: "kards.function.ceshi.4.2", fallback: " | "},{score:{name:"@s",objective:"Talent_Random_4"}},{translate: "kards.function.ceshi.4.2", fallback: " | "},{score:{name:"@s",objective:"Talent_Random_5"}},{translate: "kards.function.ceshi.4.2", fallback: " | "},{score:{name:"@s",objective:"Talent_Random_6"}}]

