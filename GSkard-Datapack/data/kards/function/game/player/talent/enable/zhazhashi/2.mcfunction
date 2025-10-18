execute unless score @s Talent_zhazhashi matches -2147483648..2147483647 run scoreboard players set @s Talent_zhazhashi 0

scoreboard players add @s[scores={Talent_zhazhashi=0}] Talent_zhazhashi 1
scoreboard players add @s[scores={Talent_zhazhashi=1}] cishu 1

tellraw @s [{text:"札,,,札,,,是!给你抽了1张牌",color:"green"}]
