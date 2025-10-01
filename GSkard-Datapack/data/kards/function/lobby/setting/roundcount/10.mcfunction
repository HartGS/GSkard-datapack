scoreboard players set #system RoundCount 10
tellraw @a [{translate: "kards.function.lobby.setting.choupai.11and15.1.1", fallback: "提示:",color: "gold"},{translate: "kards.function.lobby.setting.pvpround.open.2", fallback: "PVP回合设置为",color: "green"},{translate: "kards.function.lobby.setting.roundcount.10.1", fallback: " 10",color: "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 101 228 -23 air
setblock 101 228 -23 minecraft:oak_wall_sign[facing=north]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/roundcount/20"},color:"gold",translate: "kards.function.lobby.setting.pvpround.open.2", fallback: "PVP回合设置为"},{translate: "kards.function.enchantment.book.shelf.jihanzhichu.2", fallback: "10",color:"green"},'','']}} replace

scoreboard players set #system DifficultyRound 6
tellraw @a [{translate: "kards.function.lobby.setting.choupai.11and15.1.1", fallback: "提示:",color: "gold"},{translate: "kards.function.lobby.setting.pvpround.open.5", fallback: "困难模式回合设置为",color: "green"},{translate: "kards.function.lobby.setting.roundcount.10.2", fallback: " 6",color: "gold"}]
setblock 101 227 -23 minecraft:oak_wall_sign[facing=north]{front_text:{messages:[{color:"gold",translate: "kards.function.lobby.setting.pvpround.open.7", fallback: "困难模式回合"},{translate: "kards.function.lobby.setting.kmax.6.1", fallback: "6",color:"green"},{translate: "kards.function.lobby.setting.pvpround.open.9", fallback: "不可手动调整",color:"gray"},'']}} destroy

setblock 96 227 -29 minecraft:air destroy
kill @e[nbt={Item:{id:"minecraft:oak_sign"}}]