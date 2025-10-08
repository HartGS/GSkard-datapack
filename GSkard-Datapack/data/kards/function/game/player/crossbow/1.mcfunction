execute if items entity @s weapon.mainhand crossbow[charged_projectiles=[],damage=1] run item modify entity @s weapon.mainhand [{function:"set_damage",add:false,damage:0}]
execute if items entity @s weapon.offhand crossbow[charged_projectiles=[],damage=1] run item modify entity @s weapon.offhand [{function:"set_damage",add:false,damage:0}]

scoreboard players set @s UseItem.Crossbow 0
