#> holit:game/pick
execute as @e[type=item] run data modify entity @s PickupDelay set value 0s
#execute as @e[type=item,nbt=!{Age:0s}] run kill @s 
execute as @a if score @s death matches 1.. run function holit:death/main
clear @a[gamemode=!spectator] #holit:all

execute as @a if score @s adv matches 2 run function holit:game/check
execute as @a if score @s adv matches 1.. run scoreboard players set @s adv 2

#ボスバー

effect give @a night_vision 100000 255 true
effect give @a water_breathing 1000000 255 true

execute unless entity @a[gamemode=!spectator] run function holit:fin


#時間
scoreboard players add count time 1 
scoreboard players operation seconds time = count time
scoreboard players operation second time = count time
scoreboard players operation minute time = count time

scoreboard players operation seconds time /= 20 time 
scoreboard players operation second time /= 20 time 
scoreboard players operation second time %= 60 time 
scoreboard players operation minute time /= 1200 time 

scoreboard players operation hour time = minute time
scoreboard players operation minute time %= 60 time 
scoreboard players operation hour time /= 60 time 
#タイマー
execute as @a run function holit:game/point/rank
