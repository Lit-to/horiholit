#> holit:start/spec/point
scoreboard objectives remove inv
scoreboard objectives add inv dummy
scoreboard players operation main inv = @s point 
loot replace entity @a[tag=own] hotbar.5 loot holit:light/all
execute if score main inv matches 1000.. run function holit:start/spec/point/1000
execute if score main inv matches 100.. run function holit:start/spec/point/100
execute if score main inv matches 10.. run function holit:start/spec/point/10
execute if score main inv matches 1.. run function holit:start/spec/point/1

scoreboard objectives remove inv


