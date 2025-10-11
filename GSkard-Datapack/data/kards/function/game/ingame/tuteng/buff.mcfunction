
#牛
    
    execute if entity @e[team=blue,tag=tuteng,type=cow,distance=0.01..] run effect give @a[team=blue] strength 1 0 false
    
    execute if entity @e[team=red,tag=tuteng,type=cow,distance=0.01..] run effect give @a[team=red] strength 1 0 false
#猪
    kill @e[type=minecraft:zombified_piglin,tag=tuteng,distance=0.01..]
    
    execute if entity @e[team=blue,tag=tuteng,type=pig,distance=0.01..] run effect give @a[team=blue] resistance 1 0 false
    
    execute if entity @e[team=red,tag=tuteng,type=pig,distance=0.01..] run effect give @a[team=red] resistance 1 0 false
#兔
    
    execute if entity @e[team=blue,tag=tuteng,type=rabbit,distance=0.01..] run effect give @a[team=blue] jump_boost 1 2 false
    
    execute if entity @e[team=red,tag=tuteng,type=rabbit,distance=0.01..] run effect give @a[team=red] jump_boost 1 2 false
#豹猫
    
    execute if entity @e[team=blue,tag=tuteng,type=ocelot,distance=0.01..] run effect give @a[team=blue] speed 1 1 false
    
    execute if entity @e[team=red,tag=tuteng,type=ocelot,distance=0.01..] run effect give @a[team=red] speed 1 1 false
#村民
    kill @e[type=witch,tag=tuteng]
    
    execute if entity @e[team=blue,tag=tuteng,type=villager,distance=0.01..] run effect give @e[type=!player,team=blue] resistance 1 0 false
    execute if entity @e[team=blue,tag=tuteng,type=villager,distance=0.01..] run effect give @e[type=iron_golem,team=blue] speed 1 1 false
    
    execute if entity @e[team=red,tag=tuteng,type=villager,distance=0.01..] run effect give @e[type=!player,team=red] resistance 1 0 false
    execute if entity @e[team=red,tag=tuteng,type=villager,distance=0.01..] run effect give @e[type=iron_golem,team=red] speed 1 1 false
#蘑菇牛
    
    execute if entity @e[team=blue,tag=tuteng,type=mooshroom,distance=0.01..] run effect clear @a[team=blue] slowness
    execute if entity @e[team=blue,tag=tuteng,type=mooshroom,distance=0.01..] run effect clear @a[team=blue] mining_fatigue
    execute if entity @e[team=blue,tag=tuteng,type=mooshroom,distance=0.01..] run effect clear @a[team=blue] blindness
    execute if entity @e[team=blue,tag=tuteng,type=mooshroom,distance=0.01..] run effect clear @a[team=blue] weakness
    execute if entity @e[team=blue,tag=tuteng,type=mooshroom,distance=0.01..] run effect clear @a[team=blue] poison
    execute if entity @e[team=blue,tag=tuteng,type=mooshroom,distance=0.01..] run effect clear @a[team=blue] wither
    execute if entity @e[team=blue,tag=tuteng,type=mooshroom,distance=0.01..] run effect clear @a[team=blue] darkness
    execute if entity @e[team=blue,tag=tuteng,type=mooshroom,distance=0.01..] run effect clear @a[team=blue] levitation
    
    execute if entity @e[team=red,tag=tuteng,type=mooshroom,distance=0.01..] run effect clear @a[team=red] slowness
    execute if entity @e[team=red,tag=tuteng,type=mooshroom,distance=0.01..] run effect clear @a[team=red] mining_fatigue
    execute if entity @e[team=red,tag=tuteng,type=mooshroom,distance=0.01..] run effect clear @a[team=red] blindness
    execute if entity @e[team=red,tag=tuteng,type=mooshroom,distance=0.01..] run effect clear @a[team=red] weakness
    execute if entity @e[team=red,tag=tuteng,type=mooshroom,distance=0.01..] run effect clear @a[team=red] poison
    execute if entity @e[team=red,tag=tuteng,type=mooshroom,distance=0.01..] run effect clear @a[team=red] wither
    execute if entity @e[team=red,tag=tuteng,type=mooshroom,distance=0.01..] run effect clear @a[team=red] darkness
    execute if entity @e[team=red,tag=tuteng,type=mooshroom,distance=0.01..] run effect clear @a[team=red] levitation
#海龟
    
    execute if entity @e[team=blue,tag=tuteng,type=turtle,distance=0.01..] run effect give @e[team=red,type=!player,type=!iron_golem] slowness 1 0 false
    
    execute if entity @e[team=red,tag=tuteng,type=turtle,distance=0.01..] run effect give @e[team=blue,type=!player,type=!iron_golem] slowness 1 0 false
#铁傀儡
    
    execute as @e[team=blue,tag=tuteng,type=iron_golem,distance=0.01..] at @s run effect give @e[team=red,type=!player,type=!iron_golem,distance=..5] weakness 2 1 false
    
    execute as @e[team=red,tag=tuteng,type=iron_golem,distance=0.01..] at @s run effect give @e[team=blue,type=!player,type=!iron_golem,distance=..5] weakness 2 1 false
#流浪商人
    item replace entity @e[type=minecraft:wandering_trader,distance=0.01..] weapon.mainhand with air
#培养尸
    
    execute as @e[team=blue,tag=tuteng,type=zombie,distance=0.01..] run effect give @a[team=blue] fire_resistance 1 0 false
    
    execute as @e[team=red,tag=tuteng,type=zombie,distance=0.01..] run effect give @a[team=red] fire_resistance 1 0 false
