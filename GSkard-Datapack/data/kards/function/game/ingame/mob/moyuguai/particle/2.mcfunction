
scoreboard players remove @s Particle_distance 1
particle dust{color: [0.0,0.0,0.0], scale: 0.7} ^ ^0.2 ^3 0.25 0.1 0.25 0 10 force @a
execute if score @s Particle_distance matches 1.. rotated ~15 ~ run function kards:game/ingame/mob/moyuguai/particle/2
execute if score @s Particle_distance matches 0 run kill @s