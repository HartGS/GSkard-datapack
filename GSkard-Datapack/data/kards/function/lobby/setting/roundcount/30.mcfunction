scoreboard players set #system RoundCount 30
tellraw @a [{translate: "kards.function.lobby.setting.choupai.11and15.1.1", fallback: "提示:",color: "gold"},{translate: "kards.function.lobby.setting.pvpround.open.2", fallback: "PVP回合设置为",color: "green"},{translate: "kards.function.lobby.setting.roundcount.30.1", fallback: " 30",color: "gold"}]
execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 101 228 -23 air
setblock 101 228 -23 minecraft:oak_wall_sign[facing=north]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/roundcount/40"},color:"gold",translate: "kards.function.lobby.setting.pvpround.open.2", fallback: "PVP回合设置为"},{translate: "kards.function.lobby.setting.roundcount.30.2", fallback: "30",color:"green"},'','']}} replace


execute as @a at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 100 2
setblock 96 227 -29 minecraft:air
setblock 96 227 -29 minecraft:oak_wall_sign[facing=south]{front_text:{messages:[{click_event:{action:"run_command",command:"/function kards:lobby/setting/choupai/21last/7"},color:"gold",translate: "kards.function.lobby.setting.choupai.21last.1.2", fallback: "21回合后抽牌数量"},{translate: "kards.function.lobby.setting.choupai.21last.6.1", fallback: "6张",color:"green"},{translate: "kards.function.lobby.setting.choupai.11and15.4.2", fallback: "(默认)",color:"gray"},'']}} destroy

scoreboard players set #system DifficultyRound 16
tellraw @a [{translate: "kards.function.lobby.setting.choupai.11and15.1.1", fallback: "提示:",color: "gold"},{translate: "kards.function.lobby.setting.pvpround.open.5", fallback: "困难模式回合设置为",color: "green"},{translate: "kards.function.lobby.setting.roundcount.30.3", fallback: " 16",color: "gold"}]
setblock 101 227 -23 minecraft:oak_wall_sign[facing=north]{front_text:{messages:[{color:"gold",translate: "kards.function.lobby.setting.pvpround.open.7", fallback: "困难模式回合"},{translate: "kards.function.enchantment.zhiming.2.3", fallback: "16",color:"green"},{translate: "kards.function.lobby.setting.pvpround.open.9", fallback: "不可手动调整",color:"gray"},'']}} destroy
tellraw @a [{translate: "kards.function.lobby.setting.choupai.11and15.1.1", fallback: "提示:",color: "gold"},{translate: "kards.function.lobby.setting.choupai.21last.1.1", fallback: "21回合后抽牌数量调整为",color: "green"},{translate: "kards.function.lobby.setting.choupai.21last.6.1", fallback: "6张",color: "gold"}]

kill @e[nbt={Item:{id:"minecraft:oak_sign"}}]