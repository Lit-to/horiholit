#> holit:game/count/first/loop

item modify entity @s enderchest.0 holit:count
data remove storage holit: stats[0]
execute unless data storage holit: {stats:[]} run function holit:game/count/first/loop


