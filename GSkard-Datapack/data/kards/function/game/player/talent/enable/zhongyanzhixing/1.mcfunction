scoreboard players set @s Talent_zhongyanzhixing 0

scoreboard players operation @s Talent_zhongyanzhixing += @s Use_K_Round
scoreboard players operation @s Talent_zhongyanzhixing += @s Use_Kmax_Round

scoreboard players set #system Talent_zhongyanzhixing 2
scoreboard players operation @s Talent_zhongyanzhixing /= #system Talent_zhongyanzhixing

tellraw @a [{selector:"@s"},{translate: "json.kards.dialog.jiaocheng.wanfa.1.132", fallback: "使用了",color:"gold"},{translate: "kards.function.game.player.talent.enable.zhongyanzhixing.1.1", fallback: "「终焉之行」",color:light_purple,hover_event:{action:"show_text",value:[{translate: "kards.function.game.player.talent.enable.zhongyanzhixing.1.2", fallback: "每回合结束时\n统计本回合消耗的K/Kmax 取两值之和的一半\n分配等额无视护甲的伤害于敌方玩家",color:"gray"}]}}]
tellraw @a [{selector:"@s"},{translate: "kards.function.game.player.talent.enable.zhongyanzhixing.1.3", fallback: "造成了",color:"gold"},{score:{name:"@s",objective:"Talent_zhongyanzhixing"},color:green},{translate: "kards.function.game.player.talent.enable.qiongbingduwu.1.3", fallback: "点伤害",color:"gold"}]

function kards:game/player/talent/enable/zhongyanzhixing/2