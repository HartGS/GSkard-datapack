summon text_display ~ ~ ~ {Tags:["creeper","baozhajuntuan","Mob_Start"],text:{translate: "kards.function.ceshi.2.3", fallback: "♥",color:"red",bold:false},background:25,alignment:"center",billboard:"vertical",start_interpolation:0,interpolation_duration:40}
execute if entity @s[team=red] run team join red @n[tag=creeper,tag=Mob_Start]
execute if entity @s[team=blue] run team join blue @n[tag=creeper,tag=Mob_Start]
tag @n[tag=creeper,tag=Mob_Start] remove Mob_Start
data modify entity @n[tag=creeper] transformation.scale set value [2f,1.75f,2f]
ride @n[tag=creeper] mount @s