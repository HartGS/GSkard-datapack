scoreboard players set @s temp 8
scoreboard players operation @s temp_2 = @s kardCountmax
scoreboard players operation @s temp_2 /= @s temp
scoreboard players operation @s kardCountmax += @s temp_2