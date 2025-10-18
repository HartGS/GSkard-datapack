execute at @s summon marker run function kards:game/ingame/mob/moyuguai/particle/1

execute at @s[team=red] run effect give @a[team=blue] blindness 5 0 true
execute at @s[team=blue] run effect give @a[team=red] blindness 5 0 true

kill @s