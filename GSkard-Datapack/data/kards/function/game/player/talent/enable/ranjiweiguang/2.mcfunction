scoreboard players reset @s Talent_ranjiweiguang_Attack_Time
execute anchored eyes positioned ^ ^ ^6 summon marker at @s rotated as @p[tag=Talent_ranjiweiguang,gamemode=spectator] run function kards:game/player/talent/enable/ranjiweiguang/3
execute as @s[team=red] run team join red @n[tag=Talent_ranjiweiguang_Ball]
execute as @s[team=blue] run team join blue @n[tag=Talent_ranjiweiguang_Ball]

scoreboard players operation @n[tag=Talent_ranjiweiguang_Ball] Talent_ranjiweiguang_Ball_LifeTime = @s Talent_ranjiweiguang_Ball_LifeTime 

