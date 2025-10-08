title @a title [{translate: "kards.function.game.ingame.round.roundtime_bossbar.1", fallback: "天赋选择回合",color:"white",bold:true}]
bossbar set minecraft:roundtime color white
scoreboard players set @a CanuseKard 0
scoreboard players set @a Skip_Round 0
scoreboard players set #system Relax_Round 1
scoreboard players remove 回合数 GameRound 1
scoreboard players set #system GameRound 2

tellraw @a [{translate: "kards.function.game.ingame.round.turns.relax.1", fallback: "当前游戏难度：困难",color:"gold",bold:true},{translate: "kards.function.game.ingame.round.turns.relax.2", fallback: "\n怪物造成的伤害提升至1.5倍 玩家受到的部分伤害提升",color:"gold",bold:true}]
difficulty hard
scoreboard players set #system Talent_Random_Mode 2
execute as @a[gamemode=adventure] run function kards:dialog/talent/show

execute as @e[type=#kards:mob,tag=!tuteng] run data modify entity @s NoAI set value 1b
execute as @e[type=#kards:mob,tag=!tuteng] run data modify entity @s Invulnerable set value 1b
execute as @e[type=#kards:mob,tag=!tuteng] run data modify entity @s Silent set value 1b