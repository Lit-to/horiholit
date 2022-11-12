#> holit:start/spec/point/100

scoreboard players set 100 inv 100
scoreboard players operation _ inv = main inv
scoreboard players operation _ inv /= 100 inv

execute if score _ inv matches 0 run loot replace entity @a[tag=own] hotbar.6 loot holit:light/0
execute if score _ inv matches 1 run loot replace entity @a[tag=own] hotbar.6 loot holit:light/1
execute if score _ inv matches 2 run loot replace entity @a[tag=own] hotbar.6 loot holit:light/2
execute if score _ inv matches 3 run loot replace entity @a[tag=own] hotbar.6 loot holit:light/3
execute if score _ inv matches 4 run loot replace entity @a[tag=own] hotbar.6 loot holit:light/4
execute if score _ inv matches 5 run loot replace entity @a[tag=own] hotbar.6 loot holit:light/5
execute if score _ inv matches 6 run loot replace entity @a[tag=own] hotbar.6 loot holit:light/6
execute if score _ inv matches 7 run loot replace entity @a[tag=own] hotbar.6 loot holit:light/7
execute if score _ inv matches 8 run loot replace entity @a[tag=own] hotbar.6 loot holit:light/8
execute if score _ inv matches 9 run loot replace entity @a[tag=own] hotbar.6 loot holit:light/9

scoreboard players operation minus inv = _ inv 
scoreboard players operation minus inv *= 100 inv
scoreboard players operation main inv -= minus inv

