#> holit:game/point
scoreboard players operation @s point += amount point
execute if score amount point matches 1.. at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 
function holit:game/level
execute if score @s level matches 0 run data modify storage xper: max set from storage holit: frequency[0]
execute if score @s level matches 1 run data modify storage xper: max set from storage holit: frequency[1]
execute if score @s level matches 2 run data modify storage xper: max set from storage holit: frequency[2]
execute if score @s level matches 3 run data modify storage xper: max set from storage holit: frequency[3]
execute if score @s level matches 4 run data modify storage xper: max set from storage holit: frequency[4]
execute if score @s level matches 5 run data modify storage xper: max set from storage holit: frequency[5]
execute if score @s level matches 6 run data modify storage xper: max set from storage holit: frequency[6]
execute if score @s level matches 7 run data modify storage xper: max set from storage holit: frequency[7]
execute if score @s level matches 8 run data modify storage xper: max set from storage holit: frequency[8]
execute if score @s level matches 9 run data modify storage xper: max set from storage holit: frequency[9]

execute store result storage xper: value int 1 run scoreboard players get @s point 
function xper: 
scoreboard players reset max point
scoreboard players reset amount point


