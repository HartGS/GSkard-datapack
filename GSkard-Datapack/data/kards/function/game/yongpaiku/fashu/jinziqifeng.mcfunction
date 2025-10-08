function kards:game/yongpaiku/use_general/kard_general




function kards:game/yongpaiku/xianjing/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_jinziqifeng kardCount
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air

scoreboard players add @s jinziqifeng 1
scoreboard players set @s[scores={jinziqifeng=7..}] jinziqifeng 6
tellraw @s [{translate: "kards.function.game.yongpaiku.fashu.jinziqifeng.1", fallback: "当前",color:"gray"},{translate: "json.kards.dialog.paiku.fashu.jinziqifeng.282", fallback: "[禁字决]",color:"dark_purple"},{translate: "kards.function.game.yongpaiku.fashu.jinziqifeng.2", fallback: "抽取概率为",color:"gray"},{score:{name:"@s",objective:"jinziqifeng"},color:"gold"},{translate: "kards.function.enchantment.zhiming.1.2", fallback: "0",color:"gold"},{translate: "kards.function.enchantment.zhiming.1.3", fallback: "%",color:"gold"}]

