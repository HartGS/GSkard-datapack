
scoreboard players remove @s Particle_distance 1
particle minecraft:trial_spawner_detection ^ ^-2.2 ^5 0 0 0 0 4 force @a
execute if score @s Particle_distance matches 1.. rotated ~7.5 ~ run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/enze/xinhuo/particle/2
execute if score @s Particle_distance matches 0 run kill @s