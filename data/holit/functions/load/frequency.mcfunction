#> holit:load/frequency
execute store result score temp point run data get storage holit: frequency[-1]
data modify storage holit: frequency append value 0
execute store result score temp2 point run data get storage holit: temp_p[0] 
scoreboard players operation temp point += temp2 point 
execute store result storage holit: frequency[-1] int 1 run scoreboard players get temp point
scoreboard players reset temp point
scoreboard players reset temp2 point
data remove storage holit: temp_p[0]
execute unless data storage holit: {temp_p:[]} run function holit:load/frequency 

