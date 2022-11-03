#> holit:game/point/rank
scoreboard players operation temp calc = @s point 
scoreboard players set noone calc 0
execute as @a if score @s point > temp calc run scoreboard players set noone calc 1
execute if score noone calc matches 0 run function holit:game/point/show
scoreboard players reset temp calc 
scoreboard players reset noone calc


