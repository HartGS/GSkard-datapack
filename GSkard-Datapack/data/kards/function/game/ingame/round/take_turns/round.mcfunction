#回合轮换之前生效
function kards:game/ingame/round/take_turns/start_of_round

#回合轮换
scoreboard players add 回合数 GameRound 1

scoreboard players set #system round_panding 2
scoreboard players operation #system GameRound = 回合数 GameRound
scoreboard players operation #system GameRound %= #system round_panding

execute if score #system Relax_Round matches 0 if score #system RoundCount matches -1 if score 回合数 GameRound matches 11 run scoreboard players set #system GameRound 2
execute if score #system Relax_Round matches 0 unless score #system RoundCount matches -1 if score 回合数 GameRound = #system DifficultyRound run scoreboard players set #system GameRound 2

execute if score #system GameRound matches 0 run function kards:game/ingame/round/turns/blue
execute if score #system GameRound matches 1 run function kards:game/ingame/round/turns/red
execute if score #system GameRound matches 2 run function kards:game/ingame/round/turns/relax

execute if score 回合数 GameRound matches 11 run advancement grant @a only kards:advancement/round/11
execute if score 回合数 GameRound matches 31 run advancement grant @a only kards:advancement/round/31
execute if score 回合数 GameRound matches 51 run advancement grant @a only kards:advancement/round/51
execute if score 回合数 GameRound matches 101 run advancement grant @a only kards:advancement/round/101

scoreboard players set @a Use_Kmax_Round 0
scoreboard players set @a Use_K_Round 0

#回合轮换之后生效
function kards:game/ingame/round/take_turns/end_of_round