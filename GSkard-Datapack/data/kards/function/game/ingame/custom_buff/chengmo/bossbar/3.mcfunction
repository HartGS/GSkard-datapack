$bossbar add kards:chengmo_$(UUID) ""
$bossbar set kards:chengmo_$(UUID) name [{translate: "kards.function.game.ingame.custom_buff.chengmo.bossbar.3.1", fallback: "沉默:清除周围掉落物 持续",color:"gray",bold:true},{text:"$(Value)",color:"green",bold:true},{translate: "kards.function.game.ingame.custom_buff.chengmo.bossbar.3.2", fallback: "回合",color:"gray",bold:true}]
$bossbar set kards:chengmo_$(UUID) color white
$bossbar set kards:chengmo_$(UUID) players @s
$bossbar set kards:chengmo_$(UUID) visible true
$bossbar set kards:chengmo_$(UUID) max 1
$bossbar set kards:chengmo_$(UUID) value 1

$execute store result bossbar kards:chengmo_$(UUID) value run scoreboard players get @s chengmo

$execute if score @s chengmo matches 0 run bossbar remove kards:chengmo_$(UUID)
