#> holit:game/point
scoreboard players operation @s point += amount point
execute if score amount point matches 1.. at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 
function holit:game/level

function holit:game/xp/max

execute store result score xp level run scoreboard players get @s point
execute if score @s level matches 2 store result score xpl level run data get storage holit: frequency[1]
execute if score @s level matches 3 store result score xpl level run data get storage holit: frequency[2]
execute if score @s level matches 4 store result score xpl level run data get storage holit: frequency[3]
execute if score @s level matches 5 store result score xpl level run data get storage holit: frequency[4]
execute if score @s level matches 6 store result score xpl level run data get storage holit: frequency[5]
execute if score @s level matches 7 store result score xpl level run data get storage holit: frequency[6]
execute if score @s level matches 8 store result score xpl level run data get storage holit: frequency[7]
execute if score @s level matches 9 store result score xpl level run data get storage holit: frequency[8]
scoreboard players operation xp level -= xpl level

execute store result storage xper: value int 1 run scoreboard players get xp level
function xper: 
scoreboard players reset amount point
scoreboard players reset xp level
scoreboard players reset xpl level

