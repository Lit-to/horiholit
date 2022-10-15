#> holit:game/point/rank
scoreboard players operation temp point = @s point 
scoreboard players set noone point 0
execute as @a if score @s point > temp point run scoreboard players set noone point 1
execute if score noone point matches 0 run function holit:game/point/show
scoreboard players reset temp point 
scoreboard players reset noone point
