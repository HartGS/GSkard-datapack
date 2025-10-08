# 登神长阶天赋设置
# 本局游戏 你每击杀1个生物 增加1%攻击力

attribute @s attack_damage modifier remove talent-1
$attribute @s attack_damage modifier add talent-1 $(dengshenchangjie) add_multiplied_total
$tellraw @s [{translate: "kards.function.dialog.talent.show.tellraw_output.18", fallback: "登神长阶",color:"gold"},{translate: "kards.function.game.player.talent.enable.dengshenchangjie.1.1", fallback: " 伤害加成",color:green},{text:"$(dengshenchangjie_tellraw)%",color:gold}]
