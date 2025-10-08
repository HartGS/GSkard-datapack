
scoreboard players set @s diaolingtaidao_tujing 68
scoreboard players add @s diaolingtaidao_diaoxiezhihua_give 1
tellraw @s[scores={diaolingtaidao_diaoxiezhihua_give=..7}] [{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.general.17", fallback: "[凋零太刀]",color:"dark_gray"},{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.diaolingtaidao.1.1", fallback: "「凋谢之花」 ",color:"gray"},{score:{name:"@s",objective:"diaolingtaidao_diaoxiezhihua_give"},color:"gray"},{translate: "kards.function.game.ingame.general.2", fallback: "/",color:"gray"},{translate: "kards.function.enchantment.zhiming.2.2", fallback: "8",color:"green"}]
execute if score @s diaolingtaidao_diaoxiezhihua_give matches 8 run function kards:game/yongpaiku/shenji/wangzhibaoku/diaolingtaidao/5

scoreboard players reset @s diaolingtaidao
execute at @s anchored eyes positioned ^ ^ ^0.25 run function kards:game/yongpaiku/shenji/wangzhibaoku/diaolingtaidao/2