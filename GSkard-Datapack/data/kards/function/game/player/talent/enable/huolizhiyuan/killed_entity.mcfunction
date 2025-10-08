advancement revoke @s only kards:talent/huolizhiyuan/main
advancement revoke @s only kards:talent/huolizhiyuan/off
execute unless entity @s[tag=Talent_huolizhiyuan] run return fail
scoreboard players add @s Crossbow_RS 4
tellraw @s [{translate: "kards.function.dialog.talent.show.tellraw_output.23", fallback: "火力支援",color:"gold"},{translate: "kards.function.game.player.talent.enable.huolizhiyuan.killed_entity.1", fallback: " 弩当前填装速度",color:green},{score:{name:"@s",objective:"Crossbow_RS"},color:gold},{translate: "kards.function.enchantment.zhiming.1.3", fallback: "%",color:green}]