advancement revoke @s only kards:shenqi/jiangshuzhe/neishang
execute as @s[team=red] unless score red jiangshuzhe_neishang matches 1 run return fail
execute as @s[team=blue] unless score blue jiangshuzhe_neishang matches 1 run return fail
execute as @s[team=!red,team=!blue] run return fail

effect give @s wither 3 0 false