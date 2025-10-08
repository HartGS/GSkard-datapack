$bossbar add kards:zhongshang_$(UUID) [{translate: "kards.function.game.ingame.custom_buff.zhongshang.bossbar.3.1", fallback: "重伤:生命回复效率减半",color:"white",bold:true}]
$bossbar set kards:zhongshang_$(UUID) color red
$bossbar set kards:zhongshang_$(UUID) players @s
$bossbar set kards:zhongshang_$(UUID) visible true

$execute as @s[tag=!bossbar_max_ZhongShang] run bossbar set kards:zhongshang_$(UUID) max $(Max)
tag @s add bossbar_max_ZhongShang
$execute store result bossbar kards:zhongshang_$(UUID) value run scoreboard players get @s ZhongShang_Tick

$execute if score @s ZhongShang_Round matches 1.. store result bossbar kards:zhongshang_$(UUID) value run bossbar get kards:zhongshang_$(UUID) max

$execute if score @s ZhongShang_Tick matches 0 unless score @s ZhongShang_Round matches 1.. run bossbar remove kards:zhongshang_$(UUID)
$execute if score @s ZhongShang_Round matches 0 unless score @s ZhongShang_Tick matches 1.. run bossbar remove kards:zhongshang_$(UUID)
execute if score @s ZhongShang_Tick matches 0 unless score @s ZhongShang_Round matches 1.. run tag @s remove bossbar_max_ZhongShang
execute if score @s ZhongShang_Round matches 0 unless score @s ZhongShang_Tick matches 1.. run tag @s remove bossbar_max_ZhongShang