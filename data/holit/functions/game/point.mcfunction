#> holit:game/point
scoreboard players operation @s point += amount point
execute if score amount point matches 1.. at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 
function holit:game/level
execute if score @s level matches 0 run data modify storage xper: max set from storage holit: point[0]
execute if score @s level matches 1 run data modify storage xper: max set from storage holit: point[1]
execute if score @s level matches 2 run data modify storage xper: max set from storage holit: point[2]
execute if score @s level matches 3 run data modify storage xper: max set from storage holit: point[3]
execute if score @s level matches 4 run data modify storage xper: max set from storage holit: point[4]
execute if score @s level matches 5 run data modify storage xper: max set from storage holit: point[5]
execute if score @s level matches 6 run data modify storage xper: max set from storage holit: point[6]
execute if score @s level matches 7 run data modify storage xper: max set from storage holit: point[7]
execute if score @s level matches 8 run data modify storage xper: max set from storage holit: point[8]
execute if score @s level matches 9 run data modify storage xper: max set from storage holit: point[9]

execute store result score xp level run scoreboard players get @s point
execute if score @s level matches 1 store result score xpl level run data get storage holit: point[1]
execute if score @s level matches 2 store result score xpl level run data get storage holit: point[2]
execute if score @s level matches 3 store result score xpl level run data get storage holit: point[3]
execute if score @s level matches 4 store result score xpl level run data get storage holit: point[4]
execute if score @s level matches 5 store result score xpl level run data get storage holit: point[5]
execute if score @s level matches 6 store result score xpl level run data get storage holit: point[6]
execute if score @s level matches 7 store result score xpl level run data get storage holit: point[7]
execute if score @s level matches 8 store result score xpl level run data get storage holit: point[8]
execute if score @s level matches 9 store result score xpl level run data get storage holit: point[9]
scoreboard players operation xp level -= xpl level

execute store result storage xper: value int 1 run scoreboard players get xp level
function xper: 
scoreboard players reset amount point
scoreboard players reset xp level
scoreboard players reset xpl level

