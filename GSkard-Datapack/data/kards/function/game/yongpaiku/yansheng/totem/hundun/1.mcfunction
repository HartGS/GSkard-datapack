
tellraw @s [{translate: "kards.function.game.yongpaiku.yansheng.totem.hundun.1.1", fallback: "对最近的一个敌方玩家造成25",color:"gray",italic:false},{translate: "kards.function.ceshi.2.3", fallback: "♥",color:"white",italic:false},{translate: "json.kards.dialog.paiku.wangzhibaoku.kunanyaolan.861", fallback: "真实伤害",color:"gray",italic:false}]
execute if entity @s[team=red] run damage @p[team=blue,gamemode=adventure] 50 kards:hunduntuteng by @s
execute if entity @s[team=blue] run damage @p[team=red,gamemode=adventure] 50 kards:hunduntuteng by @s