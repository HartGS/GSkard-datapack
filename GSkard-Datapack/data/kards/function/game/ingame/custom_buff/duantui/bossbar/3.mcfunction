$bossbar add kards:duantui_$(UUID) [{text:"断腿",color:"white",bold:true}]
$bossbar set kards:duantui_$(UUID) color purple
$bossbar set kards:duantui_$(UUID) players @s
$bossbar set kards:duantui_$(UUID) visible true

$execute as @s[tag=!bossbar_max_DuanTui] run bossbar set kards:duantui_$(UUID) max $(Max)
tag @s add bossbar_max_DuanTui
$execute store result bossbar kards:duantui_$(UUID) value run scoreboard players get @s DuanTui

$execute if score @s DuanTui matches 0 run bossbar remove kards:duantui_$(UUID)
execute if score @s DuanTui matches 0 run tag @s remove bossbar_max_DuanTui
